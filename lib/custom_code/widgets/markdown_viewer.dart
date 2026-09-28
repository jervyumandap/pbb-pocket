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

import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class MarkdownViewer extends StatefulWidget {
  const MarkdownViewer({
    super.key,
    this.width,
    this.height,
    required this.data,
    required this.title,
    this.isIcon = false,
    this.isScrollable = false,
    this.isFlexible = false,
  });

  final double? width;
  final double? height;
  final String data;
  final String title;
  final bool isIcon;

  /// Scroll inside [height]. Use only when PARENT is NOT already scrollable.
  final bool isScrollable;

  /// Fill [height] from FlutterFlow Expand / fixed parent height.
  final bool isFlexible;

  @override
  State<MarkdownViewer> createState() => _MarkdownViewerState();
}

class _MarkdownViewerState extends State<MarkdownViewer> {
  Future<void> _openLink(String text, String? href, String title) async {
    if (href == null) return;
    final uri = Uri.tryParse(href);
    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  String _cleanMarkdownData(String rawData) {
    return rawData.split('\n').map((line) {
      final trimmed = line.trim();
      final regex = RegExp(r'^([\*\-\+]\s+)?\(\s*[✔✓xX]?\s*\)\s*');
      if (regex.hasMatch(trimmed)) {
        return line.replaceFirst(regex, '* ');
      }
      return line;
    }).join('\n');
  }

  /// Honor FF height only for scroll/fill modes.
  bool get _useBoundedHeight =>
      widget.height != null && (widget.isScrollable || widget.isFlexible);

  Widget _buildMarkdownBody(BuildContext context) {
    // selectable:true + outer scroll on web often blows up mouse_tracker.
    return MarkdownBody(
      data: _cleanMarkdownData(widget.data),
      selectable: false,
      softLineBreak: true,
      imageDirectory: '',
      onTapLink: _openLink,
      bulletBuilder: (MarkdownBulletParameters parameters) {
        if (widget.isIcon && parameters.style == BulletStyle.unorderedList) {
          return Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 2, right: 8),
            child: SizedBox(
              width: 18,
              height: 18,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  'assets/images/check_primary_icon.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          );
        }

        if (parameters.style == BulletStyle.orderedList) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              '${parameters.index + 1}.',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            '•',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        );
      },
      styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
        h1: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        h2: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        h3: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        h4: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        p: TextStyle(
          fontSize: 14,
          height: 1.5,
          color: Theme.of(context).textTheme.bodyMedium?.color,
        ),
        strong: const TextStyle(fontWeight: FontWeight.bold),
        em: const TextStyle(fontStyle: FontStyle.italic),
        code: TextStyle(
          fontFamily: 'inter',
          fontSize: 14,
          backgroundColor: Colors.grey.shade200,
        ),
        codeblockDecoration: BoxDecoration(color: Colors.grey.shade100),
        blockquote: TextStyle(
          color: Colors.grey.shade700,
          fontStyle: FontStyle.italic,
        ),
        tableBorder: TableBorder.all(color: Colors.grey.shade300),
        tableCellsPadding: EdgeInsets.zero,
        listBullet: TextStyle(
          fontSize: 16,
          color: Theme.of(context).textTheme.bodyMedium?.color,
        ),
        listBulletPadding: const EdgeInsets.only(right: 4),
        a: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final body = _buildMarkdownBody(context);

    final markdownChild = widget.isScrollable
        ? SingleChildScrollView(
            primary: false,
            physics: const ClampingScrollPhysics(),
            child: body,
          )
        : body;

    final column = Column(
      mainAxisSize: _useBoundedHeight ? MainAxisSize.max : MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'inter',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        if (_useBoundedHeight)
          Expanded(child: markdownChild)
        else
          markdownChild,
      ],
    );

    if (_useBoundedHeight) {
      return SizedBox(
        width: widget.width ?? double.infinity,
        height: widget.height,
        child: column,
      );
    }

    // Content Hub style: grow with content; page scroll owns scrolling.
    return SizedBox(
      width: widget.width ?? double.infinity,
      child: column,
    );
  }
}
