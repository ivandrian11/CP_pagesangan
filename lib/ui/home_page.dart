import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelurahan_pagesangan/data/datas.dart';
import 'package:kelurahan_pagesangan/routes/route_name.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kelurahan Pagesangan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xffD0DBEA), width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/mataram.png',
                    width: 100,
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jl. Guru Bangkol No. 1 Pagesangan',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        Text(
                          'Telp. (0370) 631541',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: sectionData.length,
              itemBuilder: (_, i) => GestureDetector(
                onTap: () {
                  if (i != sectionData.length - 1) {
                    Get.toNamed(RouteName.dynamic + '/$i');
                  } else {
                    Get.dialog(
                      AlertDialog(
                        title: Center(
                          child: Text(
                            '${sectionData[i].title}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Aplikasi berfungsi untuk mempermudah pegawai dalam mengelola data informasi kelurahan untuk menyebarkan informasi mengenai kelurahan sekaligus mempromosikan kelurahan ke masyarakat luas.',
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () => Get.back(),
                              child: Text('Oke'),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Color(0xffD0DBEA), width: 2),
                    image: DecorationImage(
                      image: AssetImage(sectionData[i].imgUrl),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      sectionData[i].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
