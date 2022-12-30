import 'package:flutter/material.dart';

class CommonProps {
  static final CommonProps _commonProps = CommonProps._internal();
  BuildContext? _buildContext;
  factory CommonProps() {
    return _commonProps;
  }
  void updateContext(BuildContext context) {
    this._buildContext = context;
  }

  double getSize() {
    return _buildContext?.size?.width ?? 0;
  }

  CommonProps._internal();
}
