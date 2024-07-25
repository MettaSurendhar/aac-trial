import '/askingpage/selecting_mentor_mentee/selecting_mentor_mentee_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selection_page_model.dart';
export 'selection_page_model.dart';

class SelectionPageWidget extends StatefulWidget {
  const SelectionPageWidget({super.key});

  @override
  State<SelectionPageWidget> createState() => _SelectionPageWidgetState();
}

class _SelectionPageWidgetState extends State<SelectionPageWidget> {
  late SelectionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectionPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.selectingMentorMenteeModel,
            updateCallback: () => setState(() {}),
            child: SelectingMentorMenteeWidget(),
          ),
        ),
      ),
    );
  }
}
