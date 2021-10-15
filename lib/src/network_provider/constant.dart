class Constant {
  // static const url_back_fast_api = 'd1eylshvb8atwe.cloudfront.net'; //usar la otra porque en esta no tienen registrado nada
  static const url_back_fast_api = '3.143.212.203'; //http
  // static const url_back_spring_boot = 'localhost:8080'; //Ya o existe el grupo
  static const url_back_flask = '54.183.179.149:8080';
  // static const url_back_flask = 'proyectoflaskoldwave.herokuapp.com'; //test
  static const url_back_graphql = 'http://54.146.30.122:3100/graphql';
  static const path_product_list = '/api/search';
  static const path_detail_product = '/api/item/';

  static const https = {
    url_back_fast_api: false,
    url_back_flask: false,
    url_back_graphql: false,
  };
}
