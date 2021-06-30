import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class TupoksiWidget extends StatefulWidget {
  @override
  _TupoksiWidgetState createState() => _TupoksiWidgetState();
}

class _TupoksiWidgetState extends State<TupoksiWidget> {
  bool _isLoading = true;
  PDFDocument doc;

  void loadPdf() async {
    doc = await PDFDocument.fromAsset('assets/pdf/tupoksi.pdf');
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    loadPdf();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: doc),
    );
  }
}
