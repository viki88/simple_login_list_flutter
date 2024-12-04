import 'package:get/get.dart';
import 'package:simple_riverpod_project/data/ApiService.dart';
import 'package:simple_riverpod_project/data/models/User.dart';

class UserController extends GetxController{
  var isLoading = true.obs;
  var userList = <User>[].obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<void> fetchData() async{
    try{
      isLoading(true);
      var user = await ApiService().fetchUsers();
      userList.value = user;
    }finally{
      isLoading(false);
    }
  }

  Future<void> refreshUsersData() async{
    await fetchData();
  }
}