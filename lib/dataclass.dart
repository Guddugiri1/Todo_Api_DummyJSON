import 'package:dioapi/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataClass extends StatelessWidget {
  const DataClass({Key? key, required this.datalist}) : super(key: key);
  final List<Information> datalist;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            'Todo List Table !',
            style: const TextStyle(
                fontSize: 43, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          FittedBox(
            child: DataTable(
              sortColumnIndex: 1,
              showBottomBorder: false,
              border: TableBorder.all(width: 2),
              columns: const [
                DataColumn(
                  label: Center(
                    child: Text(
                      'ID',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: Center(
                    child: Text(
                      'To Do LIst Discription',
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Completed',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'UserID',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                ),
              ],
              rows: datalist
                  .map(
                    (data) => DataRow(
                      cells: [
                        DataCell(
                          Text(
                            data.id.toString(),
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w800),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.todo.toString(),
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w800),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.completed.toString(),
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w800),
                          ),
                        ),
                        DataCell(
                          Text(
                            data.userId.toString(),
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
