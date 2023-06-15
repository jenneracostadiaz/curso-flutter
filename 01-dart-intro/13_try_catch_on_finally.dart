void main() async{
  print('Inicio del programa');
  
  try{
    final value = await httpGet('https://jenner.pe');
    print('Exito: $value');
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OPP!! algo terrible pasór: $err');
  } finally {
    print('Fin del try y catch');
  }
  
  print('Fin del programa');
}

Future<String> httpGet( String url) async {
  
  await Future.delayed( Duration(seconds: 1));
  
  throw Exception('No hay parámetros en la URL');
  
//   throw 'Error en la petición';
  
//   return 'Tenemos un valor de la petición';
  
}