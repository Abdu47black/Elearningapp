import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget inAppBar(String title) {
  return AppBar(
    backgroundColor: MColors.btnsecondary,
    centerTitle: true,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: const Icon(Icons.arrow_back_ios_new),
    ),
    title: Text(
      title,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
    ),
  );
}
