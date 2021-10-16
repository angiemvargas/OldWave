import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/network_provider/detail_product_service.dart';
import 'package:oldwave/src/network_provider/rest_client_service.dart';

import 'detail_product_service_test.mocks.dart';

@GenerateMocks([RestClientService])
void main(){

   group('getDetailProduct', () {
    test('getDetailProduct with url fast api', () async {
      final restClient = MockRestClientService();
      final service = DetailProductService();
      final url = Uri.parse('https://d1eylshvb8atwe.cloudfront.net/api/v1/items/1');

      String baseUrl = 'd1eylshvb8atwe.cloudfront.net';
      int idProduct = 1;

      when(restClient.get(url))
      .thenAnswer((_) async => GenericResponse(200, 'exitoso', null));

      Future<DetailProduct> actual = service.getDetailProduct(baseUrl, idProduct);

      expect(await actual, isNotNull);
    });

    test('getDetailProduct with url diferent fast api', () async {
      final restClient = MockRestClientService();
      final service = DetailProductService();
      final url = Uri.parse('https://d1eylshvb8atwe/api/v1/items/1');

      String baseUrl = 'd1eylshvb8atwe';
      int idProduct = 1;

      when(restClient.get(url))
      .thenAnswer((_) async => GenericResponse(200, 'exitoso', null));

      Future<DetailProduct> actual = service.getDetailProduct(baseUrl, idProduct);

      expect(await actual, isNotNull);
    });

   });
}