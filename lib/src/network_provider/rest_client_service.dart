import 'package:http/http.dart' as http;
import 'dart:async';

class RestClientService {
  final _headers = {'Content-Type': 'application/json'};
  Future<GenericResponse> get(Uri uri) async {
    try {
      final response =  await http.get(uri, headers: _headers);
      if(response.statusCode == 200) {
        return _genericResponseFromJson(0, "", response.body);
      } else {
          return _genericResponseFromJson(1, response.body, null);
      }
    } catch (e) {
      if( e.toString().contains("No route to host") ||
          e.toString().contains("No address associated with hostname") ||
          e.toString().contains("Connection refused") ||
          e.toString().contains("Network is unreachable") ) {
        return _genericResponseFromJson(1, "Consulte la conexión de datos o wifi de su dispositivo, no es posible conectarse con el servidor.", null);
      } else {
          return _genericResponseFromJson(1, 'Error interno. Contacte con los desarrolladores. Detalles: ${e.toString()}', null);
      }
    }
  }
  GenericResponse _genericResponseFromJson(int statusCode, String message, dynamic data) {
    var genericResponse = new GenericResponse(statusCode, message, data);
    genericResponse.statusCode = statusCode;
    return genericResponse ;
  }
}

class GenericResponse {
  int statusCode;
  String message;
  dynamic data;
  GenericResponse(
    this.statusCode,
    this.message,
    this.data
  );
}