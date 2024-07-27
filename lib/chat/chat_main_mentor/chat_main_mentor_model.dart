import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentor/mentor_settings/mentor_settings_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'chat_main_mentor_widget.dart' show ChatMainMentorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatMainMentorModel extends FlutterFlowModel<ChatMainMentorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MentorSettings component.
  late MentorSettingsModel mentorSettingsModel;

  @override
  void initState(BuildContext context) {
    mentorSettingsModel = createModel(context, () => MentorSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentorSettingsModel.dispose();
  }
}
