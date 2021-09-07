import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _listaTarefas = ["teste 1", "teste 2", "teste 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("adicionar tarefa"),
                  content: TextField(
                    decoration: InputDecoration(labelText: "Digite sua tarefa"),
                    onChanged: (text) {},
                  ),
                  actions: [
                    FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Cancelar")),
                    FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Salvar"))
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: _listaTarefas.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_listaTarefas[index]),
              );
            },
          ))
        ],
      ),
    );
  }
}
