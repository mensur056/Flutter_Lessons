import 'package:day_2/202/cache/shared_manager.dart';
import 'package:flutter/material.dart';

class SharedLearnCache extends StatefulWidget {
  const SharedLearnCache({Key? key}) : super(key: key);

  @override
  State<SharedLearnCache> createState() => _SharedLearnCacheState();
}

class _SharedLearnCacheState extends LoadingStateFull<SharedLearnCache> {
  int _currentValue = 0;
  late final SharedManager _manager;
  late final List<User> userItems;
  @override
  void initState() {
    super.initState();
    userItems = UserItems().users;
    _manager = SharedManager();
    _manager.init();
    _initialze();
  }

  Future<void> _initialze() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValue();
  }

  Future<void> getDefaultValue() async {
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
      body: Column(children: [
        TextField(
          onChanged: (value) {
            _onChangeValue(value);
          },
        ),
        Expanded(
          child: UserListView(),
        )
      ]),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.save),
            onPressed: () async {
              changeLoading();
              await _manager.saveString(
                  SharedKeys.counter, _currentValue.toString());
              changeLoading();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () async {
              changeLoading();
              await _manager.removeItem(SharedKeys.counter);
              changeLoading();
            },
          ),
        ],
      ),
    );
  }
}

class UserListView extends StatelessWidget {
  UserListView({
    Key? key,
  }) : super(key: key);
  final List<User> users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(users[index].name),
          subtitle: Text(
            users[index].description,
          ),
          trailing: Text(users[index].url),
        );
      },
      itemCount: users.length,
    );
  }
}

class User {
  final String name;
  final String description;
  final String url;

  User(this.name, this.description, this.url);
}

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User('name', 'mansur', 'manusr.com'),
      User('name1', 'mansur5', 'manusr.com'),
      User('nadfme', 'mansursdfsd', 'manusr.com'),
      User('nasdfsme', 'mansurskj', 'manusr.com'),
      User('nasfsdme', 'mansusfsr', 'manusr.com'),
    ];
  }
}

abstract class LoadingStateFull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
