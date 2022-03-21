import 'package:dashboard_manga_easy/models/users.dart';
import 'package:dashboard_manga_easy/services/appwrite.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  List lista = [].obs;
  final app = Get.find<Appwrite>();
  var pesquisa = ''.obs;
  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    carregaUsers();
    super.onInit();
  }

  carregaUsers() async {
    lista.clear();
    var retorno = await app.users.list(limit: 100);
    var list = retorno.users;
    for (var item in list) {
      lista.add(Users.fromJson(item.toMap()));
    }
  }

  pesquisaUser() async {
    var retorno = await app.users.list(search: pesquisa.value);
    var list = retorno.users;
    lista.clear();
    for (var item in list) {
      lista.add(Users.fromJson(item.toMap()));
    }
  }
}
