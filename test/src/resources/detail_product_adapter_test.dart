import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/detail_product_service.dart';
import 'package:oldwave/src/resources/detail_product_adapter.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';

import 'detail_product_adapter_test.mocks.dart';

@GenerateMocks([DetailProductService])
void main(){
  group('getDetailProductById', () {
    test('getDetailProductById with url fast api', () async {
      final service = MockDetailProductService();
      final adapter = DetailProductAdapter();

      int idProduct = 1;
      int idSeller = 7;

      when(service.getDetailProduct(Constant.url_back_fast_api, idProduct))
      .thenAnswer((_) async => DetailProduct(0, '', '', List.empty(), City(0, ''), 0.0, 0.0, '', SellerWithLogo(0, '', '')));

      Future<DetailProduct> actual = adapter.getDetailProductById(idProduct, idSeller);

      expect(await actual, isNotNull);
    });

    test('getDetailProductById with url flask', () async {
      final service = MockDetailProductService();
      final adapter = DetailProductAdapter();

      int idProduct = 1;
      int idSeller = 1;

      when(service.getDetailProduct(Constant.url_back_flask, idProduct))
      .thenAnswer((_) async => DetailProduct(0, '', '', List.empty(), City(0, ''), 0.0, 0.0, '', SellerWithLogo(0, '', '')));

      Future<DetailProduct> actual = adapter.getDetailProductById(idProduct, idSeller);

      expect(await actual, isNotNull);
    });
  
  });
}