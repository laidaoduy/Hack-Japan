import 'package:hack_japan/cores/constants/AppConstants.dart';

extension StringX on String {
  String toAfterSpace() {
    return this + AppConstants.spaceString;
  }

  String toThreeDots() {
    return this + AppConstants.threeDots;
  }

  String toColon() {
    return this + AppConstants.colon.toAfterSpace();
  }
}
