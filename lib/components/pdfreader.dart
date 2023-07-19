import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfWidget extends StatefulWidget {
  @override
  _PdfWidgetState createState() => _PdfWidgetState();
}

class _PdfWidgetState extends State<PdfWidget> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _initHive();
  }

  Future<void> _initHive() async {
    final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }

  Future<void> _downloadAndSavePdf() async {
    final pdfBox = await Hive.openBox<String>('pdf_box');
    if (!pdfBox.containsKey('pdf_url')) {
      final url = 'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf';
      // Replace this with your actual download and storage logic.
      // For example, you can use the `http` package to download the file and `path_provider` to store it locally.
      // Make sure to handle error cases and progress reporting in a real-world app.
      // For simplicity, we'll assume the file is already downloaded and stored locally.

      // After downloading, save the URL in Hive for future reference.
      await pdfBox.put('pdf_url', url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _downloadAndSavePdf(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Get the PDF URL from Hive and load it in SfPdfViewer.
          final pdfBox = Hive.box<String>('pdf_box');
          final pdfUrl = pdfBox.get('pdf_url');
          return SfPdfViewer.network(
            pdfUrl!,
            key: _pdfViewerKey,
          );
        } else {
          // Show a loading indicator while downloading the PDF.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
