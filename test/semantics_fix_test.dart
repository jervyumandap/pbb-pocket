// Proof for REPORT.md "How to fix": which Semantics wrapper puts the label on the node you tap.
// Same widget shapes as the PBB export (branch mobile/pbb-pocket @ 12475120c). Uses only Flutter widgets.
// Run: copy into clients/pbb/apps/retail/mobile/test/, then  flutter test test/semantics_fix_test.dart
// (passes on Flutter 3.41.9, the app's version). The tree checked here is the one Android, iOS and web all get.
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_test/flutter_test.dart';

void noop() {}
const back = Icon(Icons.arrow_back);
Widget ink() => InkWell(
  onTap: noop,
  child: back,
); // FlutterFlow "On Tap" on an icon / container / row
Widget ffIconButton() => Theme(
  data: ThemeData(useMaterial3: true), // FlutterFlowIconButton = M3 IconButton
  child: IconButton(onPressed: noop, icon: back),
);

// Header row as in components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart:141-212
Widget header(Widget button) => MaterialApp(
  theme: ThemeData(useMaterial3: false),
  home: Scaffold(
    body: Semantics(
      label: 'AppBar',
      child: Semantics(
        label: 'Left Aligned Row',
        child: Row(
          children: [
            button,
            Semantics(
              label: 'Left Aligned Page Title Text',
              child: const Text('Transfer'),
            ),
          ],
        ),
      ),
    ),
  ),
);
Widget page(Widget body) => MaterialApp(home: Scaffold(body: body));

// The node that holds [target] must be tappable and carry [label] / [id].
void check(
  String name,
  Widget app,
  Finder target, {
  required String label,
  String id = '',
}) => testWidgets(name, (tester) async {
  final handle = tester.ensureSemantics();
  await tester.pumpWidget(app);
  final node = tester.getSemantics(target).getSemanticsData();
  expect(node.hasAction(SemanticsAction.tap), isTrue);
  expect(node.label, label);
  expect(node.identifier, id);
  handle.dispose();
});

void main() {
  final icon = find.byIcon(Icons.arrow_back);
  String glued(String l) =>
      'AppBar\nLeft Aligned Row\n$l\nLeft Aligned Page Title Text\nTransfer';

  // Fix A: tap built with InkWell / GestureDetector. container: true moves the label onto it; button: true alone does not.
  check(
    'A today',
    header(Semantics(label: 'Back Button', child: ink())),
    icon,
    label: glued('Back Button'),
  );
  check(
    'A button: true only',
    header(Semantics(label: 'Back Button', button: true, child: ink())),
    icon,
    label: glued('Back Button'),
  );
  check(
    'A container: true',
    header(
      Semantics(label: 'Back', container: true, button: true, child: ink()),
    ),
    icon,
    label: 'Back',
  );
  check(
    'A + identifier',
    header(
      Semantics(
        identifier: 'back_button',
        label: 'Back',
        container: true,
        button: true,
        child: ink(),
      ),
    ),
    icon,
    label: 'Back',
    id: 'back_button',
  );

  // Fix B: FlutterFlowIconButton / IconButton is already its own node; wrappers never reach it, MergeSemantics does.
  check(
    'B today',
    header(
      Semantics(
        label: 'back_button',
        child: Container(
          child: Semantics(label: 'second_back_button', child: ffIconButton()),
        ),
      ),
    ),
    icon,
    label: '',
  );
  check(
    'B container + button',
    header(
      Semantics(
        label: 'back_button',
        container: true,
        button: true,
        child: ffIconButton(),
      ),
    ),
    icon,
    label: '',
  );
  check(
    'B MergeSemantics',
    header(
      MergeSemantics(child: Semantics(label: 'Back', child: ffIconButton())),
    ),
    icon,
    label: 'Back',
  );
  check(
    'B + identifier',
    header(
      MergeSemantics(
        child: Semantics(
          identifier: 'back_button',
          label: 'Back',
          child: ffIconButton(),
        ),
      ),
    ),
    icon,
    label: 'Back',
    id: 'back_button',
  );

  // Why the biller sheet close (custom_code/widgets/billers_dropdown.dart:367) works: where it sits, not button: true.
  Widget close(bool button) => Semantics(
    label: 'paybills_biller_close_button',
    button: button,
    child: GestureDetector(onTap: noop, child: const Icon(Icons.close)),
  );
  check(
    'sheet close without button: true',
    page(
      Column(
        children: [
          Row(
            children: [
              const Expanded(child: Text('Select Biller')),
              close(false),
            ],
          ),
          const TextField(),
          Expanded(
            child: ListView(
              children: [
                for (final b in ['Meralco', 'Maynilad'])
                  InkWell(onTap: noop, child: Text(b)),
              ],
            ),
          ),
        ],
      ),
    ),
    find.byIcon(Icons.close),
    label: 'paybills_biller_close_button',
  );
  check(
    'same close in the header',
    header(close(true)),
    find.byIcon(Icons.close),
    label: glued('paybills_biller_close_button'),
  );

  // Fix C: checkbox next to its text (fund_transfer/fund_transfer_page/fund_transfer_page_widget.dart:922).
  Widget box([String? label]) =>
      Checkbox(value: false, onChanged: (_) {}, semanticLabel: label);
  const text = Text('Transfer money to own account');
  final cb = find.byType(Checkbox);
  check('C today', page(Row(children: [box(), text])), cb, label: '');
  check(
    'C MergeSemantics',
    page(MergeSemantics(child: Row(children: [box(), text]))),
    cb,
    label: 'Transfer money to own account',
  );
  check(
    'C semanticLabel',
    page(Row(children: [box('Transfer to own account'), text])),
    cb,
    label: 'Transfer to own account',
  );

  // Fix D: fields whose hints repeat (Transaction Limits). A plain wrapper label reaches a text field.
  Widget field([String? label]) {
    final f = TextFormField(
      decoration: const InputDecoration(hintText: 'Enter amount'),
    );
    return label == null ? f : Semantics(label: label, child: f);
  }

  final firstField = find.byType(EditableText).first;
  check(
    'D today',
    page(Column(children: [field(), field()])),
    firstField,
    label: 'Enter amount',
  );
  check(
    'D wrapper label',
    page(Column(children: [field('Instapay daily limit'), field()])),
    firstField,
    label: 'Instapay daily limit\nEnter amount',
  );
}
