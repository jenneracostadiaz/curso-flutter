//Clase abstracta Animal
abstract class Animal {}
 
//Clases que heredan de Animal
class Mamifero extends Animal {}
 
class Ave extends Animal {}
 
class Pez extends Animal {}
 
//mixins
mixin Volador {
  void volar() => print("Estoy volando");
}
 
mixin Caminante {
  void caminar() => print("Estoy caminando");
}
 
mixin Nadador {
  void nadar() => print("Estoy nadando");
}
 
//Mamiferos
class Delfin extends Mamifero with Nadador {}
 
class Murcielago extends Mamifero with Volador, Caminante {}
 
class Gato extends Mamifero with Caminante {}
 
//Aves
class Paloma extends Ave with Caminante, Volador {}
 
class Pato extends Ave with Caminante, Nadador, Volador {}
 
//Peces
class Tiburon extends Pez with Nadador {}
 
class PezVolador extends Pez with Nadador, Volador {}
 
//Función main principal
void main() {
  print("Flipper");
  final flipper = Delfin();
  flipper.nadar();
 
  print("Batman");
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
 
  print("namor");
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}
