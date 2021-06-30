import 'package:flutter/material.dart';
import 'package:kelurahan_pagesangan/data/datas.dart';

class VisMisWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column dataTable(String title, List data) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 35,
              decoration: TextDecoration.underline,
            ),
          ),
          Table(
            columnWidths: {1: FractionColumnWidth(0.9)},
            children: data
                .map(
                  (e) => TableRow(children: [
                    Text(
                      '${data.indexOf(e) + 1}.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      e,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ]),
                )
                .toList(),
          ),
        ],
      );
    }

    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        dataTable('Visi', visionData),
        SizedBox(height: 16),
        dataTable('Misi', missionData),
      ],
    );
  }
}
