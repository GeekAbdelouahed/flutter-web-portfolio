import 'package:flutter/material.dart';

class SectionModel extends ValueNotifier<int> {
  static final SectionModel _singleton = SectionModel._internal();

  SectionModel._internal() : super(0);

  static SectionModel get instance => _singleton;
}
