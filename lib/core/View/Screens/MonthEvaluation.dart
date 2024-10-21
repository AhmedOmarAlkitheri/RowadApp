import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/View/Widgets/buildProgramSection.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../global/theme/AppColor/appColor_LightMode.dart';
class MonthEvaluation extends StatelessWidget {
  MonthEvaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<Evaluationvm>(
        builder: (context, evaluationvm, child) {
          return 
          
          
          ListView.builder(
            itemCount: evaluationvm.month?.length ?? 0,
            itemBuilder: (ctx, index) {
              
               if (evaluationvm.errorMessage != null) {
        return Center(child: Text(evaluationvm.errorMessage!));
      }
      if (!evaluationvm.isLoading && evaluationvm.month!.isEmpty) {
  return Center(child: Text('لا توجد بيانات متاحة.'));
}
      return 
                                 Skeletonizer(
        enabled: evaluationvm.isLoading,
        child:
   
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child:
     
                 Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
      Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     
                        Text(
                          monthsname[index], 
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(Appcolorlightmode.darkGreen),
                          ),
                        ),
                        const Divider(
                          color: Color(Appcolorlightmode.lightGreen),
                          thickness: 1,
                        ),
                        
                      
                        buildProgramSection(
                         programs[0],
                          evaluationvm.behavior,
                          index,subjectnamebehavior
                          ),
                        
                      
                        buildProgramSection(
                         programs[1],
                          evaluationvm.alquran,
                          index,
                         subjectnamealquran
                        ),

                        
                        buildProgramSection(
                         programs[2],
                          evaluationvm.activities,
                          index,subjectnameactivities
                         
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              );
            },
          );
        },
      ),
    );
  }

 
}
