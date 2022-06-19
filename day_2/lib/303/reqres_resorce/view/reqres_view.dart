import 'package:day_2/303/reqres_resorce/viewModel/reqres_viewmodel.dart';
import 'package:flutter/material.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends ReqresViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: resources.length,
        itemBuilder: (BuildContext context, index) {
          return Text(resources[index].name ?? '');
        },
      ),
    );
  }
}
