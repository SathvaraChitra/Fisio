import 'package:fb_signin_demo_getx/get/controllers.dart';
import 'package:fb_signin_demo_getx/get/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenLogin extends GetView<ControllerLogin> {
  static String pageId = '/screenLogin';
  final controllerr = Get.put(ControllerLogin());

  ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_image.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: (){
                    Get.toNamed(ScreenSignUp.pageId);
                  },
                  child: const Text('Sign up',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                ),
              ),
              SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  child: Image.asset(
                    'assets/images/welcome.png',
                  )),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                'Login with your credential',
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(hintText: 'Email',
                    border: InputBorder.none,),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(border: InputBorder.none,
                    hintText:'Password',suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                width: size.width,
                height: size.height * 0.125,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(height: size.height * 0.01,),
              const Text('Forgot Password',
                style: TextStyle(fontSize: 16,color: Colors.white70,) ,),
              SizedBox(height: size.height * 0.07,),
              const Text('Or Sign In with ',
                  style: TextStyle(fontSize: 16,color: Colors.white70,)
              ),
              SizedBox(height: size.height * 0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      //color: Colors.indigo,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Image.asset('assets/images/ic_google.png',fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      // color: Colors.indigo,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset('assets/images/ic_apple.png',fit: BoxFit.cover,),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Image.asset('assets/images/ic_facebook.png',fit: BoxFit.cover),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
