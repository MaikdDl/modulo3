/*
 * Aquí podéis hacer los ejercicios y
 * practicar Javascript!
 */

class Profesor {
  constructor(nombre, edad) {
    this.nombre = nombre;
    this._edad = edad;
  }
  soyElProfe() {
    console.log("Soy el profe " + this.nombre);
  }
  get edadMinima() {
    return 12;
  }
  get edad() {
    return this._edad;
  }

  set edad(value) {
    if (value < this.edadMinima) {
      console.log("Demasiado joven para dar la clase");
      return;
    }
    this.edad = value;
  }
  static crearProfesorBot() {
    //remember, this = Article
    return new this("BotMarcos", 99);
  }
}

const profesor1 = new Profesor("Marcos", 44);
console.log(profesor1.edad);
profesor1._edad = 20;
console.log(profesor1.edad);
profesor1.edad = 11;
console.log(profesor1._edad);
