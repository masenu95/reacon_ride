import 'dart:convert' show json;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
class FCMNotificationServices {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final String _endpoint = 'https://fcm.googleapis.com/fcm/send';
  final String _contentType = 'application/json';
  final String _authorization =
      'key=AAAA7fMNvKQ:APA91bEyks1CK2RGxutduo2ecLV8OeljFGuU8vzXl2oRYnz_jrOdEjo49xPcA_MDOGUQcAtdcPJjgbe-xLugzA8JbvXh2kklVn5iTalDKCg-ArOES3944vMk9HcGffB_1paOJAnpgEXF';

  Future<http.Response> _sendNotification(
      String to,
      String title,
      String body,
      ) async {
    try {
      final dynamic data = json.encode(
        {
          'to': to,
          'priority': 'high',
          'notification': {
            'title': title,
            'body': body,
          },
          'content_available': true
        },
      );
      http.Response response = await http.post(
        Uri.parse(_endpoint),
        body: data,
        headers: {
          'Content-Type': _contentType,
          'Authorization': _authorization
        },
      );

      return response;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<void> sendNotificationToGroup(
      {required String group, required String title, required String body}) {
    return _sendNotification('/topics/' + group, title, body);
  }

  Future<void> sendNotificationToUser({
    required String fcmToken,
    required String title,
    required String body,
  }) {
    return _sendNotification(
      fcmToken,
      title,
      body,
    );
  }


  Future<void> subscribeToTopic({required String topic}) {
    return _firebaseMessaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic({required String topic}) {
    return _firebaseMessaging.unsubscribeFromTopic(topic);
  }

}