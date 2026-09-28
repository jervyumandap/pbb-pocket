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

import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

enum _VideoSourceType { direct, youtube, unknown }

//..
class NetworkVideoPlayer extends StatefulWidget {
  const NetworkVideoPlayer({
    super.key,
    this.width,
    this.height,
    required this.videoUrl,
    this.thumbnailUrl = '',
  });

  final double? width;
  final double? height;
  final String videoUrl;
  final String thumbnailUrl;

  @override
  State<NetworkVideoPlayer> createState() => _NetworkVideoPlayerState();
}

class _NetworkVideoPlayerState extends State<NetworkVideoPlayer> {
  VideoPlayerController? _controller;

  bool _initialized = false;
  bool _showThumbnail = true;
  late _VideoSourceType _sourceType;

  static final RegExp _youtubeRegex = RegExp(
    r'(?:youtube\.com\/(?:watch\?v=|embed\/|shorts\/)|youtu\.be\/)([a-zA-Z0-9_-]{11})',
    caseSensitive: false,
  );

  static const List<String> _directVideoExtensions = [
    '.mp4',
    '.mov',
    '.webm',
    '.m3u8',
    '.avi',
    '.mkv',
    '.3gp',
    '.m4v',
  ];

  @override
  void initState() {
    super.initState();
    _sourceType = _detectVideoType(widget.videoUrl);
    if (_sourceType == _VideoSourceType.direct) {
      _initializeVideo();
    }
  }

  @override
  void didUpdateWidget(covariant NetworkVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.videoUrl != widget.videoUrl) {
      _controller?.dispose();
      _controller = null;
      _initialized = false;
      _showThumbnail = true;
      _sourceType = _detectVideoType(widget.videoUrl);
      if (_sourceType == _VideoSourceType.direct) {
        _initializeVideo();
      }
    }
  }

  _VideoSourceType _detectVideoType(String url) {
    if (url.isEmpty) return _VideoSourceType.unknown;

    if (_youtubeRegex.hasMatch(url)) return _VideoSourceType.youtube;

    final uri = Uri.tryParse(url);
    final path = (uri?.path ?? url).toLowerCase();
    if (_directVideoExtensions.any((ext) => path.endsWith(ext))) {
      return _VideoSourceType.direct;
    }

    return _VideoSourceType.unknown;
  }

  String? _extractYoutubeId(String url) {
    return _youtubeRegex.firstMatch(url)?.group(1);
  }

  String _resolvedThumbnailUrl() {
    if (widget.thumbnailUrl.isNotEmpty) return widget.thumbnailUrl;

    if (_sourceType == _VideoSourceType.youtube) {
      final id = _extractYoutubeId(widget.videoUrl);
      if (id != null) {
        return 'https://img.youtube.com/vi/$id/hqdefault.jpg';
      }
    }

    return '';
  }

  Future<void> _initializeVideo() async {
    if (widget.videoUrl.isEmpty) return;

    try {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      );

      await _controller!.initialize();

      if (!mounted) return;

      setState(() {
        _initialized = true;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _togglePlayPause() {
    if (!_initialized || _controller == null) return;

    setState(() {
      if (_controller!.value.isPlaying) {
        _controller!.pause();
      } else {
        _showThumbnail = false;
        _controller!.play();
      }
    });
  }

  Future<void> _openYoutubeExternally() async {
    final uri = Uri.tryParse(widget.videoUrl);
    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Widget _buildThumbnailOrPlaceholder() {
    final thumbnail = _resolvedThumbnailUrl();
    return Positioned.fill(
      child: thumbnail.isNotEmpty
          ? Image.network(
              thumbnail,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.black12,
              ),
            )
          : Container(
              color: Colors.black12,
            ),
    );
  }

  Widget _buildDirectVideoContent() {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (_initialized)
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller!.value.size.width,
                height: _controller!.value.size.height,
                child: VideoPlayer(_controller!),
              ),
            ),
          ),
        if (_showThumbnail) _buildThumbnailOrPlaceholder(),
        if (!_initialized) const CircularProgressIndicator(),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.black54,
          child: IconButton(
            onPressed: _togglePlayPause,
            icon: Icon(
              (_initialized && _controller!.value.isPlaying)
                  ? Icons.pause
                  : Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildYoutubeContent() {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildThumbnailOrPlaceholder(),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.black54,
          child: IconButton(
            onPressed: _openYoutubeExternally,
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUnknownContent() {
    // Non-video, non-YouTube URL: just show the thumbnail/placeholder,
    // no play/pause button, no loading indicator.
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildThumbnailOrPlaceholder(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = widget.height ?? 186.0;

    Widget content;
    switch (_sourceType) {
      case _VideoSourceType.direct:
        content = _buildDirectVideoContent();
        break;
      case _VideoSourceType.youtube:
        content = _buildYoutubeContent();
        break;
      case _VideoSourceType.unknown:
        content = _buildUnknownContent();
        break;
    }

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: content,
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
