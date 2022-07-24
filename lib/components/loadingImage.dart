import 'package:flutter/material.dart';
import 'package:letzcqre/constants.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/loading.gif',color: primaryColor,);
  }
}
