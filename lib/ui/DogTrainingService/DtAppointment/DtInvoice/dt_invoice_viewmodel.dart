import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import '../helper/save_file_mobile.dart';
import 'dart:io';

class InvoiceGenerator {
  // First
  Future<void> generatePDF({
    required String invoiceNo,
    required String invoiceTo,
    required String petName,
    required String invoiceDate,
    required String packageName,
    required String sessionsDetails,
    required String billingType,
    required String startDate,
    required String originalAmount,
    required String discountAmount,
    required String totalAmount,
  }) async {
    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Get page client size
    final Size pageSize = page.getClientSize();
    _drawHeader(page, pageSize);
    _drawIntro(page, pageSize, invoiceNo);
    _drawInvoiceTitle(page, pageSize);
    _drawUserDetails(page, pageSize, invoiceTo, petName, invoiceDate);
    _drawPackageTitle(page, pageSize);
    _drawPackageDetails(
        page, pageSize, packageName, sessionsDetails, originalAmount);
    _drawPackageAdditionalDetails(page, pageSize, billingType, startDate);
    _drawAmountDetails(
        page, pageSize, originalAmount, discountAmount, totalAmount);
    _drawFooter(page, pageSize);
    //Draw rectangle
    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
        pen: PdfPen(PdfColor(41, 49, 60)));

    final List<int> bytes = document.save();
    document.dispose();
    //Save and Launch the file.
    await FileSaveHelper.saveAndLaunchFile(bytes, 'Invoice.pdf');
  }

  //Draws the invoice header
  void _drawHeader(PdfPage page, Size pageSize) async {
    double top = 5;
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(41, 49, 60)),
        bounds: Rect.fromLTWH(0, 0, pageSize.width, 90));

    final PdfFont contentFont1 =
        PdfStandardFont(PdfFontFamily.helvetica, 40, style: PdfFontStyle.bold);

    page.graphics.drawString('p e t', contentFont1,
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(30, top, 200, 50),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle));

    page.graphics.drawString('m o j o', contentFont1,
        brush: PdfSolidBrush(PdfColor(255, 94, 149)),
        bounds: Rect.fromLTWH(
            contentFont1.measureString('p e t').width + 40, top, 200, 50),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle));

    final PdfFont contentFont2 = PdfStandardFont(PdfFontFamily.helvetica, 20,
        style: PdfFontStyle.regular);

    page.graphics.drawString('Your  Pet,   Our  Family!', contentFont2,
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(30, top + 40, pageSize.width, 50),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle));
  }

  //Draws the invoice Intro
  void _drawIntro(PdfPage page, Size pageSize, String invoiceNo) {
    double top = 130;
    final PdfFont contentFont =
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold);
    String string1 = 'Trade Name: Petmojo';
    String string2 = 'Mangopaw technologies and solutions pvt. Ltd.';
    String string3 = 'Booking reference number: $invoiceNo';
    PdfTextElement(text: string1, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top, pageSize.width, pageSize.height - 120))!;
    PdfTextElement(text: string2, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(
            30, top + 30, pageSize.width, pageSize.height - 120))!;
    PdfTextElement(text: string3, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(
            30, top + 60, pageSize.width, pageSize.height - 120))!;
  }

  //Draws the invoice Title
  void _drawInvoiceTitle(PdfPage page, Size pageSize) {
    double top = 240;
    final PdfFont contentFont =
        PdfStandardFont(PdfFontFamily.helvetica, 25, style: PdfFontStyle.bold);
    String string = 'Invoice';
    final Size contentSize = contentFont.measureString(string);
    PdfTextElement(text: string, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH((pageSize.width / 2) - (contentSize.width / 2),
            top, pageSize.width, pageSize.height))!;
  }

  //Draws the invoice details
  void _drawUserDetails(
    PdfPage page,
    Size pageSize,
    String invoiceTo,
    String petName,
    String invoiceDate,
  ) {
    double top = 290;
    final PdfFont contentFont = PdfStandardFont(PdfFontFamily.helvetica, 15);
    String string1 = 'Invoice To: $invoiceTo        Pet Name: $petName';
    String string2 = 'Invoice Date: $invoiceDate';
    PdfTextElement(text: string1, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top, pageSize.width, pageSize.height))!;
    PdfTextElement(text: string2, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top + 30, pageSize.width, pageSize.height))!;
  }

  //Draws the package title
  void _drawPackageTitle(PdfPage page, Size pageSize) {
    double barSize = 30;
    double top = 360;
    // Draw rectangle - 1
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(220, 220, 220)),
        bounds: Rect.fromLTWH(0, top, pageSize.width - 115, barSize));
    // Draw string - 1
    page.graphics.drawString('Package Details',
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold),
        brush: PdfBrushes.black,
        bounds: Rect.fromLTWH(30, top, pageSize.width - 115, barSize),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle));
    // Draw rectangle - 2
    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(400, top, pageSize.width - 400, barSize),
        brush: PdfSolidBrush(PdfColor(255, 94, 149)));
    // Draw string - 2
    page.graphics.drawString('Amount',
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold),
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(400, top, pageSize.width - 400, 33),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.middle));
  }

  //Draws the package details
  void _drawPackageDetails(
    PdfPage page,
    Size pageSize,
    String packageName,
    String sessionsDetails,
    String originalAmount,
  ) {
    double top = 410;
    final PdfFont contentFont1 =
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold);
    final PdfFont contentFont2 = PdfStandardFont(PdfFontFamily.helvetica, 15);
    PdfTextElement(text: packageName, font: contentFont1).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top, pageSize.width, pageSize.height))!;
    PdfTextElement(text: sessionsDetails, font: contentFont2).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top + 20, pageSize.width, pageSize.height))!;
    PdfTextElement(text: "$originalAmount", font: contentFont1).draw(
      page: page,
      bounds: Rect.fromLTWH(415, top, pageSize.width, pageSize.height),
    )!;
  }

  //Draws the package additional details
  void _drawPackageAdditionalDetails(
    PdfPage page,
    Size pageSize,
    String billingType,
    String startDate,
  ) {
    double top = 470;
    final PdfFont contentFont = PdfStandardFont(PdfFontFamily.helvetica, 15);
    String string1 = 'Billing Type: $billingType';
    String string2 = 'Start Date: $startDate';
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(220, 220, 220)),
        bounds: Rect.fromLTWH(30, top, pageSize.width - 250, 1));
    PdfTextElement(text: string1, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top + 20, pageSize.width, pageSize.height))!;
    PdfTextElement(text: string2, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, top + 40, pageSize.width, pageSize.height))!;
  }

  //Draws the amount details
  void _drawAmountDetails(
    PdfPage page,
    Size pageSize,
    String originalAmount,
    String discountAmount,
    String totalAmount,
  ) {
    double top = 570;
    final PdfFont contentFont =
        PdfStandardFont(PdfFontFamily.helvetica, 15, style: PdfFontStyle.bold);
    String string1 = 'SUBTOTAL : $originalAmount';
    String string2 = 'DISCOUNT : $discountAmount';
    String string3 = '   TOTAL : $totalAmount';
    page.graphics.drawString(string1, contentFont,
        brush: PdfBrushes.black,
        bounds: Rect.fromLTWH(-30, top, pageSize.width, 30),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.right,
            lineAlignment: PdfVerticalAlignment.middle));
    page.graphics.drawString(string2, contentFont,
        brush: PdfBrushes.black,
        bounds: Rect.fromLTWH(-30, top + 20, pageSize.width, 30),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.right,
            lineAlignment: PdfVerticalAlignment.middle));
    // Size size = contentFont.measureString(string3);
    // page.graphics.drawRectangle(
    //     brush: PdfSolidBrush(PdfColor(255, 94, 149)),
    //     bounds: Rect.fromLTWH(400, top + 40, size.width + 30, 25));
    page.graphics.drawString(string3, contentFont,
        brush: PdfSolidBrush(PdfColor(255, 94, 149)),
        bounds: Rect.fromLTWH(-30, top + 40, pageSize.width, 30),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.right,
            lineAlignment: PdfVerticalAlignment.middle));
  }

  //Draws the footer
  void _drawFooter(PdfPage page, Size pageSize) {
    double barSize = 30;
    double top = 360;
    // Draw rectangle - 1
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(41, 49, 60)),
        bounds:
            Rect.fromLTWH(0, pageSize.height - 30, pageSize.width, barSize));
    // Draw string - 1
    page.graphics.drawString('Phone number: 9009004473',
        PdfStandardFont(PdfFontFamily.helvetica, 13),
        brush: PdfBrushes.white,
        bounds:
            Rect.fromLTWH(30, pageSize.height - 30, pageSize.width, barSize),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.left,
            lineAlignment: PdfVerticalAlignment.middle));
    // Draw string - 2
    page.graphics.drawString('E-mail Address: support@tamely.in',
        PdfStandardFont(PdfFontFamily.helvetica, 13),
        brush: PdfBrushes.white,
        bounds:
            Rect.fromLTWH(-30, pageSize.height - 30, pageSize.width, barSize),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.right,
            lineAlignment: PdfVerticalAlignment.middle));
  }
}
