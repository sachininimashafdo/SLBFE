// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:slbfe/widgets/progress_bar.dart';


class LoadingDialog extends StatelessWidget {
  final String message;
  //constructor of the class
  const LoadingDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
          const SizedBox(height: 10,),
          Text(message + ", Please wait..")
        ],
      ),
    );
  }
}
