import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

final String CLIENT_ID = 'ff9f441170e14efda4144b302a0c62fd';
final String CLIENT_SECRET = 'a103ca83153045409da9464336ce75a4';
final String redirectUri = 'myapp://callback';
final String scopes = 'user-read-private user-read-email';

final String authUrl = 'https://accounts.spotify.com/authorize?'
    'response_type=code&'
    'client_id=$CLIENT_ID&'
    'redirect_uri=$redirectUri&'
    'scope=$scopes';

Future<void> loginWithSpotify() async {
  if (await canLaunch(authUrl)) {
    await launch(authUrl);
  } else {
    throw 'Could not launch $authUrl';
  }
}
