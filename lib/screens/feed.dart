import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  List _feedList = [
    //dados "falsos" para o feed no lugar da api
    {
      "foto": "https://randomuser.me/api/portraits/women/49.jpg",
      "nome": "Raisa Spagnol",
      "atividade": "Check in na academia",
      "comentario": "No pain no gain!",
    },
    {
      "foto": "https://randomuser.me/api/portraits/men/49.jpg",
      "nome": "João Alberto",
      "atividade": "Jogando futebol",
      "comentario": "Marquei 3 gols!",
    },
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _feedList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                _feedList[index]["foto"],
              ),
            ),
            title: Row(
              children: <Widget>[Text(_feedList[index]["nome"])],
            ),
            subtitle: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: <Widget>[Text(_feedList[index]["atividade"])],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    children: <Widget>[Text(_feedList[index]["comentario"])],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 16.0, 8.0),
                      child: Icon(
                        Icons.comment,
                        color: Colors.grey[500],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.grey[500],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 8.0),
                      child: Icon(
                        Icons.share,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
