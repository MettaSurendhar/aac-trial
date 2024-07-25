import '/admin/admin_settings/admin_settings_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_home_del_widget.dart' show AdminHomeDelWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminHomeDelModel extends FlutterFlowModel<AdminHomeDelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdminSettings component.
  late AdminSettingsModel adminSettingsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    adminSettingsModel = createModel(context, () => AdminSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adminSettingsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
