import 'package:flutter/material.dart';
import '../common/style.dart';

class JadwalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget roundedContainer(Widget child, {Color color = Colors.black}) =>
        Container(
          child: child,
          width: double.infinity,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(10),
          ),
        );

    Widget dataTable(String date, String morningTime, String noonTime) =>
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.underline,
              ),
            ),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              columnWidths: {1: FractionColumnWidth(0.7)},
              children: [
                TableRow(
                  children: [
                    Text(
                      'Pagi',
                      style: dateStyle,
                    ),
                    Text(
                      morningTime,
                      textAlign: TextAlign.justify,
                      style: dateStyle,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Siang',
                      style: dateStyle,
                    ),
                    Text(
                      noonTime,
                      textAlign: TextAlign.justify,
                      style: dateStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        roundedContainer(
          dataTable(
            'Senin - Kamis',
            '08.00 - 12.00 WITA',
            '14.00 - 16.30 WITA',
          ),
        ),
        roundedContainer(
          dataTable(
            'Jum\'at',
            '08.00 - 11.30 WITA',
            '14.00 - 16.00 WITA',
          ),
        ),
        roundedContainer(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Libur',
                style: TextStyle(
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                  color: Colors.red,
                ),
              ),
              Text(
                'Sabtu / Minggu / Hari Raya',
                style: dateStyle.copyWith(color: Colors.red),
              ),
            ],
          ),
          color: Colors.red,
        )
      ],
    );
  }
}
