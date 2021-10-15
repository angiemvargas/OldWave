import 'package:flutter_test/flutter_test.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/use_case/product_list_usecase.dart';

void main(){

  test('llamado del servicio desde el usecase', () async {
    
    final useCase = ProductListUseCase();
    String product = 'Iphone';

    Future<List<Product>> actual = useCase.getProductListByProduct(product);

    expect(await actual, isNotNull);

  });
}