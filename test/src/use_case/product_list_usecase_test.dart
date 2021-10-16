import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/product_list_repository.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

import 'product_list_usecase_test.mocks.dart';
@GenerateMocks([ProductListRepository])
void main(){

  test('llamado del servicio desde el usecase product list', () async {
    final repository = MockProductListRepository();
    final useCase = ProductListUseCase();
    String product = 'Iphone';

    when(repository.getProductListByProduct(product))
    .thenAnswer((_) async => <Product>[(Product(1, '', '', '', City(1, ''), 0.0, 0.0, Seller(1, '')))]);

    Future<List<Product>> actual = useCase.getProductListByProduct(product);

    expect(await actual, isNotNull);

  });
}