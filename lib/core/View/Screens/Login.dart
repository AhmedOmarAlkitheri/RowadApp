import 'package:flutter/material.dart';
import 'package:rowadapp/core/View/Widgets/ContainerButton.dart';
import 'package:rowadapp/core/View/Widgets/Space.dart';
import 'package:rowadapp/core/View/Widgets/WidgetTextFormField.dart';
import 'package:rowadapp/core/ViewModel/Registration_VM.dart';
import 'package:rowadapp/core/ViewModel/UserVM.dart';
import 'package:rowadapp/core/model/User.dart';
import 'package:rowadapp/global/components/Validation.dart';
import 'package:rowadapp/global/constraints/app_color.dart';

class Login extends StatelessWidget {
  Login({super.key});

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UsersVm uvm = UsersVm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //   color: Colors.black,
          gradient: LinearGradient(
            colors: [Color(AppColor.secondaryColor), Colors.white],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomStart,
          ),
        ),
        child: Form(
          key: formKey,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -50,
                top: 17.5,
                child: Container(
                  width: 172,
                  height: 185,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(AppColor.secondarythereColor)),
                ),
              ),
              Positioned(
                  // right: -55,
                  top: 55,
                  right: 5,
                  child: Container(
                    width: 110,
                    height: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.fill)),
                  )),
              const Positioned(
                left: 40,
                top: 80,
                child: SizedBox(
                  height: 50,
                  child: Text(
                    "تسجيل دخول",
                    style: TextStyle(
                        color: Color(AppColor.colorBlack),
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
              ),
              Positioned(
                top: 170,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 180,
                  decoration: const BoxDecoration(
                      color: Color(AppColor.secondaryTwoColor),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Space(
                          height: 40,
                        ),
                        const Text(
                          "أسم المستخدم",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Space(
                          height: 10,
                        ),
                        Widgettextformflied(
                          // validator: (p0) =>
                          //     InputValidator.validateusername(p0),
                          controller: usernameController,
                          onChanged: (value) {
                            usernameController.text = value;
                          },
                          hintText: "أسم المستخدم",
                          labelText: "أسم المستخدم",
                          prefixIcon: const Icon(Icons.account_circle_rounded),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                        const Space(
                          height: 30,
                        ),
                        const Text(
                          "كلمة المرور",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Space(
                          height: 10,
                        ),
                        Widgettextformflied(
                          controller: passwordController,
                          hintText: "كلمة المرور",
                          labelText: "كلمة المرور",
                          prefixIcon: const Icon(Icons.password_rounded),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) {
                            passwordController.text = value;
                          },
                        ),
                        const Space(
                          height: 50,
                        ),
                        Center(
                            child: Containerbutton(
                          name: "تسجيل دخول",
                          allBorderRadius: 15,
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              //   RegistrationVm().postRegistration();
                              showModalBottomSheet(
                                  context: context,
                                  builder: (ctx) {
                                    return SizedBox(
                                      height: 200,
                                      child: BottomSheet(
                                          dragHandleSize: Size.infinite,
                                          onClosing: () {},
                                          builder: (ctx) {
                                            return const Center(
                                                child:
                                                    CircularProgressIndicator());
                                          }),
                                    );
                                  });
                              Map<String, String>? loginInfos;

                              User.loginInfo?["username"] =
                                  usernameController.text;
                              User.loginInfo?["password"] =
                                  passwordController.text;

                              loginInfos = User.loginInfo;
                              // User u = User(
                              //     username: usernameController.text,
                              //     password: passwordController.text);
                              //     print("${passwordController.text}");
                              //  User? user =
                              await uvm.login(loginInfos).then((x) {
                                if (x == "Success") {
                                  Navigator.pushNamed(context, "/Homescreen");
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return AlertDialog(
                                          title: Text("$x"),
                                        );
                                      });
                                }
                              });
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
