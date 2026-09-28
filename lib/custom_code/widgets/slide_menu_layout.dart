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

class SlideMenuLayout extends StatefulWidget {
  const SlideMenuLayout({
    super.key,
    this.width,
    this.height,
    required this.menuBuilder,
    required this.pageBuilder,
    required this.loadingBuilder,
  });

  final double? width;
  final double? height;

  final Widget Function() menuBuilder;
  final Widget Function() pageBuilder;
  final Widget Function() loadingBuilder;

  @override
  State<SlideMenuLayout> createState() => _SlideMenuLayoutState();
}

class _SlideMenuLayoutState extends State<SlideMenuLayout> {
  bool isOpen = false;
  bool isReady = false;

  // Cached builders so they don't rebuild every frame
  late final Widget _menu;
  late final Widget _page;
  late final Widget _loading;

  @override
  void initState() {
    super.initState();
    _menu = widget.menuBuilder();
    _page = widget.pageBuilder();
    _loading = widget.loadingBuilder();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          isReady = true;
        });
      }
    });
  }

  void toggleMenu() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double safeWidth = (widget.width == null || widget.width! <= 0)
        ? MediaQuery.of(context).size.width
        : widget.width!;
    final double safeHeight = (widget.height == null || widget.height! <= 0)
        ? MediaQuery.of(context).size.height
        : widget.height!;

    const Color themeBackgroundColor = Color(0xFFE3E3F5);
    const double slideAmount = 270.0;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Loading overlay â removed from tree once ready
          if (!isReady)
            Container(
              width: safeWidth,
              height: safeHeight,
              color: themeBackgroundColor.withValues(alpha: 0.9),
              child: Center(child: _loading),
            ),

          // Main content â fades in when ready
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: isReady ? 1.0 : 0.0,
            child: IgnorePointer(
              ignoring: !isReady,
              child: Stack(
                children: [
                  // Menu layer (behind the page)
                  Container(
                    width: safeWidth,
                    height: safeHeight,
                    color: themeBackgroundColor,
                    child: _menu,
                  ),

                  // Sliding page layer
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: isOpen ? 1.0 : 0.0),
                    duration: const Duration(milliseconds: 450),
                    curve: Curves.easeOutCubic,
                    builder: (context, value, child) {
                      return Transform(
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.identity()
                          ..translate(value * slideAmount, value * -20)
                          ..scale(1.0 - (value * 0.35)),
                        child: child,
                      );
                    },
                    child: GestureDetector(
                      // Tap anywhere on page to close menu when open
                      onTap: isOpen ? toggleMenu : null,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 450),
                        width: safeWidth,
                        height: safeHeight,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius:
                              BorderRadius.circular(isOpen ? 40.0 : 0.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: isOpen ? 0.3 : 0.0),
                              blurRadius: 40,
                              spreadRadius: 2,
                              offset: const Offset(-20, 10),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(isOpen ? 40.0 : 0.0),
                          child: Stack(
                            children: [
                              // Page content â non-interactive when menu is open
                              IgnorePointer(
                                ignoring: isOpen,
                                child: _page,
                              ),

                              // Hamburger / menu toggle button
                              Positioned(
                                top: 56,
                                left: 20,
                                child: GestureDetector(
                                  onTap: toggleMenu,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              11, 15, 11, 13),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(0),
                                        child: Image.asset(
                                          'assets/images/segmentIcon.png',
                                          fit: BoxFit.contain,
                                          width: 18,
                                          height: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
