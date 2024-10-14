import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/model/Evaluation.dart';
import 'package:rowadapp/core/model/Month.dart';
import 'package:rowadapp/core/model/NotificationModel%20.dart';
import 'package:rowadapp/core/model/Program.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

import 'package:rowadapp/helpers/HttpHelper.dart';

class Evaluationvm extends ChangeNotifier {
  // ApiResponse? apiResponse;
  // List<Notification_M>? filteredNotifications;
  List<Moths>? month;
  List<Program>? programs;
  List<double?>? alquran;
  List<double?>? behavior;
  List<double?>? activities;
  List<double> sumvalues = [];
  bool isLoading = false;
  bool termname = false;
  String currentTerm = "الفصل الاول";
  double yearResultTotal = 0;

  String? errorMessage;
  Httphelper httphelper = Httphelper.instance;
  Getstorage_helper getstorageHelper = Getstorage_helper.instance;

 // String get currentTerm => _currentTerm;

  void updateTerm(String newTerm) {
  currentTerm = newTerm;
    termname = newTerm == "الفصل الاول" ? false : true;
    notifyListeners();
  }

  Future<void> fetchEvaluation(String token) async {
    isLoading = true;
    notifyListeners();

    try {
      Options? headers = Options();
      headers.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

      print("$token kl; oik;");

      FormData fromdata = FormData.fromMap({'token': token});

      var response = await httphelper.getRequest(
          url: 'https://dummyjson.com/c/6d47-b49a-4c67-96f2',
          // data: fromdata,
          options: headers);

      if (response.statusCode == 200) {
      //  print("ahmed");
        print(response.data['data']);
        Evaluation eval = Evaluation.fromJson(response.data['data']);
     //   print(response.data['data']);
         month = eval.moths;
      //   print("ddffggf ${eval.moths?[0].madoubleainingPrayer} ahmed");
      //      print("ddffggf ${eval.moths?[0].madoubleainingTheVoluntaryPrayers} ahmeds");
        divideMonthIntoPrograms(month);
        programs ??= [];

        programs?.add(eval.computer!);
        programs?.add(eval.english!);
        programs?.add(eval.road!);
        programs?.add(eval.yearresult!);
        sumValues(eval);
        yearResultTotal =
            (eval.yearresult?.sem1 ?? 0) + (eval.yearresult?.sem2 ?? 0);
            insertData(yearResultTotal ) ;
      } else {
        errorMessage = response.data['message'];
      }
    } on DioException catch (x) {
      errorMessage = Dioexception.handleException(x);
    } catch (error) {
      errorMessage = 'حدث خطأ: $error';
      print(error);
    }

    isLoading = false;
    notifyListeners();
  }

  void divideMonthIntoPrograms(List<Moths>? months) {
    behavior ??= [];
    alquran ??= [];
    activities ??= [];
    for (var month in months!) {
      List<double?> values = [
        month.madoubleainingPrayer,
        month.madoubleainingTheVoluntaryPrayers,
        month.weeklyScientificSession,
        month.goodDealingWithManagement,
        month.cleanlinessAndOrder,
        month.appearancesAndBehaviors,
        month.alquranAlkarim,
        month.accompanyingCurriculum,
        month.doubleeractionInActivities,
        month.excellenceAndCreativity,
        month.initiativeAndPositivity,
      ];

      behavior?.addAll(values.sublist(0, 6));
      alquran?.addAll(values.sublist(6, 8));
      activities?.addAll(values.sublist(8, 11));
    }
    print(behavior);
    print(alquran);
    print(activities);
  }

  sumValues(Evaluation eval) {
    sumvalues.add(
        behavior!.fold(0, (previous, current) => previous! + (current ?? 0)));
    sumvalues.add(
        alquran!.fold(0, (previous, current) => previous! + (current ?? 0)));
    sumvalues.add(
        activities!.fold(0, (previous, current) => previous! + (current ?? 0)));

    sumvalues.add((eval.computer?.sem1 ?? 0) + (eval.computer?.sem2 ?? 0));

    sumvalues.add((eval.english?.sem1 ?? 0) + (eval.english?.sem2 ?? 0));

    sumvalues.add((eval.road?.sem1 ?? 0) + (eval.road?.sem2 ?? 0));
  }
  
insertData(double yearResultTotal) {
  Getstorage_helper getstorageHelper = Getstorage_helper.instance;

  getstorageHelper.writeToFile(key: "yearResultTotal", value: yearResultTotal);
 
    


}
}
