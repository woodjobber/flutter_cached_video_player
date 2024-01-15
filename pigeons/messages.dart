// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:pigeon/pigeon_lib.dart';

class TextureMessage {
  final int textureId;

  const TextureMessage({required this.textureId});
}

class LoopingMessage {
  final int textureId;
  final bool isLooping;

  const LoopingMessage({required this.textureId, required this.isLooping});
}

class VolumeMessage {
  final int textureId;
  final double volume;

  const VolumeMessage({required this.textureId, required this.volume});
}

class PlaybackSpeedMessage {
  final int textureId;
  final double speed;

  const PlaybackSpeedMessage({required this.textureId, required this.speed});
}

class PositionMessage {
  final int textureId;
  final int position;

  const PositionMessage({required this.textureId, required this.position});
}

class CreateMessage {
  final String asset;
  final String uri;
  final String packageName;
  final String formatHint;
  final Map<String, String> httpHeaders;

  const CreateMessage({
    required this.asset,
    required this.uri,
    required this.packageName,
    required this.formatHint,
    required this.httpHeaders,
  });
}

class MixWithOthersMessage {
  final bool mixWithOthers;

  const MixWithOthersMessage({required this.mixWithOthers});
}

@HostApi(dartHostTestHandler: 'TestHostVideoPlayerApi')
abstract class VideoPlayerApi {
  void initialize();
  TextureMessage create(CreateMessage msg);
  void dispose(TextureMessage msg);
  void setLooping(LoopingMessage msg);
  void setVolume(VolumeMessage msg);
  void setPlaybackSpeed(PlaybackSpeedMessage msg);
  void play(TextureMessage msg);
  PositionMessage position(TextureMessage msg);
  void seekTo(PositionMessage msg);
  void pause(TextureMessage msg);
  void setMixWithOthers(MixWithOthersMessage msg);
}
