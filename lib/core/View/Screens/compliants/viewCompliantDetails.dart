import 'package:flutter/material.dart';
// import 'package:grouped_list/grouped_list.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:rowadapp/core/model/compliant.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Viewcompliantdetails extends StatelessWidget {
  late Compliant c;
  // Compliant(
  //     title: 'عدم توفر خدمة الإنترنت بشكل مستمر ',
  //     content:
  //         " السلام عليكم\n \n أود أن أقدم شكوى بخصوص مشكلة عدم توفر خدمة الإنترنت بشكل مستمر في غرفتنا منذ فترة، أصبحت الإشارة ضعيفة جداً، مما يؤثر سلباً على قدرتي على الدراسة عبر الإنترنت  على الرغم من محاولتي الاتصال بالدعم الفني عدة مرات، إلا أن المشكلة لم تُحل.\n شكرا لتفهمكم خالص التحية،\n الطالب: علي أنيس .",
  //     // responseStatuse: true,
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
                  colors: [Color(AppColor.secondaryColor), Colors.white],
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                    // margin: EdgeInsets.only(right: 10, left: 10),
                    child: ListTile(
                  title: Text(
                    ' ${c.title}',
                    style: const TextStyle(
                         fontFamily: 'almarai',
                            fontWeight: FontWeight.w500,
                      fontSize: 15),
                  ),
                  trailing: InkWell(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, '/allCompliants'),
                    child: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                    ),
                  ),
                )),
                const SizedBox(
                    // height: 20,
                    ),
                Expanded(
                    child: ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: ChatBubble(
                                  clipper: ChatBubbleClipper5(
                                      type: messages[index].isSentByme
                                          ? BubbleType.sendBubble
                                          : BubbleType.receiverBubble),
                                  alignment: messages[index].isSentByme
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  margin: EdgeInsets.only(top: 20),
                                  backGroundColor:
                                      const Color.fromARGB(255, 254, 254, 254),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.7,
                                    ),
                                    child: Align(
                                      alignment: messages[index].isSentByme
                                          ? Alignment.centerRight
                                          : Alignment.centerLeft,
                                      child: Text(
                                        "${messages[index].text}",
                                        style: TextStyle(
                                             fontFamily: 'vazir-light',
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Align(
                              //   alignment: messages[index].isSentByme
                              //       ? Alignment.centerRight
                              //       : Alignment.centerLeft,
                              //   child: BubbleSpecialOne(
                              //     text: messages[index].text!,
                              //     isSender: messages[index].isSentByme,
                              //     color: Colors.white,
                              //     textStyle: const TextStyle(
                              //       fontSize: 20,
                              //       color: Colors.black,
                              //       fontWeight: FontWeight.normal,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 50,
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
