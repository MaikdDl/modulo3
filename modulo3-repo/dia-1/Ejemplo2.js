function Profesor(nombre, edad) {
  this.nombre = nombre;
  this.edad = edad;
}

const profesor1 = new Profesor("Marcos", 44);
console.log(profesor1.nombre);
profesor1.nombre = "Marcos Javier";
console.log(profesor1.nombre);
Profesor.prototype.soyElProfe = function() {
  console.log("Soy el profe " + this.nombre);
};

profesor1.soyElProfe();

const profesor2 = new Profesor("Pablo", 23);

profesor2.soyElProfe();

Profesor.prototype.cumple = function() {
  console.log(this.edad + 1);
};

profesor1.cumple();
profesor2.cumple();
