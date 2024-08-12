import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms/repositries/authenication_repo.dart';

class AuthenticationController extends GetxController {
  AuthRepo authRepo;
  File? uploadedProfileImage;
  bool isChecked = false;
  final isLoading = false.obs;
  final isObsCure = true.obs;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isEmailSelected = true;
  AuthenticationController({
    required this.authRepo,
  });

  loginTapped() async {}

  final regloading = false.obs;
  // final Rx<SellerShopDetailsFeedBackModel?> getshopdetailfeedback =
  //     Rx<SellerShopDetailsFeedBackModel?>(null);
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final regemailController = TextEditingController();
  final streetAddress = TextEditingController();
  final phoneController = TextEditingController();
  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
  final TextEditingController regpasswordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final RxString statusmessage = ''.obs;
}
