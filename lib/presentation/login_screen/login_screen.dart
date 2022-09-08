import 'package:shopsie/core/constants/shopsie.dart';
import 'package:shopsie/data/models/carts/post_carts_req.dart';
import 'package:shopsie/data/models/customers/post_customers_req.dart';
import 'package:shopsie/data/models/socialAuth/soicalAuth.dart';
import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/core/utils/validation_functions.dart';
import 'package:shopsie/widgets/custom_button.dart';
import 'package:shopsie/widgets/custom_text_form_field.dart';
import 'package:shopsie/data/models/storeAuth/post_store_auth_req.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/domain/firebaseFacebookAuth/firebaseFacebookAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopsie/data/models/storeAuth/post_store_auth_req.dart';
import 'package:shopsie/domain/firebaseGoogleAuth/firebaseGoogleAuth.dart';
import 'package:shopsie/data/models/storeAuth/post_store_auth_req.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(260.00),
                                      margin: getMargin(
                                          left: 24, top: 143, right: 24),
                                      child: Text("msg_welcome_back_g".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtLatoBold24
                                              .copyWith(
                                                  letterSpacing: 0.72,
                                                  height: 1.46)))),
                              CustomTextFormField(
                                  width: 358,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 16, top: 43, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (!isValidEmail(value)) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 358,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordController,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value, isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 20,
                                          right: 24,
                                          bottom: 12),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgEye16X22,
                                      
                                      )),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(22.00),
                                      minHeight: getVerticalSize(16.00)),
                                  isObscureText: _isObscure),
                              CustomButton(
                                  width: 358,
                                  text: "lbl_login".tr,
                                  margin:
                                      getMargin(left: 16, top: 31, right: 15),
                                  fontStyle: ButtonFontStyle.LatoMedium16,
                                  onTap: onTapBtnLogin,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 31, right: 16),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  112.00),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 10),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .indigo50)),
                                                      Text(
                                                          "lbl_or_login_with"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLatoRegular14Gray602
                                                              .copyWith()),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  111.00),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .indigo50))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                          onTap: () {
                                                            onTapStackfacebook();
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      56.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      168.00),
                                                              child: Card(
                                                                  clipBehavior: Clip
                                                                      .antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  shape: RoundedRectangleBorder(
                                                                      side: BorderSide(
                                                                          color: ColorConstant
                                                                              .gray200,
                                                                          width: getHorizontalSize(
                                                                              1.00)),
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              8.00))),
                                                                  child: Stack(
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Padding(padding: getPadding(left: 40, top: 16, right: 40, bottom: 16), child: CommonImageView(svgPath: ImageConstant.imgFacebook24X12, height: getVerticalSize(24.00), width: getHorizontalSize(12.00))))
                                                                      ])))),
                                                      InkWell(
                                                          onTap: () {
                                                            onTapStackgoogle();
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      56.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      168.00),
                                                              child: Card(
                                                                  clipBehavior: Clip
                                                                      .antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  shape: RoundedRectangleBorder(
                                                                      side: BorderSide(
                                                                          color: ColorConstant
                                                                              .gray200,
                                                                          width: getHorizontalSize(
                                                                              1.00)),
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              8.00))),
                                                                  child: Stack(
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Padding(padding: getPadding(left: 40, top: 16, right: 40, bottom: 16), child: CommonImageView(svgPath: ImageConstant.imgGoogle, height: getSize(23.00), width: getSize(23.00))))
                                                                      ]))))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                      onTap: () {
                                        onTapTxtDonthaveana();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 16,
                                              top: 45,
                                              right: 16,
                                              bottom: 20),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "lbl_don_t_have_an".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_account".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Lato',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_register_now".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .indigoA200,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ]),
                                              textAlign: TextAlign.left))))
                            ])))))));
  }

  void onTapBtnLogin() {
    if (_formKey.currentState!.validate()) {
      PostStoreAuthReq postStoreAuthReq = PostStoreAuthReq(
        email: controller.emailController.text,
        password: controller.passwordController.text,
      );
      controller.callCreateStoreAuth(
        postStoreAuthReq.toJson(),
        successCall: _onCreateStoreAuthSuccess,
        errCall: _onCreateStoreAuthError,
      );
    }
  }

  void _onCreateStoreAuthSuccess() {
    Get.find<PrefUtils>()
        .setCustomerId(controller.postStoreAuthResp.customer!.id!.toString());
    Get.find<PrefUtils>().setFirstName(
        controller.postStoreAuthResp.customer!.firstName!.toString());
    Get.find<PrefUtils>()
        .setEmail(controller.postStoreAuthResp.customer!.email!.toString());
    Get.find<PrefUtils>().setLastName(
        controller.postStoreAuthResp.customer!.lastName!.toString());
    controller.callFetchCustomerId(
      successCall: _onFetchCustomerIdSuccess,
      errCall: _onFetchCustomerIdError,
      customerId: Get.find<PrefUtils>().getCustomerId(),
    );
  }

  void _onFetchCustomerIdSuccess() {
    Get.find<PrefUtils>()
        .setCartId(controller.getCustomerIdResp.cart!.id!.toString());
    Get.offNamed(AppRoutes.mainLandingScreen);
  }

  void _onFetchCustomerIdError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void _onCreateStoreAuthError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  onTapStackfacebook() async {
    await FirebaseFacebookAuthHelper()
        .signInWithFacebook()
        .then((firebaseFacebookUser) {
      if (firebaseFacebookUser.user != null) {
        onSuccessFirebaseFacebookResponse(firebaseFacebookUser);
      } else {
        onErrorFirebaseFacebookResponse();
      }
    }).catchError((onError) {
      onErrorFirebaseFacebookResponse();
    });
  }

  onSuccessFirebaseFacebookResponse(UserCredential firebaseFacebookUser) {
    var _socialAuth = SocialAuth(
      email: firebaseFacebookUser.user?.email,
      firstName:
          firebaseFacebookUser.user!.displayName?.split(" ")[0].toString(),
      lastName:
          firebaseFacebookUser.user!.displayName?.split(" ")[1].toString(),
      password: Shopsie.pwd,
    );
    controller.callFetchEmail(
        successCall: () {
          _onEmailSuccess(_socialAuth);
        },
        errCall: _onEmailError,
        email: firebaseFacebookUser.user!.email);
  }

  onErrorFirebaseFacebookResponse() {
    Fluttertoast.showToast(
      msg: "Connection timeout!",
    );
  }

  onTapStackgoogle() async {
    await FirebaseGoogleAuthHelper()
        .signInWithGoogle()
        .then((firebaseGoogleUser) {
      if (firebaseGoogleUser.user != null) {
        onSuccessFirebaseGoogleResponse(firebaseGoogleUser);
      } else {
        onErrorFirebaseGoogleResponse();
      }
    }).catchError((onError) {
      onErrorFirebaseGoogleResponse();
    });
  }

  onSuccessFirebaseGoogleResponse(UserCredential firebaseGoogleUser) {
    var _socialAuth = SocialAuth(
      email: firebaseGoogleUser.user?.email,
      firstName: firebaseGoogleUser.user!.displayName?.split(" ")[0].toString(),
      lastName: firebaseGoogleUser.user!.displayName?.split(" ")[1].toString(),
      password: Shopsie.pwd,
    );
    controller.callFetchEmail(
        successCall: () {
          _onEmailSuccess(_socialAuth);
        },
        errCall: _onEmailError,
        email: firebaseGoogleUser.user!.email);
  }

  onErrorFirebaseGoogleResponse() {
    Fluttertoast.showToast(
      msg: "Connection timeout!",
    );
  }

  onTapTxtDonthaveana() {
    Get.offNamed(AppRoutes.registerScreen);
  }

  _onEmailSuccess(SocialAuth authData) {
    if (controller.getEmailResp.exists) {
      PostStoreAuthReq postStoreAuthReq = PostStoreAuthReq(
        email: authData.email,
        password: Shopsie.pwd,
      );
      controller.callCreateStoreAuth(
        postStoreAuthReq.toJson(),
        successCall: _onCreateStoreAuthSuccess,
        errCall: _onCreateStoreAuthError,
      );
    } else {
      PostCustomersReq postCustomersReq = PostCustomersReq(
        email: authData.email,
        firstName: authData.firstName,
        lastName: authData.lastName,
        password: Shopsie.pwd,
      );
      controller.callCreateCustomers(
        postCustomersReq.toJson(),
        successCall: _onCreateCustomersSuccess,
        errCall: _onCreateCustomersError,
      );
    }
  }

  _onEmailError() {}

  void _onCreateCustomersSuccess() {
    Get.find<PrefUtils>()
        .setCustomerId(controller.postCustomersResp.customer!.id!.toString());
    Get.find<PrefUtils>()
        .setEmail(controller.postCustomersResp.customer!.email!.toString());
    Get.find<PrefUtils>().setFirstName(
        controller.postCustomersResp.customer!.firstName!.toString());
    Get.find<PrefUtils>().setLastName(
        controller.postCustomersResp.customer!.lastName!.toString());
    PostCartsReq postCartsReq = PostCartsReq(
      regionId: Shopsie.region,
    );
    controller.callCreateCarts(
      postCartsReq.toJson(),
      successCall: _onCreateCartsSuccess,
      errCall: _onCreateCartsError,
    );
  }

  void _onCreateCartsSuccess() {
    Get.find<PrefUtils>()
        .setCartId(controller.postCartsResp.cart!.id!.toString());
    // Get.offNamed(AppRoutes.mainLandingScreen);
    Get.offAndToNamed(AppRoutes.mainLandingScreen);
  }

  void _onCreateCartsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }

  void _onCreateCustomersError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
