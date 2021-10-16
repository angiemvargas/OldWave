import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/network_provider/product_list_service.dart';
import 'package:oldwave/src/network_provider/rest_client_service.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';

import 'product_list_service_test.mocks.dart';

@GenerateMocks([RestClientService])
void main(){

   group('getProductList', () {
    test('getProductList with url fast api', () async {
      final restClient = MockRestClientService();
      final service = ProductListService();
      final url = Uri.parse('https://d1eylshvb8atwe.cloudfront.net/api/v1/search?q=hola');

      String baseUrl = 'd1eylshvb8atwe.cloudfront.net';
      String product = 'hola';

      when(restClient.get(url))
      .thenAnswer((_) async => GenericResponse(200, 'exitoso', null));

      Future<ProductListResponse> actual = service.getProductList(baseUrl, product);

      expect(await actual, isNotNull);
    });

    test('getProductList with url diferent fast api', () async {
      final restClient = MockRestClientService();
      final service = ProductListService();
      final url = Uri.parse('https://d1eylshvb8atwe/api/v1/search?q=hola');

      String baseUrl = 'd1eylshvb8atwe';
      String product = 'hola';

      when(restClient.get(url))
      .thenAnswer((_) async => GenericResponse(200, 'exitoso', null));

      Future<ProductListResponse> actual = service.getProductList(baseUrl, product);

      expect(await actual, isNotNull);
    });

   });
}