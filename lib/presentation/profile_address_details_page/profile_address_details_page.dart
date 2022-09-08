import '../profile_address_details_page/widgets/listhomeaddress_item_widget.dart';
import 'controller/profile_address_details_controller.dart';
import 'models/listhomeaddress_item_model.dart';
import 'models/profile_address_details_model.dart';
import 'package:flutter/material.dart';
import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/core/utils/validation_functions.dart';
import 'package:shopsie/widgets/custom_button.dart';
import 'package:shopsie/widgets/custom_text_form_field.dart';
import 'package:shopsie/core/constants/shopsie.dart';
import 'models/listhomeaddress_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopsie/data/models/addresses/post_addresses_req.dart';
import 'models/listhomeaddress_item_model.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatelessWidget {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ProfileAddressDetailsController controller = Get.put(
      ProfileAddressDetailsController(ProfileAddressDetailsModel().obs));

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
              child: Text("lbl_address_1".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith(),
              )),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.addressOneController,
              hintText: "lbl_enter_address".tr,
              margin: getMargin(top: 7),
              validator: (value) {
                if (!isText(value)) {
                  return "Please enter address one";
                }
                return null;
              }),
          Padding(
              padding: getPadding(top: 27, right: 10),
              child: Text("lbl_address_2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith())),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.addressTwoController,
              hintText: "lbl_enter_address".tr,
              margin: getMargin(top: 7),
              ),
          Padding(
              padding: getPadding(top: 27, right: 10),
              child: Text("lbl_city".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith())),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.cityOneController,
              hintText: "lbl_enter_your_city".tr,
              margin: getMargin(top: 7),
              validator: (value) {
                if (!isText(value)) {
                  return "Please enter valid city";
                }
                return null;
              }),
          Padding(
              padding: getPadding(top: 27, right: 10),
              child: Text("lbl_postal_code".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith())),
          CustomTextFormField(
              width: 358,

              focusNode: FocusNode(),
              controller: controller.postalcodeOneController,
              hintText: "msg_enter_postal_co".tr,
              margin: getMargin(top: 7)),
          Padding(
              padding: getPadding(top: 27, right: 10),
              child: Text("lbl_phone_number".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith())),
          CustomTextFormField(
              width: 358,
              focusNode: FocusNode(),
              controller: controller.phoneNoController,
              hintText: "msg_enter_phone_num".tr,
              margin: getMargin(top: 7),
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "Please enter valid phone number";
                }
                return null;
              }),
          CustomButton(
              width: 358,
              text: "msg_add_another_add".tr.toUpperCase(),
              margin: getMargin(top: 24),
              variant: ButtonVariant.OutlineIndigoA200,
              padding: ButtonPadding.PaddingAll13,
              fontStyle: ButtonFontStyle.LatoSemiBold13IndigoA200,
              onTap: onTapBtnAddanotheradd),
          Padding(
              padding: getPadding(top: 35, right: 10),
              child: Text("msg_current_address".tr.toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoSemiBold13.copyWith())),
          Padding(
              padding: getPadding(top: 23),
              child: Obx(() => ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.profileAddressDetailsModelObj.value
                      .listhomeaddressItemList.length,
                  itemBuilder: (context, index) {
                    ListhomeaddressItemModel model = controller
                        .profileAddressDetailsModelObj
                        .value
                        .listhomeaddressItemList[index];
                    return ListhomeaddressItemWidget(model, onTapImgTrash: () {
                      controller.callDeleteAddressId(
                          successCall: _onDeleteAddressIdSuccess,
                          errCall: _onDeleteAddressIdError,
                          addressId: controller.profileAddressDetailsModelObj
                              .value.listhomeaddressItemList[index].idTxt);
                    });
                  })))
        ]))));
  }

  onTapImgTrash(id) {
    controller.callDeleteAddressId(
        successCall: _onDeleteAddressIdSuccess,
        errCall: _onDeleteAddressIdError,
        addressId: id);
  }

  void _onDeleteAddressIdSuccess() {
    List<ListhomeaddressItemModel> listhomeaddressItemModelList = [];
    Get.delete<ListhomeaddressItemModel>();
    Get.put(ListhomeaddressItemModel());
    if (controller.deleteAddressIdResp!.customer!.shippingAddresses! != null &&
        controller
            .deleteAddressIdResp!.customer!.shippingAddresses!.isNotEmpty) {
      for (var element
          in controller.deleteAddressIdResp!.customer!.shippingAddresses!) {
        var listhomeaddressItemModel = ListhomeaddressItemModel();
        listhomeaddressItemModel.addAddressOneTxt.value =
            element.address1!.toString();
        listhomeaddressItemModel.addAddressTwoTxt.value =
            element.address2!.toString();
        listhomeaddressItemModel.addCityTxt.value = element.city!.toString();
        listhomeaddressItemModel.addPostalcodeTxt.value =
            element.postalCode!.toString();
        listhomeaddressItemModel.idTxt.value = element.id!.toString();

        listhomeaddressItemModelList.add(listhomeaddressItemModel);
      }
    }
    controller.profileAddressDetailsModelObj.value.listhomeaddressItemList
        .value = listhomeaddressItemModelList;
    Fluttertoast.showToast(msg: "Address removed!");
  }

  void _onDeleteAddressIdError() {
    Fluttertoast.showToast(msg: "Something went wrong!");
  }

  void onTapBtnAddanotheradd() {
    if (_formKey.currentState!.validate()) {
      PostAddressesReq postAddressesReq = PostAddressesReq(
        address: Address(
          address1: controller.addressOneController.text,
          address2: controller.addressTwoController.text,
          city: controller.cityOneController.text,
          postalCode: controller.postalcodeOneController.text,
          firstName: Get.find<PrefUtils>().getFirstName(),
          lastName: Get.find<PrefUtils>().getLastName(),
          countryCode: Shopsie.country,
        ),
      );
      controller.callCreateAddresses(
        postAddressesReq.toJson(),
        successCall: _onCreateAddressesSuccess,
        errCall: _onCreateAddressesError,
      );
    }
  }

  void _onCreateAddressesSuccess() {
    List<ListhomeaddressItemModel> listhomeaddressItemModelList = [];
    if (controller.postAddressesResp!.customer!.shippingAddresses! != null &&
        controller.postAddressesResp!.customer!.shippingAddresses!.isNotEmpty) {
      for (var element
          in controller.postAddressesResp!.customer!.shippingAddresses!) {
        var listhomeaddressItemModel = ListhomeaddressItemModel();
        listhomeaddressItemModel.addAddressOneTxt.value =
            element.address1!.toString();
        listhomeaddressItemModel.addAddressTwoTxt.value =
            element.address2!.toString();
        listhomeaddressItemModel.addCityTxt.value = element.city!.toString();
        listhomeaddressItemModel.addPostalcodeTxt.value =
            element.postalCode!.toString();
        listhomeaddressItemModelList.add(listhomeaddressItemModel);
      }
    }
    controller.profileAddressDetailsModelObj.value.listhomeaddressItemList
        .value = listhomeaddressItemModelList;
    Fluttertoast.showToast(
      msg: "Shipping address added!",
    );
  }

  void _onCreateAddressesError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
