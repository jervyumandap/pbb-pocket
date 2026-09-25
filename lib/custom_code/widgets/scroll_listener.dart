// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ScrollListener extends StatefulWidget {
  const ScrollListener({
    super.key,
    this.width,
    this.height,
    required this.contentBuilder,
    this.onScrolled,
    this.onReachedBottom,
  });

  final double? width;
  final double? height;

  /// Your article/content
  final Widget Function() contentBuilder;

  /// Fires once when the user scrolls for the first time.
  final Future Function()? onScrolled;

  /// Fires once when the user reaches the bottom.
  final Future Function()? onReachedBottom;

  @override
  State<ScrollListener> createState() => _ScrollListenerState();
}

class _ScrollListenerState extends State<ScrollListener> {
  final ScrollController _controller = ScrollController();

  bool _hasScrolled = false;
  bool _hasReachedBottom = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handleScroll);
  }

  Future<void> _handleScroll() async {
    if (!_controller.hasClients) return;

    // Trigger once when the user starts scrolling.
    if (!_hasScrolled && _controller.offset > 5) {
      _hasScrolled = true;

      debugPrint('User started scrolling');

      if (widget.onScrolled != null) {
        await widget.onScrolled!();
      }
    }

    // Trigger once when the user reaches the bottom.
    if (!_hasReachedBottom &&
        _controller.position.pixels >= _controller.position.maxScrollExtent) {
      _hasReachedBottom = true;

      debugPrint('User reached bottom');

      if (widget.onReachedBottom != null) {
        await widget.onReachedBottom!();
      }
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_handleScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: SingleChildScrollView(
        controller: _controller,
        child: widget.contentBuilder(),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
