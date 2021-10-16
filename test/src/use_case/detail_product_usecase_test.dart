import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/models/repository/detail_product_repository.dart';
import 'package:oldwave/src/use_case/detail_product_usecase.dart';

import 'detail_product_usecase_test.mocks.dart';
@GenerateMocks([DetailProductRepository])
void main(){

  test('llamado del servicio desde el usecase', () async {
    final repository = MockDetailProductRepository();
    final useCase = DetailProductUseCase();
    int idSeller = 1;
    int idProduct = 1;

    when(repository.getDetailProductById(idProduct, idSeller))
    .thenAnswer((_) async => DetailProduct(1, '', '', List.empty(), City(1, ''), 0.0, 0.0, '', SellerWithLogo(1, '', '')));

    Future<DetailProduct> actual = useCase.getDetailProductById(idProduct, idSeller);

    expect(await actual, isNotNull);

  });
}