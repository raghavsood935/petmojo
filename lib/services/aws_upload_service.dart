import 'dart:io';

import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/get_file_upload_details_response.dart';
import 'package:http/http.dart' as http;
import 'package:tamely/models/params/get_file_upload_details_body.dart';
import 'package:tamely/models/params/get_s3_url_body.dart';
import 'package:tamely/models/url_response.dart';

/// This class is used to upload files to S3
/// And to get the files from S3
class CloudStorageService {
  final _tamelyApi = locator<TamelyApi>();
  static void initialise() async {}

  /// Gets the S3 url for the file upload
  ///
  /// The return value will have the keys and parameters required to make actual upload
  ///
  /// [fileName] - The name of the file to be uploaded
  Future<GetFileUrlsResponse> getCloudUploadDetails(String filename) async {
    GetFileUrlsResponse response;
    GetFileUploadDetailsBody getFileUploadDetailsBody =
        GetFileUploadDetailsBody(filename);
    BaseResponse<GetFileUploadDetailsResponse> resultOne =
        await _tamelyApi.getFileUploadDetails(getFileUploadDetailsBody);
    response = resultOne.data!.fileUrls!;
    return (response);
  }

  /// Uploads the file to S3
  ///
  /// [fileName] - The name of the file to be uploaded
  ///
  /// [file] - The file to be uploaded
  ///
  /// Returns the awsKey of the file uploaded
  ///
  /// To access the file anywhere, use the "getUrlFromAwsKey" method by passing the awsKey returned
  /// by this method.
  ///
  Future<String> uploadFile({
    required File file,
    required String fileName,
  }) async {
    String awsKey;
    GetFileUrlsResponse uploadDetails = await getCloudUploadDetails(fileName);
    var request = new http.MultipartRequest(
        "POST",
        Uri.parse(
            "https://s3.ap-south-1.amazonaws.com/trainingvideofilesbucket"));

    request.fields['key'] = uploadDetails.fields!.key!;
    request.fields['bucket'] = uploadDetails.fields!.bucket!;
    request.fields['x-amz-algorithm'] = uploadDetails.fields!.xAmzAlgorithm!;
    request.fields['x-amz-credential'] = uploadDetails.fields!.xAmzCredential!;
    request.fields['x-amz-date'] = uploadDetails.fields!.xAmzDate!;
    request.fields['policy'] = uploadDetails.fields!.policy!;
    request.fields['x-amz-signature'] = uploadDetails.fields!.xAmzSignature!;
    request.files.add(new http.MultipartFile.fromBytes(
        'file', file.readAsBytesSync(),
        filename: file.path.split('/').last));
    http.StreamedResponse response = await request.send();
    if (response.statusCode >= 200 && response.statusCode < 300) {
      awsKey = uploadDetails.fields!.key!;
    } else {
      awsKey = "UPLOADFAIL";
    }
    return (awsKey);
  }

  /// Gets the url from the awsKey
  ///
  /// [awsKey] - The awsKey of the file
  ///
  /// Returns the url of the file
  Future<String> getUrlFromAwsKey({required String? awsKey}) async {
    String url;
    if (awsKey == null || awsKey == "") {
      url = "";
    } else {
      GetS3UrlBody getS3UrlBody = GetS3UrlBody(awsKey);

      BaseResponse<UrlResponse> response =
          await _tamelyApi.getS3Url(getS3UrlBody);
      url = response.data!.url!;
    }
    return (url);
  }
}
