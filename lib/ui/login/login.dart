import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_riverpod_project/utils/Constants.dart';

class LoginScreenFormState extends State<LoginScreen>{

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Username"
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Username tidak boleh kosong";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                          hintText: "Password"
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Password tidak boleh kosong";
                        } else if(value.length < 6){
                          return "Password minimal 6 karakter";
                        }
                        return null;
                      },
                    ),
                    Padding(
                        padding: const EdgeInsets.all(24),
                      child: ElevatedButton(
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Login Sukses"))
                              );
                              Get.toNamed(Constant.home_page);
                            }
                          },
                          child: Text("Login")
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      )
    );
  }

}
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenFormState();
  }


}