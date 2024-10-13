import 'package:flutter/material.dart';

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:rowadapp/core/model/compliant.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

import '../../../../global/theme/AppColor/appColor_LightMode.dart';

class Viewcompliantdetails extends StatelessWidget {
  late Compliant c;
  //  = Compliant(
  //     title: 'عدم توفر خدمة الإنترنت بشكل مستمر ',
  //     content:
  //         " السلام عليكم\n \n أود أن أقدم شكوى بخصوص مشكلة عدم توفر خدمة الإنترنت بشكل مستمر في غرفتنا منذ فترة، أصبحت الإشارة ضعيفة جداً، مما يؤثر سلباً على قدرتي على الدراسة عبر الإنترنت  على الرغم من محاولتي الاتصال بالدعم الفني عدة مرات، إلا أن المشكلة لم تُحل.\n شكرا لتفهمكم خالص التحية،\n الطالب: علي أنيس .",
  //     responseStatuse: true,
  //     response:
  //         'شكرًا لتواصلكم معنا\n . نعتذر عن مشكلة انقطاع الإنترنت ونؤكد أن فريقنا يعمل على حلها بأسرع وقت. سنبقيكم على اطلاع بالتحديثات. صبركم.\n تحياتنا، إدارة مركز رواد المستقبل .  ');

  late List<Message> messages = [];
  Viewcompliantdetails({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    messages.add(Message(text: c.content, isSentByme: true));
    if (c.response != null) {
      messages.add(Message(text: c.response, isSentByme: false));
    }

    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(Appcolorlightmode.backgroundTopColor), Color(Appcolorlightmode.backgroundBottomColor)],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: ()=> Navigator.pushReplacementNamed(
                              context, '/allCompliants'),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              Align(
                                alignment: messages[index].isSentByme
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: BubbleSpecialOne(
                                  text: messages[index].text!,
                                  isSender: messages[index].isSentByme,
                                  color: Colors.white,
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 100,
                              )
                            ],
                          );
                        }))
              ],
            )));
  }
}

class Message {
  String? text;
  bool isSentByme;
  DateTime date = DateTime.now();

  Message({this.text, required this.isSentByme});
}