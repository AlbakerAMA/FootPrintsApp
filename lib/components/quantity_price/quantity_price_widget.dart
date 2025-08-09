import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quantity_price_model.dart';
export 'quantity_price_model.dart';

class QuantityPriceWidget extends StatefulWidget {
  const QuantityPriceWidget({super.key});

  @override
  State<QuantityPriceWidget> createState() => _QuantityPriceWidgetState();
}

class _QuantityPriceWidgetState extends State<QuantityPriceWidget> {
  late QuantityPriceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuantityPriceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        FlutterFlowIconButton(
          borderColor: FlutterFlowTheme.of(context).primary,
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 40.0,
          fillColor: FlutterFlowTheme.of(context).error,
          icon: Icon(
            Icons.remove_sharp,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        Text(
          'Quantit',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.poppins(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        FlutterFlowIconButton(
          borderColor: FlutterFlowTheme.of(context).primary,
          borderRadius: 20.0,
          borderWidth: 1.0,
          buttonSize: 40.0,
          fillColor: FlutterFlowTheme.of(context).secondary,
          icon: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ],
    );
  }
}
