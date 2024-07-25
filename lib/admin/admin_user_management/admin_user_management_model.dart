import '/admin/admin_settings/admin_settings_widget.dart';
import '/admin/admin_user_profile/admin_user_profile_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_user_management_widget.dart' show AdminUserManagementWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class AdminUserManagementModel
    extends FlutterFlowModel<AdminUserManagementWidget> {
  ///  Local state fields for this page.

  bool showFullList = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Model for AdminSettings component.
  late AdminSettingsModel adminSettingsModel;

  @override
  void initState(BuildContext context) {
    adminSettingsModel = createModel(context, () => AdminSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    adminSettingsModel.dispose();
  }
}
