// Mocks generated by Mockito 5.0.16 from annotations
// in oldwave/test/src/resources/product_list_adapter_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:oldwave/src/network_provider/product_list_service.dart' as _i4;
import 'package:oldwave/src/network_provider/rest_client_service.dart' as _i2;
import 'package:oldwave/src/resources/dtos/product_list_response.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeRestClientService_0 extends _i1.Fake
    implements _i2.RestClientService {}

class _FakeProductListResponse_1 extends _i1.Fake
    implements _i3.ProductListResponse {}

/// A class which mocks [ProductListService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductListService extends _i1.Mock
    implements _i4.ProductListService {
  MockProductListService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RestClientService get restClientService =>
      (super.noSuchMethod(Invocation.getter(#restClientService),
          returnValue: _FakeRestClientService_0()) as _i2.RestClientService);
  @override
  set restClientService(_i2.RestClientService? _restClientService) => super
      .noSuchMethod(Invocation.setter(#restClientService, _restClientService),
          returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.ProductListResponse> getProductList(
          String? baseUrl, String? product) =>
      (super.noSuchMethod(
              Invocation.method(#getProductList, [baseUrl, product]),
              returnValue: Future<_i3.ProductListResponse>.value(
                  _FakeProductListResponse_1()))
          as _i5.Future<_i3.ProductListResponse>);
  @override
  String toString() => super.toString();
}
