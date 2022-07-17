import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letzcqre/constants.dart';
class PrimaryButton extends StatelessWidget {
  Function() onTap;
  bool loading;
  String text;
  PrimaryButton({Key? key,required this.onTap,required this.loading,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(vertical: 17),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.3),
                offset: const Offset(0, 0),
                blurRadius: 6)
          ],
        ),
        child: Center(
          child: loading
              ? Image.asset('assets/loading.gif')
              : Text(
            text,
            style: primaryWhiteText,
          ),
        ),
      ),
    );
  }
}
