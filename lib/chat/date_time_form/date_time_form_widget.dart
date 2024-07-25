import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_time_form_model.dart';
export 'date_time_form_model.dart';

class DateTimeFormWidget extends StatefulWidget {
  const DateTimeFormWidget({
    super.key,
    required this.titleText,
  });

  final String? titleText;

  @override
  State<DateTimeFormWidget> createState() => _DateTimeFormWidgetState();
}

class _DateTimeFormWidgetState extends State<DateTimeFormWidget> {
  late DateTimeFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateTimeFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              widget!.titleText!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              final _datePickedDate = await showDatePicker(
                context: context,
                initialDate: getCurrentTimestamp,
                firstDate: getCurrentTimestamp,
                lastDate: DateTime(2050),
                builder: (context, child) {
                  return wrapInMaterialDatePickerTheme(
                    context,
                    child!,
                    headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                    headerForegroundColor: Colors.white,
                    headerTextStyle: FlutterFlowTheme.of(context)
                        .headlineLarge
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                    pickerBackgroundColor: Colors.white,
                    pickerForegroundColor: Colors.black,
                    selectedDateTimeBackgroundColor:
                        FlutterFlowTheme.of(context).primary,
                    selectedDateTimeForegroundColor: Colors.white,
                    actionButtonForegroundColor: Colors.black,
                    iconSize: 24.0,
                  );
                },
              );

              TimeOfDay? _datePickedTime;
              if (_datePickedDate != null) {
                _datePickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(getCurrentTimestamp),
                  builder: (context, child) {
                    return wrapInMaterialTimePickerTheme(
                      context,
                      child!,
                      headerBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      headerForegroundColor: Colors.white,
                      headerTextStyle:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineLargeFamily),
                              ),
                      pickerBackgroundColor: Colors.white,
                      pickerForegroundColor: Colors.black,
                      selectedDateTimeBackgroundColor:
                          FlutterFlowTheme.of(context).primary,
                      selectedDateTimeForegroundColor: Colors.white,
                      actionButtonForegroundColor: Colors.black,
                      iconSize: 24.0,
                    );
                  },
                );
              }

              if (_datePickedDate != null && _datePickedTime != null) {
                safeSetState(() {
                  _model.datePicked = DateTime(
                    _datePickedDate.year,
                    _datePickedDate.month,
                    _datePickedDate.day,
                    _datePickedTime!.hour,
                    _datePickedTime.minute,
                  );
                });
              }
            },
            child: Container(
              width: double.infinity,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Text(
                dateTimeFormat(
                  'd/M h:mm a',
                  _model.datePicked,
                  locale: FFLocalizations.of(context).languageCode,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Colors.black,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 10.0)).addToStart(SizedBox(height: 10.0)),
      ),
    );
  }
}
