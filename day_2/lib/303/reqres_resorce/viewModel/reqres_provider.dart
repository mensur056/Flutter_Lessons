import 'package:day_2/303/reqres_resorce/model/resource_model.dart';
import 'package:day_2/303/reqres_resorce/service/reqres_service.dart';
import 'package:flutter/cupertino.dart';

class ReqresProvider extends ChangeNotifier {
  final IReqresService reqresService;
  List<Data> resources = [];

  ReqresProvider(this.reqresService) {
    _fetch();
  }
  bool isLoading = false;
  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> _fetch() async {
    _changeLoading();
    resources = (await reqresService.fetchResourceItems())?.data ?? [];
    _changeLoading();
  }
}
