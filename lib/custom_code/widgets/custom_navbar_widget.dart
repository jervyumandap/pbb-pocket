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

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// Resource: https://www.youtube.com/watch?v=QxNJ_jeRjEc

class CustomNavbarWidget extends StatefulWidget {
  const CustomNavbarWidget({
    super.key,
    this.width,
    this.height,
    this.onTap,
  });

  final double? width;
  final double? height;
  final Future Function(int? index)? onTap;

  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: Colors.black,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.person, title: 'Account'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.code, title: 'EBilling'),
      ],
      initialActiveIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });

        // Call the provided onTap function if it's not null
        if (widget.onTap != null) {
          widget.onTap!(index);
        }
      },
    );
  }
}
