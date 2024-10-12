import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rowadapp/core/DB/data.dart';
import 'package:rowadapp/core/ViewModel/EvaluationVM.dart';
import 'package:rowadapp/global/components/Skeletonizer.dart';
import 'package:rowadapp/global/constraints/app_color.dart';
class CustomMonthlyBehaviorScreen extends StatelessWidget {
  CustomMonthlyBehaviorScreen({super.key});

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
      return 
      
   
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child:
        
                 Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                             Skeletonizer(
        enabled: evaluationvm.isLoading,
        child: Container(
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
                            color: Color(AppColor.primaryColor),
                          ),
                        ),
                        const Divider(
                          color: Color(AppColor.primaryColor),
                          thickness: 2,
                        ),
                        
                      
                        _buildProgramSection(
                         programs[0],
                          evaluationvm.behavior,
                          index,subjectnamebehavior
                          ),
                        
                      
                        _buildProgramSection(
                         programs[1],
                          evaluationvm.alquran,
                          index,
                         subjectnamealquran
                        ),

                        
                        _buildProgramSection(
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

 
  Widget _buildProgramSection(String programName, List<double?>? programValues, int index, List<String> subjects) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          programName,
          style:  TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(AppColor.colorBlack),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: List.generate(subjects.length, (i) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subjects[i], 
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(AppColor.colorBlack),
                    ),
                  ),
                  Text(
                   '${programValues?[i + index * subjects.length]?.toStringAsFixed(2) }' ,
                     
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(AppColor.primaryColor),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
