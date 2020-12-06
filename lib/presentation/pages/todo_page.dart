import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_look/presentation/bloc/todo_bloc.dart';
import 'package:circular_check_box/circular_check_box.dart';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  void initState() {
    context.read<TodoBloc>().add(EventToDo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      return state.map(
          progressIndicator: (_) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                    ],
                  ),
                ],
              ),
          stateToDo: (state) {
            // log(state.toString());
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    key: PageStorageKey('todo'),

                    // shrinkWrap: true,
                    itemCount: state.toDo.length,
                    itemBuilder: (BuildContext context, int index) {
                      final todo = state.toDo[index];
                      final value = state.toDo[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 1.0, //extend the shadow
                                  offset: Offset(
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
                                      ? TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough)
                                      : null),
                              trailing: CircularCheckBox(
                                  value: value.completed,
                                  checkColor: Colors.white,
                                  activeColor: Colors.green,
                                  inactiveColor: Colors.grey[300],
                                  disabledColor: Colors.grey,
                                  onChanged: (val) => setState(() {})),
                            ),
                          ),
                        ),
                      );
                      // Image.network(state.photoModel[index].url);
                    },
                  ),
                ),
              ],
            );
          });
    });
  }
}
