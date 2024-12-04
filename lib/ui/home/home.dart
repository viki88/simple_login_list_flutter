import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_riverpod_project/controllers/UserController.dart';

class HomeScreen extends StatelessWidget{

  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Pengguna')),
      backgroundColor: Colors.white,
      body: Obx((){
        if(userController.isLoading.value){
          return const Center(child: CircularProgressIndicator());
        }else{
          return SafeArea(
            child: RefreshIndicator(
                onRefresh: userController.refreshUsersData,
                child: ListView.builder(
                    itemCount: userController.userList.length,
                    itemBuilder: (context, index){
                      var user = userController.userList[index];
                      return ListTile(
                        title: Text(user.username),
                        subtitle: Text(user.email),
                      );
                    }
                ),

            ),
          );
        }
      })
    );
  }

}