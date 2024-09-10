import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ComponentUtil {
  static void toastInfo(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.cyan,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      webShowClose: true,
      timeInSecForIosWeb: 3,
    );
  }

  static void toastSuccess(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.green[400],
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      webShowClose: true,
      timeInSecForIosWeb: 3,
    );
  }

  static void toastWarning(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.amber[400],
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      webShowClose: true,
      timeInSecForIosWeb: 3,
    );
  }

  static void toastFailed(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red[400],
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      webShowClose: true,
      timeInSecForIosWeb: 3,
    );
  }
}
