import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentor/mentee_request_card/mentee_request_card_widget.dart';
import '/mentor/mentor_settings/mentor_settings_widget.dart';
import 'mentor_requests_widget.dart' show MentorRequestsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MentorRequestsModel extends FlutterFlowModel<MentorRequestsWidget> {
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
