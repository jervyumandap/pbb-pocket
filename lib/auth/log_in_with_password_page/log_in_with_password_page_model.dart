import '/auth/custom_auth/auth_util.dart';
import '/auth/login_with_username_component/login_with_username_component_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class LogInWithPasswordPageModel
    extends FlutterFlowModel<LogInWithPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LoginWithUsernameComponent component.
  late LoginWithUsernameComponentModel loginWithUsernameComponentModel;
  // Stores action output result for [Action Block - getUserDeviceDetails] action in LoginWithUsernameComponent widget.
  String? hehehehehehe;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loginWithUsernameComponentModel =
        createModel(context, () => LoginWithUsernameComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loginWithUsernameComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Action blocks.
  Future loginUserLogin(
    BuildContext context, {
    String? inputUsername,
    String? inputPassword,
    DeviceDataStruct? inputDeviceDetails,
    String? outputToken,
  }) async {
    ApiCallResponse? loginResponse;
    String? token;

    loginResponse = await SupabaseGroup.loginUsingUsernameCall.call(
      username: inputUsername,
      password: inputPassword,
      deviceId: DeviceDataStruct.maybeFromMap(widget!.deviceDetails)?.deviceId,
      accessToken: FFDevEnvironmentValues().ANONKEY,
    );

    if ((loginResponse.succeeded ?? true)) {
      GoRouter.of(context).prepareAuthEvent();
      await authManager.signIn(
        authenticationToken: SupabaseGroup.loginUsingUsernameCall.accessToken(
          (loginResponse.jsonBody ?? ''),
        ),
        authUid: SupabaseGroup.loginUsingUsernameCall
            .id(
              (loginResponse.jsonBody ?? ''),
            )
            ?.toString(),
        userData: AuthenticatedUserStruct(
          accessToken:
              LoginResponseStruct.maybeFromMap((loginResponse.jsonBody ?? ''))
                  ?.accessToken,
          refreshToken:
              LoginResponseStruct.maybeFromMap((loginResponse.jsonBody ?? ''))
                  ?.refreshToken,
          expiresIn:
              LoginResponseStruct.maybeFromMap((loginResponse.jsonBody ?? ''))
                  ?.expiresIn,
          user: UserV3Struct(
            userName:
                loginWithUsernameComponentModel.textFieldUnTextController.text,
          ),
        ),
      );
      if (outputToken == 'No refresh token found') {
        token = await actions.loginWithEdgeFunctionAndStoreTokens(
          SupabaseGroup.loginUsingUsernameCall.email(
            (loginResponse.jsonBody ?? ''),
          )!,
          inputPassword!,
          inputDeviceDetails!.deviceId,
          inputDeviceDetails.os,
          inputDeviceDetails.model,
        );
      }
      await actions.saveUsernameSecurely(
        inputUsername!,
      );
      await actions.saveUserIDSecure(
        SupabaseGroup.loginUsingUsernameCall
            .id(
              (loginResponse.jsonBody ?? ''),
            )!
            .toString(),
      );

      context.goNamedAuth(
        DashboardWidget.routeName,
        context.mounted,
        queryParameters: {
          'username': serializeParam(
            widget!.username != null && widget!.username != ''
                ? widget!.username
                : inputUsername,
            ParamType.String,
          ),
        }.withoutNulls,
      );
    } else {
      if (SupabaseGroup.loginUsingUsernameCall.currentAttempt(
            (loginResponse.jsonBody ?? ''),
          ) ==
          3) {
        context.pushNamedAuth(
          AccountIsLockedPageWidget.routeName,
          context.mounted,
          queryParameters: {
            'lockedUntil': serializeParam(
              SupabaseGroup.loginUsingUsernameCall.lockedUntil(
                (loginResponse.jsonBody ?? ''),
              ),
              ParamType.String,
            ),
          }.withoutNulls,
        );
      } else {
        await showDialog(
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: WebViewAware(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: CustomInformationalDialogWidget(
                    message:
                        'The username or password you entered is incorrect. Please try again or reset your password if you\'ve forgotten it.',
                    primaryButtonTitle: 'Try Again',
                    title: 'Login Failed',
                    primaryButtonAction: () async {
                      Navigator.pop(context);
                    },
                    secondaryButtonAction: () async {},
                  ),
                ),
              ),
            );
          },
        );
      }

      return;
    }
  }
}
