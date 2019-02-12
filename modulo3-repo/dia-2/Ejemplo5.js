// Una clase que se llame polígono, otras cuatro que desciendan de polígono triángulo, rectángulo,
// cuadrado y círculo.

class Poligono {
  constructor(nombre, numLados) {
    this.nombre = nombre;
    this.numLados = numLados;
  }
  getArea() {
    console.log("No podemos calcular el área");
  }
}

class Triangulo extends Poligono {
  constructor(base, altura) {
    super("triangulo", 3);
    this.base = base;
    this.altura = altura;
  }
  getArea() {
    return (this.base * this.altura) / 2;
  }
}

class Rectangulo extends Poligono {
  constructor(base, altura) {
    super("rectangulo", 4);
    this.base = base;
    this.altura = altura;
  }
  getArea() {
    return this.base * this.altura;
  }
}

class Cuadrado extends Rectangulo {
  constructor(lado) {
    super(lado, lado);
    this.nombre = "cuadrado";
  }
}

class Circulo extends Poligono {
  constructor(radio) {
    super("circulo", 1);
    this.radio = radio;
  }
  getArea() {
    return Math.PI * this.radio * this.radio;
  }
}

const poligono = new Poligono("hexagono", 6);
console.log(poligono);
console.log(poligono.getArea());

const triangulo = new Triangulo(4, 2);
console.log(triangulo);
console.log(triangulo.getArea());

const rectangulo = new Rectangulo(4, 2);
console.log(rectangulo);
console.log(rectangulo.getArea());

const cuadrado = new Cuadrado(4);
console.log(cuadrado);
console.log(cuadrado.getArea());

const circulo = new Circulo(3);
console.log(circulo);
console.log(circulo.getArea());
