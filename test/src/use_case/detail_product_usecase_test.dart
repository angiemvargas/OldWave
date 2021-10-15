import 'package:flutter_test/flutter_test.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/use_case/detail_product_usecase.dart';
void main(){

  test('llamado del servicio desde el usecase', () async {
    
    final useCase = DetailProductUseCase();
    int idSeller = 1;
    int idProduct = 1;

    Future<DetailProduct> actual = useCase.getDetailProductById(idProduct, idSeller);

    expect(await actual, isNotNull);

  });
}