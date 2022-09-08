import 'controller/profile_profile_info_controller.dart';
import 'models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/core/utils/validation_functions.dart';
import 'package:shopsie/widgets/custom_button.dart';
import 'package:shopsie/widgets/custom_text_form_field.dart';
import 'package:shopsie/data/models/me/post_me_req.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore_for_file: must_be_immutable
class ProfileProfileInfoPage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ProfileProfileInfoController controller =
  Get.put(ProfileProfileInfoController(ProfileProfileInfoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,

        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
          Padding(
              padding: getPadding(top: 3, right: 10),
              child: Text("First Name",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith())),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.firstNameOneController,
              margin: getMargin(top: 15),
              padding: TextFormFieldPadding.PaddingAll17,
              fontStyle: TextFormFieldFontStyle.LatoRegular13,
              validator: (value) {
                if (!isText(value)) {
                  return "Please enter valid first name";
                }
                return null;
              }
          ),
          Padding(
              padding: getPadding(top: 27, right: 10),
              child: Text("Last Name",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith(),

              )),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.lastNameOneController,
              margin: getMargin(top: 15),
              fontStyle: TextFormFieldFontStyle.LatoRegular13,
              validator: (value) {
                if (!isText(value)) {
                  return "Please enter valid last name";
                }
                return null;
              }
          ),
          Padding(
              padding: getPadding(top: 27, right: 10),
              child: Text("Email",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith())),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.emailOneController,
              margin: getMargin(top: 15),
              fontStyle: TextFormFieldFontStyle.LatoRegular13,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "Please enter valid email";
                }
                return null;
              }),
          CustomButton(
              width: 358,
              text: "lbl_save_edits".tr.toUpperCase(),
              margin: getMargin(top: 31),
              onTap: onTapBtnSaveedits)
        ])))
    );
  }

  void onTapBtnSaveedits() {
    PostMeReq postMeReq = PostMeReq(
      email: controller.emailOneController.text,
      firstName: controller.firstNameOneController.text,
      lastName: controller.lastNameOneController.text,
    );
    controller.callCreateMe(
      postMeReq.toJson(),
      successCall: _onCreateMeSuccess,
      errCall: _onCreateMeError,
    );
  }

  void _onCreateMeSuccess() {
    controller.profileProfileInfoModelObj.value.emailTxt.value =
        controller.postMeResp.customer!.email!.toString();
    controller.profileProfileInfoModelObj.value.firstNameTxt.value =
        controller.postMeResp.customer!.firstName!.toString();
    controller.profileProfileInfoModelObj.value.lastNameTxt.value =
        controller.postMeResp.customer!.lastName!.toString();
    Fluttertoast.showToast(
      msg: "Information changed successfully!",
    );
  }

  void _onCreateMeError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
