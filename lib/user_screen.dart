import 'package:flutter/material.dart';


class UserModel {
  final String name;
  final String id;
  final String phone;

  UserModel({required this.name, required this.id, required this.phone});

  
}

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);

  List<UserModel> users = [
    UserModel(name: "Ahmed", id: '1', phone: "01141746591"),
    UserModel(name: 'Joo MB', id:'2', phone: '0101455285445'),
    UserModel(name: "Sacara mo", id: '2', phone: "01141746591"),
    UserModel(name: 'Hashak KO', id:'3', phone: '0101455285445'),
    UserModel(name: "Ahmed", id: '4', phone: "01141746591"),
    UserModel(name: 'Joo MB', id:'5', phone: '0101455285445'),
    UserModel(name: "Sacara mo", id: '6', phone: "01141746591"),
    UserModel(name: 'Hashak KO', id:'7', phone: '0101455285445'),
    UserModel(name: "Ahmed", id: '1', phone: "01141746591"),
    UserModel(name: 'Joo MB', id:'2', phone: '0101455285445'),
    UserModel(name: "Sacara mo", id: '1', phone: "01141746591"),
    UserModel(name: 'Hashak KO', id:'2', phone: '0101455285445'),
    UserModel(name: "Ahmed", id: '1', phone: "01141746591"),
    UserModel(name: 'Joo MB', id:'2', phone: '0101455285445'),
    UserModel(name: "Sacara mo", id: '1', phone: "01141746591"),
    UserModel(name: 'Hashak KO', id:'2', phone: '0101455285445'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User',
        ),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) => buildUserItem(users[index])),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: users.length),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
             CircleAvatar(
              radius: 25,
              child: Text(
                user.id,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children:  [
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  user.phone,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
