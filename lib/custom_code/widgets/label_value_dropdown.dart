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

class LabelValueDropdown extends StatefulWidget {
  const LabelValueDropdown({
    super.key,
    this.width,
    this.height,
    required this.options,
    required this.labels,
    this.placeholder,
    this.initialValue,
    this.onChanged,
    this.showError = false,
    this.errorText,
    this.sheetTitle,
  });

  final double? width;
  final double? height;
  final List<String> options;
  final List<String> labels;
  final String? placeholder;
  final String? initialValue;
  final String? sheetTitle;
  final Future Function(String label, String value)? onChanged;
  final bool showError;
  final String? errorText;

  @override
  State<LabelValueDropdown> createState() => _LabelValueDropdownState();
}

class _LabelValueDropdownState extends State<LabelValueDropdown>
    with TickerProviderStateMixin {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null &&
        widget.options.contains(widget.initialValue)) {
      _selectedValue = widget.initialValue;
    }
  }

  String _getLabel(String value) {
    final index = widget.options.indexOf(value);
    if (index == -1 || index >= widget.labels.length) return value;
    return widget.labels[index];
  }

  void _openPicker() async {
    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _AlphaGroupedSheet(
        options: widget.options,
        labels: widget.labels,
        title: widget.sheetTitle ?? widget.placeholder ?? 'Select bank',
      ),
    );

    if (result == null) return;

    final index = widget.options.indexOf(result);
    final label = index >= 0 && index < widget.labels.length
        ? widget.labels[index]
        : result;

    setState(() => _selectedValue = result);
    if (widget.onChanged != null) {
      await widget.onChanged!(label, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color borderColor =
        widget.showError ? const Color(0xFFB3261E) : const Color(0xFF676666);
    final double borderWidth = widget.showError ? 2.0 : 1.0;

    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: widget.width ?? double.infinity,
            constraints: const BoxConstraints(minHeight: 56.0),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: borderWidth, color: borderColor),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: InkWell(
              onTap: _openPicker,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _selectedValue == null
                            ? (widget.placeholder ?? 'Select Bank')
                            : _getLabel(_selectedValue!),
                        style: TextStyle(
                          color: _selectedValue == null
                              ? const Color(0xFF676666)
                              : const Color(0xFF020000),
                          fontSize: 16,
                          fontFamily: 'Proxima Nova',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Transform.rotate(
                          angle: 1.5708,
                          child: Icon(
                            Icons.chevron_right,
                            color: widget.showError
                                ? const Color(0xFFB3261E)
                                : const Color(0xFF676666),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (widget.showError && widget.errorText != null)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 16, right: 16),
              child: Text(
                widget.errorText!,
                style: const TextStyle(
                  color: Color(0xFFB3261E),
                  fontSize: 12,
                  fontFamily: 'Proxima Nova',
                  fontWeight: FontWeight.w500,
                  height: 1.33,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// BOTTOM SHEET
// ─────────────────────────────────────────────────────────

class _AlphaGroupedSheet extends StatefulWidget {
  final List<String> options;
  final List<String> labels;
  final String title;

  const _AlphaGroupedSheet({
    required this.options,
    required this.labels,
    required this.title,
  });

  @override
  State<_AlphaGroupedSheet> createState() => _AlphaGroupedSheetState();
}

class _AlphaGroupedSheetState extends State<_AlphaGroupedSheet> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  late final List<String> _letters;
  late final List<_RowEntry> _allRows;
  List<_RowEntry> _filteredRows = [];
  String _query = '';

  @override
  void initState() {
    super.initState();
    _buildStructure();
    _filteredRows = List.of(_allRows);
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _buildStructure() {
    final Map<String, List<int>> groups = {};
    for (int i = 0; i < widget.labels.length; i++) {
      final letter =
          widget.labels[i].isNotEmpty ? widget.labels[i][0].toUpperCase() : '#';
      groups.putIfAbsent(letter, () => []).add(i);
    }
    _letters = groups.keys.toList()..sort();

    _allRows = [];
    for (final char in _letters) {
      _allRows.add(_RowEntry(isHeader: true, text: char));
      for (final index in groups[char]!) {
        _allRows.add(_RowEntry(
            isHeader: false, text: widget.labels[index], index: index));
      }
    }
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();
    setState(() {
      _query = query;
      if (query.isEmpty) {
        _filteredRows = List.of(_allRows);
      } else {
        final Map<String, List<_RowEntry>> grouped = {};
        for (final row in _allRows) {
          if (!row.isHeader && row.text.toLowerCase().contains(query)) {
            final letter = row.text[0].toUpperCase();
            grouped.putIfAbsent(letter, () => []).add(row);
          }
        }
        final sortedLetters = grouped.keys.toList()..sort();
        _filteredRows = [];
        for (final char in sortedLetters) {
          _filteredRows.add(_RowEntry(isHeader: true, text: char));
          _filteredRows.addAll(grouped[char]!);
        }
      }
    });
  }

  void _jumpTo(String letter) {
    double offset = 0;
    for (var row in _filteredRows) {
      if (row.isHeader && row.text == letter) break;
      // header height 26 + spacing 16, item height ~42 + spacing 16
      offset += row.isHeader ? 42.0 : 58.0;
    }
    _scrollController.animateTo(
      offset.clamp(0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isSearching = _query.isNotEmpty;

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.95,
      minChildSize: 0.5,
      builder: (_, __) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: Column(
          children: [
            // ── Drag handle ──
            const SizedBox(height: 12),
            Container(
              width: 60,
              height: 6,
              decoration: BoxDecoration(
                color: const Color(0xFFDFE2EA),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 18),

            // ── Title + Close ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        color: Color(0xFF383839),
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, color: Color(0xFF383839)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // ── Search bar (Figma: 343×48, border 0xFFD0D0D0, radius 35) ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 48,
                child: TextField(
                  controller: _searchController,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF252525),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Color(0xFF7B7B7B),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.57,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF7B7B7B),
                      size: 20,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xFFD0D0D0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xFFD0D0D0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: const BorderSide(
                        width: 1.5,
                        color: Color(0xFF094288),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // ── List + Alphabet sidebar ──
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: isSearching ? 16 : 30,
                    ),
                    child: _filteredRows.isEmpty
                        ? const Center(
                            child: Text(
                              'No results found',
                              style: TextStyle(
                                color: Color(0xFF7B7B7B),
                                fontSize: 14,
                                fontFamily: 'Inter',
                              ),
                            ),
                          )
                        : ListView.separated(
                            controller: _scrollController,
                            itemCount: _filteredRows.length,
                            separatorBuilder: (_, i) {
                              // Only show divider between two non-header rows
                              final current = _filteredRows[i];
                              final next = i + 1 < _filteredRows.length
                                  ? _filteredRows[i + 1]
                                  : null;
                              if (!current.isHeader &&
                                  next != null &&
                                  !next.isHeader) {
                                return const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Color(0xFFE8E8E8),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                            itemBuilder: (context, i) {
                              final row = _filteredRows[i];

                              // ── Letter header ──
                              if (row.isHeader) {
                                return Container(
                                  height: 26,
                                  width: double.infinity,
                                  color: const Color(0xFFE8FBFF),
                                  padding: const EdgeInsets.only(left: 10),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    row.text,
                                    style: const TextStyle(
                                      color: Color(0xFF252525),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 1.50,
                                    ),
                                  ),
                                );
                              }

                              // ── Bank row (no avatar) ──
                              return InkWell(
                                onTap: () => Navigator.pop(
                                    context, widget.options[row.index!]),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    row.text,
                                    style: const TextStyle(
                                      color: Color(0xFF252525),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),

                  // ── Alphabet index sidebar ──
                  if (!isSearching)
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _letters
                            .map(
                              (letter) => GestureDetector(
                                onTap: () => _jumpTo(letter),
                                child: SizedBox(
                                  width: 17,
                                  height: 19,
                                  child: Center(
                                    child: Text(
                                      letter,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color(0xFF094288),
                                        fontSize: 10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// ROW ENTRY MODEL
// ─────────────────────────────────────────────────────────

class _RowEntry {
  final bool isHeader;
  final String text;
  final int? index;
  _RowEntry({required this.isHeader, required this.text, this.index});
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
