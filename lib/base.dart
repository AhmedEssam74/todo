import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

abstract class BaseConnector {
  void showLoading(String message);

  void showSuccess();

  void showError(String message);
}

class BaseViewModel<T extends BaseConnector> extends ChangeNotifier {
  T? connector;
}

abstract class BaseView<T extends StatefulWidget, VM extends BaseViewModel>
    extends State<T> implements BaseConnector {
  VM? viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = initViewModel();
  }

  VM initViewModel();

  @override
  void showError(String message) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'something_went_wrong'.tr(),
        ),
        content: Text(
          message,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "ok".tr(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void showLoading(String message) {
    showDialog(
      context: context,
      builder: (_) => const AlertDialog(
        backgroundColor: Colors.transparent,
        title: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  void showSuccess() {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'something_went_wrong'.tr(),
        ),
        content: const Text(
          "Success",
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "ok".tr(),
            ),
          ),
        ],
      ),
    );
  }
}
