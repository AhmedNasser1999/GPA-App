import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpa/Screens/Components/courceItem.dart';
part 'gpa_state.dart';

class GpaAppCubit extends Cubit<GpaAppState> {
  GpaAppCubit() : super(GpaInitial());
  static GpaAppCubit get(context) => BlocProvider.of(context);
  String courseNamevalue = '';
  String gradeValue = '';
  String unitesValue = '';
  List<Widget> gpaItems = [const CourseItem()];

  //App Functions-------------------------------
  changeCoursename(value) {
    courseNamevalue = value;
    emit(ChangeCourseNameValue());
  }

  changeGradeValue(value) {
    gradeValue = value;
    emit(ChangeGradeValue());
  }

  changeUintesValue(value) {
    unitesValue = value;
    emit(ChangeUintesValue());
  }

  void addItem() {
    gpaItems.add(const CourseItem());
    emit(GpaAddItem());
  }

  void removeItem() {
    if (gpaItems.length == 1) {
      return;
    } else {
      gpaItems.removeLast();
    }
    emit(GpaRemoveItem());
  }
}
