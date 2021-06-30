import 'package:flutter/material.dart';
import 'package:kelurahan_pagesangan/data/datas.dart';

class PelayananWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column dataTable(String title, List data) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
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
        dataTable('Daftar Pelayanan', serviceData),
        SizedBox(height: 16),
        dataTable('Persyaratan Pelayanan', reqData),
        SizedBox(height: 16),
        Text(
          'Maklumat Pelayanan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Dengan ini, kami Seluruh unsur Kelurahan Pagesangan, Kecamatan Mataram, Kota Mataram, menyatakan sanggup untuk menyelenggarakan pelayanan sesuai dengan Standar Pelayanan yang telah ditetapkan. \nApabila kami tidak mematuhi Standar Pelayanan, Kami siap menerima sanksi sesuai Peraturan Perundang-undangan. Kami melayani Anda dengan SIGAP ( Senyum Ikhlas Gratis Amanah Pasti )',
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
