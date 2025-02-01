import 'package:flutter/widgets.dart';

extension gapSpace on num
{
  Widget get verSpace => SizedBox(width: this.toDouble(),);
  Widget get horSpace => SizedBox(height: this.toDouble(),);
}