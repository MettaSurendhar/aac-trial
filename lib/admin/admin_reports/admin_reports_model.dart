import '/admin/admin_settings/admin_settings_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_list_widgets/no_reports_found/no_reports_found_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_reports_widget.dart' show AdminReportsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminReportsModel extends FlutterFlowModel<AdminReportsWidget> {
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
