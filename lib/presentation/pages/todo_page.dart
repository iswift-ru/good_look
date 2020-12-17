import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/todo_bloc.dart';
import '../../domain/models/todo_model.dart';
import '../widgets/circular_progress.dart';

class ToDoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      return state.map(
          progressIndicator: (_) => const CircularProgress(),
          stateToDo: (state) => ListViewTasks(
                listTasks: state.toDo,
              ));
    });
  }
}

class ListViewTasks extends StatelessWidget {
  final List<ToDoModel> listTasks;
  const ListViewTasks({Key key, this.listTasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            key: const PageStorageKey('todo'),
            itemCount: listTasks.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = listTasks[index];
              final value = listTasks[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: const Offset(
                            1.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Opacity(
                    opacity: value.completed == true ? 0.5 : 1,
                    child: ListTile(
                      title: Text(todo.title,
                          style: value.completed == true
                              ? const TextStyle(
                                  decoration: TextDecoration.lineThrough)
                              : null),
                      trailing: CircularCheckBox(
                          value: value.completed,
                          checkColor: Colors.white,
                          activeColor: Colors.green,
                          inactiveColor: Colors.grey[300],
                          disabledColor: Colors.grey,
                          onChanged: (val) {}),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
