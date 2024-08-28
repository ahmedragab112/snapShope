import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

class ConactivityController {
  ConactivityController._();
  static ConactivityController instance = ConactivityController._();
  ValueNotifier<bool> checkInterNet = ValueNotifier<bool>(true);
  Future<void> init() async {
    final netWorkResult = await Connectivity().checkConnectivity();
    isInterNetConnected(netWorkResult);
    Connectivity().onConnectivityChanged.listen(isInterNetConnected);
  }

  bool isInterNetConnected(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      checkInterNet.value = true;
      return true;
    } else if (result.contains(ConnectivityResult.none)) {
      checkInterNet.value = false;
      return false;
    }
    checkInterNet.value = false;
    return false;
  }
}
