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

import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

class CurvedCardDeck extends StatefulWidget {
  const CurvedCardDeck({
    super.key,
    required this.width,
    required this.height,
    this.items,
    required this.itemBuilder,
    this.onCardSwipe,
    this.emptyStateBuilder,
    this.isWeb = false,
    this.showPeek = false,
    this.hasOnTapFunction = false,
    this.onCardTap,
  });

  final double width;
  final double height;
  final List<dynamic>? items;
  final Widget Function(dynamic item) itemBuilder;
  final Future Function(dynamic swipedItem)? onCardSwipe;
  final Widget Function()? emptyStateBuilder;
  final bool isWeb;
  final bool showPeek;

  /// When true, tapping a card will call [onCardTap] with the tapped item.
  /// Wire this to your FlutterFlow action (e.g. navigate to accountDetailPage).
  final bool hasOnTapFunction;

  /// Called with the tapped item when [hasOnTapFunction] is true.
  final Future Function(dynamic tappedItem)? onCardTap;

  @override
  State<CurvedCardDeck> createState() => _CurvedCardDeckState();
}

class _CurvedCardDeckState extends State<CurvedCardDeck> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      viewportFraction: widget.showPeek ? 0.88 : 1.0,
    );

    _triggerInitialSwipe();
  }

  Future<void> _triggerInitialSwipe() async {
    final items = widget.items;

    if (items != null && items.isNotEmpty && !widget.isWeb) {
      await widget.onCardSwipe?.call(items[0]);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool get _isEmpty => widget.items == null || widget.items!.isEmpty;

  /// Wraps [child] with a GestureDetector when [hasOnTapFunction] is true.
  Widget _wrapWithTap(Widget child, dynamic item) {
    if (!widget.hasOnTapFunction) return child;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => widget.onCardTap?.call(item),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double w = (widget.width.isFinite && widget.width > 0)
            ? widget.width
            : (constraints.maxWidth.isFinite ? constraints.maxWidth : 280.0);

        final double h = (widget.height.isFinite && widget.height > 0)
            ? widget.height
            : (constraints.maxHeight.isFinite ? constraints.maxHeight : 170.0);

        if (_isEmpty) {
          return SizedBox(
            width: w,
            height: h,
            child: widget.emptyStateBuilder?.call() ?? const SizedBox.shrink(),
          );
        }

        final items = widget.items!;

        if (widget.isWeb) {
          return _buildWebLayout(items, w, h);
        }

        return _buildMobileLayout(items, w, h);
      },
    );
  }

  // ─────────────────────────────────────────────────────────────
  // WEB LAYOUT
  // ─────────────────────────────────────────────────────────────

  Widget _buildWebLayout(List<dynamic> items, double w, double h) {
    const double cardWidth = 290.0;
    const double cardGap = 16.0;

    return SizedBox(
      width: w,
      height: h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < items.length; i++) ...[
              _wrapWithTap(
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    width: cardWidth,
                    height: h,
                    child: widget.itemBuilder(items[i]),
                  ),
                ),
                items[i],
              ),
              if (i < items.length - 1) const SizedBox(width: cardGap),
            ],
          ],
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────
  // MOBILE LAYOUT
  // ─────────────────────────────────────────────────────────────

  Widget _buildMobileLayout(List<dynamic> items, double w, double h) {
    const double dotsHeight = 30.0;
    final double cardHeight = h - dotsHeight;

    return SizedBox(
      width: w,
      height: h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: w,
            height: cardHeight,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.88,
              ),
              padEnds: false,
              itemCount: items.length,
              onPageChanged: (index) async {
                setState(() => _currentPage = index);
                await widget.onCardSwipe?.call(items[index]);
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: _wrapWithTap(
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: SizedBox(
                        width: double.infinity,
                        height: cardHeight,
                        child: widget.itemBuilder(items[index]),
                      ),
                    ),
                    items[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 6),
          _buildDotIndicators(items.length),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────
  // DOT INDICATORS
  // ─────────────────────────────────────────────────────────────

  Widget _buildDotIndicators(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(count, (index) {
        final bool isActive = index == _currentPage;

        final ffTheme = FlutterFlowTheme.of(context);

        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: isActive ? 12.0 : 6.0,
          height: 6.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: isActive ? ffTheme.primary : Colors.grey.shade400,
          ),
        );
      }),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
