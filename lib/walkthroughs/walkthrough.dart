import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final buttonF6o00y7l = GlobalKey();

/// Walkthrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Create acc
      TargetFocus(
        keyTarget: buttonF6o00y7l,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughWidget(
              text: 'Create Account if you don\'t have !',
            ),
          ),
        ],
      ),
    ];
