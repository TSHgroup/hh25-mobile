import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:odpalgadke/common/router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void showCustomFlushBar({
  required BuildContext context,
  required String message,
  required SnackBarType type,
}) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: type.backgroundColor,
    icon: Icon(
      type.icon,
      color: type.iconColor,
    ),
    duration: Duration(seconds: 3),
    borderRadius: BorderRadius.circular(12),
    margin: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 8.sp),
    padding: EdgeInsets.all(16.sp),
  ).show(context);
}

enum SnackBarType {
  error,
  success,
  info,
  warning,
}

void error(String description) {
  showCustomFlushBar(
    context: navigatorKey.currentState!.context,
    message: description,
    type: SnackBarType.error,
  );
}

void success(String description) {
  showCustomFlushBar(
    context: navigatorKey.currentState!.context,
    message: description,
    type: SnackBarType.success,
  );
}

void info(String description) {
  showCustomFlushBar(
    context: navigatorKey.currentState!.context,
    message: description,
    type: SnackBarType.info,
  );
}

void warning(String description) {
  showCustomFlushBar(
    context: navigatorKey.currentState!.context,
    message: description,
    type: SnackBarType.warning,
  );
}

extension SnackBarTypeExtension on SnackBarType {
  Color get backgroundColor {
    switch (this) {
      case SnackBarType.error:
        return Colors.red;
      case SnackBarType.success:
        return Colors.green;
      case SnackBarType.info:
        return Colors.blue;
      case SnackBarType.warning:
        return Colors.orange;
    }
  }

  IconData get icon {
    switch (this) {
      case SnackBarType.error:
        return Icons.error;
      case SnackBarType.success:
        return Icons.check_circle;
      case SnackBarType.info:
        return Icons.info;
      case SnackBarType.warning:
        return Icons.warning;
    }
  }

  Color get iconColor {
    switch (this) {
      case SnackBarType.error:
        return Colors.white;
      case SnackBarType.success:
        return Colors.white;
      case SnackBarType.info:
        return Colors.white;
      case SnackBarType.warning:
        return Colors.white;
    }
  }

  Color get textColor {
    switch (this) {
      case SnackBarType.error:
        return Colors.white;
      case SnackBarType.success:
        return Colors.black;
      case SnackBarType.info:
        return Colors.white;
      case SnackBarType.warning:
        return Colors.black;
    }
  }
}
