import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/View/Screens/First_Term_Evaluation.dart';
import 'package:rowadapp/core/View/Screens/Second_Term_Evaluation.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/core/ViewModel/NotificationViewModel.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

class Evaluationscreen extends StatelessWidget {
   Evaluationscreen({super.key});
  Getstorage_helper getstorage_helper = Getstorage_helper.instance;
  

  @override
  Widget build(BuildContext context) {
    
    String token = getstorage_helper.readFrmFile("token");
  
    print(token);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<Evaluationvm>(context, listen: false)
          .fetchEvaluation( token);
    });
    return FirstTermEvaluation();
  }
}
