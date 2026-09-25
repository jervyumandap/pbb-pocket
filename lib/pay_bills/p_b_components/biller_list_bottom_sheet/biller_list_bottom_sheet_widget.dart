import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'biller_list_bottom_sheet_model.dart';
export 'biller_list_bottom_sheet_model.dart';

class BillerListBottomSheetWidget extends StatefulWidget {
  const BillerListBottomSheetWidget({
    super.key,
    this.callBack,
  });

  final Future Function(
      WBBillerStruct selectedBiller, String? accountNumberLabel)? callBack;

  @override
  State<BillerListBottomSheetWidget> createState() =>
      _BillerListBottomSheetWidgetState();
}

class _BillerListBottomSheetWidgetState
    extends State<BillerListBottomSheetWidget> {
  late BillerListBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillerListBottomSheetModel());

    _model.searchTextFieldTextController1 ??= TextEditingController();
    _model.searchTextFieldFocusNode1 ??= FocusNode();

    _model.searchTextFieldTextController2 ??= TextEditingController();
    _model.searchTextFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            -5.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36.0),
                        topRight: Radius.circular(36.0),
                      ),
                    ),
                    child: FutureBuilder<ApiCallResponse>(
                      future: WhitebankGroupAPIGroup
                          .retailBillsPaymentBillersCall
                          .call(
                        accessToken: currentAuthenticationToken,
                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final queryColumnRetailBillsPaymentBillersResponse =
                            snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: 50.0,
                                  height: 6.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDFE2EB),
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Select Biller',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: Color(0xFF383839),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                  Semantics(
                                    label: 'Close-Icon',
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: Color(0xFF252525),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Semantics(
                                      label: 'Search-TextField',
                                      child: Container(
                                        width: 200.0,
                                        child: TextFormField(
                                          controller: _model
                                              .searchTextFieldTextController1,
                                          focusNode:
                                              _model.searchTextFieldFocusNode1,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.searchTextFieldTextController1',
                                            Duration(milliseconds: 0),
                                            () async {
                                              safeSetState(() {});
                                            },
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeIsCustom,
                                                    ),
                                            hintText: 'Search Bar',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .neutral10,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF676666),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .base0,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 17.0, 12.0, 17.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .formElementHover,
                                            prefixIcon: Icon(
                                              Icons.search_rounded,
                                              color: Color(0xFF939FA3),
                                              size: 24.0,
                                            ),
                                            suffixIcon: _model
                                                    .searchTextFieldTextController1!
                                                    .text
                                                    .isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model
                                                          .searchTextFieldTextController1
                                                          ?.clear();
                                                      safeSetState(() {});
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          enableInteractiveSelection: true,
                                          validator: _model
                                              .searchTextFieldTextController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 60.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final billers = (_model.searchTextFieldTextController1
                                                                          .text !=
                                                                      ''
                                                              ? (getJsonField(
                                                                  queryColumnRetailBillsPaymentBillersResponse
                                                                      .jsonBody,
                                                                  r'''$.billers''',
                                                                  true,
                                                                )?.toList().map<WBFetchedBillerStruct?>(WBFetchedBillerStruct.maybeFromMap).toList()
                                                                      as Iterable<
                                                                          WBFetchedBillerStruct?>)
                                                                  .withoutNulls
                                                                  .sortedList(
                                                                      keyOf: (e) => e
                                                                          .name,
                                                                      desc:
                                                                          false)
                                                                  .where((e) => e.name
                                                                      .toLowerCase()
                                                                      .contains(
                                                                          _model.searchTextFieldTextController1.text.toLowerCase()))
                                                                  .toList()
                                                              : (getJsonField(
                                                                  queryColumnRetailBillsPaymentBillersResponse
                                                                      .jsonBody,
                                                                  r'''$.billers''',
                                                                  true,
                                                                )?.toList().map<WBFetchedBillerStruct?>(WBFetchedBillerStruct.maybeFromMap).toList() as Iterable<WBFetchedBillerStruct?>)
                                                                  .withoutNulls
                                                                  .sortedList(keyOf: (e) => e.name, desc: false))
                                                          .toList() ??
                                                      [];

                                                  return Semantics(
                                                    label: 'Billers ListView',
                                                    child: ListView.separated(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: billers.length,
                                                      separatorBuilder:
                                                          (_, __) => SizedBox(
                                                              height: 16.0),
                                                      itemBuilder: (context,
                                                          billersIndex) {
                                                        final billersItem =
                                                            billers[
                                                                billersIndex];
                                                        return Semantics(
                                                          label: 'Biller-Item',
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await widget
                                                                  .callBack
                                                                  ?.call(
                                                                WBBillerStruct(
                                                                  id: billersItem
                                                                      .id,
                                                                  code: billersItem
                                                                      .billerCode,
                                                                  name:
                                                                      billersItem
                                                                          .name,
                                                                  category:
                                                                      billersItem
                                                                          .category
                                                                          .name,
                                                                  isNew: true,
                                                                ),
                                                                billersItem
                                                                    .accountNumberLabel,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 42.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Semantics(
                                                                    label:
                                                                        'Biller Circle Image',
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          42.0,
                                                                      height:
                                                                          42.0,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/fuueei.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Semantics(
                                                                    label:
                                                                        'Biller Name',
                                                                    child: Text(
                                                                      billersItem
                                                                          .name,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        12.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ),
                                      if (!((_model.searchTextFieldTextController1
                                                          .text !=
                                                      ''
                                              ? (getJsonField(
                                                  queryColumnRetailBillsPaymentBillersResponse
                                                      .jsonBody,
                                                  r'''$.billers''',
                                                  true,
                                                )!
                                                          .toList()
                                                          .map<WBFetchedBillerStruct?>(
                                                              WBFetchedBillerStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          WBFetchedBillerStruct?>)
                                                  .withoutNulls
                                                  .sortedList(
                                                      keyOf: (e) => e.name,
                                                      desc: false)
                                                  .where((e) => e.name
                                                      .toLowerCase()
                                                      .contains(_model
                                                          .searchTextFieldTextController1
                                                          .text
                                                          .toLowerCase()))
                                                  .toList()
                                              : (getJsonField(
                                                  queryColumnRetailBillsPaymentBillersResponse
                                                      .jsonBody,
                                                  r'''$.billers''',
                                                  true,
                                                )!
                                                      .toList()
                                                      .map<WBFetchedBillerStruct?>(
                                                          WBFetchedBillerStruct.maybeFromMap)
                                                      .toList() as Iterable<WBFetchedBillerStruct?>)
                                                  .withoutNulls
                                                  .sortedList(keyOf: (e) => e.name, desc: false))
                                          .isNotEmpty))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 200.0,
                                                child: Semantics(
                                                  label:
                                                      'Empty List Placeholder',
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .emptyListComponentModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        EmptyListComponentWidget(
                                                      title: 'No billers found',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: FFAppConstants.RightDrawerWidth,
                  decoration: BoxDecoration(),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            -5.0,
                          ),
                        )
                      ],
                    ),
                    child: FutureBuilder<ApiCallResponse>(
                      future: WhitebankGroupAPIGroup
                          .retailBillsPaymentBillersCall
                          .call(
                        accessToken: currentAuthenticationToken,
                        search: _model.searchTextFieldTextController2.text,
                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final queryColumnRetailBillsPaymentBillersResponse =
                            snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: 50.0,
                                  height: 6.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Select Biller',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: Color(0xFF383839),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                  Semantics(
                                    label: 'Close Icon',
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: Color(0xFF252525),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Semantics(
                                      label: 'Search-TextField',
                                      child: Container(
                                        width: 200.0,
                                        child: TextFormField(
                                          controller: _model
                                              .searchTextFieldTextController2,
                                          focusNode:
                                              _model.searchTextFieldFocusNode2,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.searchTextFieldTextController2',
                                            Duration(milliseconds: 0),
                                            () async {
                                              safeSetState(() {});
                                            },
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeIsCustom,
                                                    ),
                                            hintText: 'Search Bar',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .neutral10,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF676666),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .base0,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 17.0, 12.0, 17.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .formElementHover,
                                            prefixIcon: Icon(
                                              Icons.search_rounded,
                                              color: Color(0xFF939FA3),
                                              size: 24.0,
                                            ),
                                            suffixIcon: _model
                                                    .searchTextFieldTextController2!
                                                    .text
                                                    .isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model
                                                          .searchTextFieldTextController2
                                                          ?.clear();
                                                      safeSetState(() {});
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          enableInteractiveSelection: true,
                                          validator: _model
                                              .searchTextFieldTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 60.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final billers = (_model.searchTextFieldTextController2
                                                                          .text !=
                                                                      ''
                                                              ? (getJsonField(
                                                                  queryColumnRetailBillsPaymentBillersResponse
                                                                      .jsonBody,
                                                                  r'''$.billers''',
                                                                  true,
                                                                )?.toList().map<WBFetchedBillerStruct?>(WBFetchedBillerStruct.maybeFromMap).toList()
                                                                      as Iterable<
                                                                          WBFetchedBillerStruct?>)
                                                                  .withoutNulls
                                                                  .sortedList(
                                                                      keyOf: (e) => e
                                                                          .name,
                                                                      desc:
                                                                          false)
                                                                  .where((e) => e.name
                                                                      .toLowerCase()
                                                                      .contains(
                                                                          _model.searchTextFieldTextController2.text.toLowerCase()))
                                                                  .toList()
                                                              : (getJsonField(
                                                                  queryColumnRetailBillsPaymentBillersResponse
                                                                      .jsonBody,
                                                                  r'''$.billers''',
                                                                  true,
                                                                )?.toList().map<WBFetchedBillerStruct?>(WBFetchedBillerStruct.maybeFromMap).toList() as Iterable<WBFetchedBillerStruct?>)
                                                                  .withoutNulls
                                                                  .sortedList(keyOf: (e) => e.name, desc: false))
                                                          .toList() ??
                                                      [];

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: billers.length,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(height: 16.0),
                                                    itemBuilder: (context,
                                                        billersIndex) {
                                                      final billersItem =
                                                          billers[billersIndex];
                                                      return Semantics(
                                                        label: 'Biller-Item',
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await widget
                                                                .callBack
                                                                ?.call(
                                                              WBBillerStruct(
                                                                id: billersItem
                                                                    .id,
                                                                code: billersItem
                                                                    .billerCode,
                                                                name:
                                                                    billersItem
                                                                        .name,
                                                                category:
                                                                    billersItem
                                                                        .category
                                                                        .name,
                                                                isNew: true,
                                                              ),
                                                              billersItem
                                                                  .accountNumberLabel,
                                                            );
                                                          },
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 42.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Semantics(
                                                                  label:
                                                                      'Biller Circle Image',
                                                                  child:
                                                                      Container(
                                                                    width: 42.0,
                                                                    height:
                                                                        42.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/fuueei.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Semantics(
                                                                  label:
                                                                      'Biller Name',
                                                                  child: Text(
                                                                    billersItem
                                                                        .name,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ),
                                      if (!((_model.searchTextFieldTextController2
                                                          .text !=
                                                      ''
                                              ? (getJsonField(
                                                  queryColumnRetailBillsPaymentBillersResponse
                                                      .jsonBody,
                                                  r'''$.billers''',
                                                  true,
                                                )!
                                                          .toList()
                                                          .map<WBFetchedBillerStruct?>(
                                                              WBFetchedBillerStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          WBFetchedBillerStruct?>)
                                                  .withoutNulls
                                                  .sortedList(
                                                      keyOf: (e) => e.name,
                                                      desc: false)
                                                  .where((e) => e.name
                                                      .toLowerCase()
                                                      .contains(_model
                                                          .searchTextFieldTextController2
                                                          .text
                                                          .toLowerCase()))
                                                  .toList()
                                              : (getJsonField(
                                                  queryColumnRetailBillsPaymentBillersResponse
                                                      .jsonBody,
                                                  r'''$.billers''',
                                                  true,
                                                )!
                                                      .toList()
                                                      .map<WBFetchedBillerStruct?>(
                                                          WBFetchedBillerStruct.maybeFromMap)
                                                      .toList() as Iterable<WBFetchedBillerStruct?>)
                                                  .withoutNulls
                                                  .sortedList(keyOf: (e) => e.name, desc: false))
                                          .isNotEmpty))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 200.0,
                                                child: Semantics(
                                                  label:
                                                      'Empty List Placeholder',
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .emptyListComponentModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        EmptyListComponentWidget(
                                                      title: 'No billers found',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
