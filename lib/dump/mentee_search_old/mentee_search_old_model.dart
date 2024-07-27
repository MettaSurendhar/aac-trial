import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_list_widgets/no_mentors_connected/no_mentors_connected_widget.dart';
import '/empty_list_widgets/no_suggestions/no_suggestions_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentee/connected_mentor_card/connected_mentor_card_widget.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import '/mentee/mentor_request_card/mentor_request_card_widget.dart';
import 'mentee_search_old_widget.dart' show MenteeSearchOldWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenteeSearchOldModel extends FlutterFlowModel<MenteeSearchOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menteeSettingsModel.dispose();
  }
}
