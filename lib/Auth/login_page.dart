import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/Controller/login_controller.dart';

 class Homepage extends StatefulWidget {
   const Homepage({super.key});

   @override
   State<Homepage> createState() => _HomepageState();
 }

 class _HomepageState extends State<Homepage> {
   LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:
         SingleChildScrollView(
           child: Container(
            height: size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffc398f9), Color(0xff7b6bef)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: size.height * .1,
                    ),
                    Container(
                      height: size.height * .6,
                      width: size.width * .80,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffc398f9), Color(0xff7b6bef)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        boxShadow: [
                          new BoxShadow(
                            blurRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 165),
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              "Glad to have you again",
                              style: TextStyle(
                                  color: Color(0xff54328f),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: SizedBox(
                              height: size.height * .06,
                              child: TextField(
                                controller: controller.emailController.value,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  fillColor: Color(0xffceb9f9),
                                  filled: true,
                                  hintText: "Email",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .015,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: SizedBox(
                              height: size.height * .06,
                              child: TextField(
                                controller: controller.passwordController.value,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                  fillColor: Color(0xffceb9f9),
                                  filled: true,
                                  suffixIcon: Icon(Icons.visibility),
                                  hintText: "Password",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .015,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Obx(() {
                                return InkWell(
                                  onTap: (){
                                    controller.loginApi();
                                  },
                                  child: controller.loading.value?CircularProgressIndicator() : Container(
                                    height: size.height * 0.058,
                                    width: size.width * .96,
                                    decoration: BoxDecoration(
                                        color: Color(0xff442d82),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Align(
                                          alignment: Alignment.center,
                                              child: Text(
                                                "Log In",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600),
                                              ),)
                                      ),
                                    ),
                                );
                              }
                            ),
                            ),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 103),
                            child: Text("Forgot Password ?",
                                style: TextStyle(color: Color(0xff422f91))),
                          ),

                          SizedBox(height: size.height * .03),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(thickness: 2, color: Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Text(
                                    "Or Sign up with",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(thickness: 2, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                          Container(
                            height: size.width * .132,
                            width: size.width * .69,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(24))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage("image/googlelogo.jpg"),
                                ),Text("Sign Up With Gmail",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                                      fontSize: 15),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
                   ),
         ),
    );
  }
}