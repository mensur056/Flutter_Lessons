import 'package:day_2/303/reqres_resorce/service/reqres_service.dart';
import 'package:day_2/303/reqres_resorce/viewModel/reqres_provider.dart';
import 'package:day_2/product/global/theme_data.dart';
import 'package:day_2/product/project_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReqresProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<ThemeDataNotifer>().changeTheme();
          }),
          appBar: AppBar(
            title: context.watch<ReqresProvider>().isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : null,
          ),
          body: ListView.builder(
            itemCount: context.watch<ReqresProvider>().resources.length,
            itemBuilder: (BuildContext context, index) {
              return Card(
                  child: Text(context
                          .watch<ReqresProvider>()
                          .resources[index]
                          .pantoneValue ??
                      ''));
            },
          ),
        );
      },
    );
  }
}
