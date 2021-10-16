import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/network_provider/constant.dart';
import 'package:oldwave/src/network_provider/product_list_service.dart';
import 'package:oldwave/src/resources/dtos/product_list_response.dart';
import 'package:oldwave/src/resources/product_list_adapter.dart';

import 'product_list_adapter_test.mocks.dart';

@GenerateMocks([ProductListService])
void main() {

  group('getProductListByProduct', () {
    test('getProductListByProduct', () async {
      final service = MockProductListService();
      final adapter = ProductListAdapter();

      String product = 'Iphone';

      when(service.getProductList(Constant.url_back_fast_api, product))
      .thenAnswer((_) async => ProductListResponse('', 0, List.empty(), SellerResponse(0, '')));

      when(service.getProductList(Constant.url_back_flask, product))
      .thenAnswer((_) async => ProductListResponse('', 0, List.empty(), SellerResponse(0, '')));

      Future<List<Product>> actual = adapter.getProductListByProduct(product);

      expect(await actual, isNotNull);
    });
  
  });
  
}
