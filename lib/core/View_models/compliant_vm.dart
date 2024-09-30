import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/core/Models/compliant.dart';

class CompliantVm with ChangeNotifier {
  List<Compliant> Compliants = [
    Compliant(title: ' تسرب المياه من السقف', sendDate: '2024 / 1 / 10'),
    Compliant(
        title: 'عدم توفر خدمة الإنترنت بشكل مستمر ', sendDate: '2024 / 1 / 10'),
    Compliant(title: ' تسرب المياه من السقف', sendDate: '2024 / 1 / 10'),
    Compliant(
        title: 'عدم توفر خدمة الإنترنت بشكل مستمر ', sendDate: '2024 / 1 / 10'),
    Compliant(title: ' تسرب المياه من السقف', sendDate: '2024 / 1 / 10'),
    Compliant(
        title: 'عدم توفر خدمة الإنترنت بشكل مستمر ', sendDate: '2024 / 1 / 10'),
  ];

  // getData() async{
  // Dio dio=Dio();
  // Response res=await dio.get(ApiUrls.allProducts);
  // List<dynamic>allCompliant=res.data["products"];
  // Compliants=allCompliant.map((element)=>Compliant.fromJson(element)).toList();
  // notifyListeners();
  // }

  // addCompliant(Compliant c){

  // }
}
