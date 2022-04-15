import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './theme_data.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (BuildContext context) => ThemeColorData(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeColorData>(context).themeColor,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor:
            Provider.of<ThemeColorData>(context).themeColor.primaryColor,
        title: const Text('Select Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
                activeColor: Provider.of<ThemeColorData>(context)
                    .themeColor
                    .primaryColor,
                inactiveThumbColor: Provider.of<ThemeColorData>(context)
                    .themeColor
                    .primaryColor,
                title: Provider.of<ThemeColorData>(context).isBlue
                    ? const Text('Blue Theme')
                    : const Text('Red Theme'),
                onChanged: (_) {
                  Provider.of<ThemeColorData>(context, listen: false)
                      .changeThemeColor();
                },
                value:
                    Provider.of<ThemeColorData>(context, listen: false).isBlue),
            const Card(
              child: ListTile(
                title: Text("What should I do"),
                trailing: Icon(Icons.check_box),
              ),
            ),
            const SizedBox(height: 8.0),
            RaisedButton(
              child: const Text("Add"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
