import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelurahan_pagesangan/widgets/jadwal_widget.dart';
import 'package:kelurahan_pagesangan/widgets/pelayanan_widget.dart';
import 'package:photo_view/photo_view.dart';
import 'package:kelurahan_pagesangan/widgets/tupoksi_widget.dart';
import 'package:kelurahan_pagesangan/widgets/vismis_widget.dart';
import '../data/datas.dart';

class DynamicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int id = int.parse(Get.parameters['id']);
    Widget information;

    switch (id) {
      case 0:
        information = VisMisWidget();
        break;
      case 1:
        information = JadwalWidget();
        break;
      case 2:
        information = PhotoView(
          imageProvider: AssetImage('assets/img/struktur_org.png'),
          backgroundDecoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
          ),
        );
        break;
      case 3:
        information = TupoksiWidget();
        break;
      case 4:
        information = PelayananWidget();
        break;
      default:
    }

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, isScrolled) => [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/img/pagesangan.png',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.4),
                colorBlendMode: BlendMode.darken,
              ),
              title: Text(
                sectionData[id].title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
        body: information ?? SizedBox(),
      ),
    );
  }
}
