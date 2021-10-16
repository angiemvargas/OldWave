import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/network_provider/rest_client_service.dart';
import 'package:mockito/annotations.dart';

import 'rest_client_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main(){
  group('restClientService', () {
   test('get with response 400', () async {
      final httpMock = MockClient();
      final restClient = RestClientService();
      Uri uri = Uri.parse('https://d1eylshvb8atwe/api/v1/items/1');
    
      when(httpMock.get(uri))
      .thenAnswer((_) async => http.Response('', 400));

      Future<GenericResponse> actual = restClient.get(uri);

      expect(await actual, isNotNull);
    });

    test('get with response 200', () async {
      final httpMock = MockClient();
      final restClient = RestClientService();
      Uri uri = Uri.parse('https://d1eylshvb8atwe/api/v1/items/1');
    
      when(httpMock.get(uri))
      .thenAnswer((_) async => http.Response('', 200));

      Future<GenericResponse> actual = restClient.get(uri);

      expect(await actual, isNotNull);
    });
  });
}