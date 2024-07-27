import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_list_widgets/no_mentors_found/no_mentors_found_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentee/connected_mentor_card/connected_mentor_card_widget.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import 'mentee_home_widget.dart' show MenteeHomeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenteeHomeModel extends FlutterFlowModel<MenteeHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menteeSettingsModel.dispose();
  }
}
