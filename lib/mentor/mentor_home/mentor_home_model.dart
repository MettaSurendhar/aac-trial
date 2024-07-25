import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentor/mentor_settings/mentor_settings_widget.dart';
import 'mentor_home_widget.dart' show MentorHomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MentorHomeModel extends FlutterFlowModel<MentorHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MentorSettings component.
  late MentorSettingsModel mentorSettingsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    mentorSettingsModel = createModel(context, () => MentorSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentorSettingsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}