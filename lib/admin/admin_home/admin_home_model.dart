import '/admin/admin_settings/admin_settings_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_home_widget.dart' show AdminHomeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminHomeModel extends FlutterFlowModel<AdminHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdminSettings component.
  late AdminSettingsModel adminSettingsModel;

  @override
  void initState(BuildContext context) {
    adminSettingsModel = createModel(context, () => AdminSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adminSettingsModel.dispose();
  }
}
