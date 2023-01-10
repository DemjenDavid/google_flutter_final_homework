import 'package:final_homework/presentation/container/chat_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'container/location_container.dart';
import 'container/user_container.dart';
import 'container/users_container.dart';
import 'drawer/app_drawer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store.dispatch(const GetLocation());
    store.dispatch(const ListenForMessagesStart());
    store.dispatch(const ListenForUsersStart());
  }

  String message = '';

  @override
  Widget build(BuildContext context) {
    return ChatContainer(
      builder: (BuildContext context, List<Message>? messages) {
        return UsersContainer(builder: (BuildContext context, List<AppUser>? userList) {
          return UserContainer(builder: (BuildContext context, AppUser? user) {
            return Scaffold(
              drawer: MyDrawer(
                user: user!,
                userList: userList!,
              ),
              appBar: AppBar(
                title: Text(user!.displayName),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.power_settings_new),
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(const Logout());
                      Navigator.of(context).pushNamed("/");
                    },
                  )
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: messages!.length,
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      itemBuilder: (context, index){
                        return SizedBox(
                          child: Row(
                            children: [
                              Text('${messages![index].displayName} : ', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Text(messages![index].message, style: const TextStyle(fontSize: 20),maxLines: 10,),
                            ],
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onChanged: (String input) {
                                  setState(() {
                                    message = input;
                                  });
                                },
                                decoration: const InputDecoration(
                                    hintText: "Write message...",
                                    hintStyle: TextStyle(color: Colors.black54),
                                    border: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context, listen: false)
                                    .dispatch(SendMessage(user: user, message: message));
                                setState(() {
                                  message = "";
                                });
                              },
                              backgroundColor: Colors.blue,
                              elevation: 0,
                              child: const Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
      },
    );
  }
}
