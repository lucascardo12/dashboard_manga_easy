import 'package:dashboard_manga_easy/core/config/app_helpes.dart';
import 'package:dashboard_manga_easy/core/interfaces/controller.dart';
import 'package:dashboard_manga_easy/core/services/appwrite_client.dart';
import 'package:dashboard_manga_easy/core/services/global.dart';
import 'package:flutter/material.dart';
import 'package:sdk_manga_easy/sdk_manga_easy.dart';

class BannerController extends IController {
  final AppwriteClient app;
  final Global global;
  var listaBannerItens = <BannerModel>[];
  var status = ValueNotifier(StatusBuild.loading);

  BannerController({required this.app, required this.global});

  @override
  void onClose() {
    status.dispose();
  }

  @override
  void onInit(BuildContext context) {
    listaBanner();
  }

  void listaBanner() async {
    status.value = StatusBuild.loading;
    try {
      var response = await app.database.listDocuments(
        collectionId: BannerModel.collectionID,
      );
      listaBannerItens = response.documents.map((e) => BannerModel.fromJson(e.data)).toList();
      status.value = StatusBuild.done;
    } catch (e) {
      status.value = StatusBuild.erro;
      Helps.log(e);
    }
  }

  Future<void> deleteBanner(BannerModel reco, context) async {
    try {
      await app.database.deleteDocument(
        collectionId: BannerModel.collectionID,
        documentId: reco.id!,
      );
      AppHelps.confirmaDialog(
        title: 'Sucesso',
        content: 'Banner deletada com sucesso',
        context: context,
      );
    } catch (e) {
      AppHelps.confirmaDialog(
        title: 'Erro',
        content: e.toString(),
        context: context,
      );
    }
  }
}
