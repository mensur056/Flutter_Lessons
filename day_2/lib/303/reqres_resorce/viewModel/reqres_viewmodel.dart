import 'package:day_2/303/reqres_resorce/model/resource_model.dart';
import 'package:day_2/303/reqres_resorce/service/reqres_service.dart';
import 'package:day_2/303/reqres_resorce/view/reqres_view.dart';
import 'package:day_2/product/project_dio.dart';
import 'package:flutter/material.dart';

abstract class ReqresViewModel extends State<ReqresView> with ProjectDioMixin {
  late final IReqresService reqresService;
  List<Data> resources = [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    resources = (await reqresService.fetchResourceItems())?.data ?? [];
  }
}
