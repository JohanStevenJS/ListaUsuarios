import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserView extends ConsumerWidget{
  const UserView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de usuarios')),
      body: Column(
        children: [
          CategoriaColores(),
          Divider(height: 1,),
          MisUsuarios(),
        ],
      ),
    );
  }
}

class CategoriaColores extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      MisUsuarios()
    ],);
  }
}

class MisUsuarios extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder : (BuildContext context, int index){
          return ListTile(
            leading: MisColores(),
            title: Text('Mis usuarios #$index'),
          );
        }
      ),
    );
  }
}

class MisColores extends StatelessWidget {
  const MisColores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 20,
        child : Icon(Icons.add),
      ),
    );
  }
}