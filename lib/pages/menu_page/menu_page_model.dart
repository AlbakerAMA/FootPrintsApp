import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'menu_page_widget.dart' show MenuPageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class MenuPageModel extends FlutterFlowModel<MenuPageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? cartController;
  // Stores action output result for [Backend Call - Create Document] action in AddButton widget.
  UserCartRecord? cartcareation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cartController?.finish();
  }
}
