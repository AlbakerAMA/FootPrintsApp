import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final rowA33y9mst = GlobalKey();
final iconFe3kdfxk = GlobalKey();

/// Cart
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// cart
      TargetFocus(
        keyTarget: rowA33y9mst,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughWidget(
              text: 'You can remove the item form here',
            ),
          ),
        ],
      ),

      /// checkout
      TargetFocus(
        keyTarget: iconFe3kdfxk,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughWidget(
              text: 'click on the cart to the checkout ',
            ),
          ),
        ],
      ),
    ];
