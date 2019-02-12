/*
 * Aquí podéis hacer los ejercicios y
 * practicar Javascript!
 */

class Banco {
  constructor(bankAccount) {
    this.bankAccount = bankAccount;
    this.transacciones = [];
  }

  addTransaccion(transaccion) {
    this.transacciones.push(transaccion);
  }

  calculaAmountForAccount(cuenta) {
    this.transacciones.reduce(function transaccion {
      if (transaccion.remitente == cuenta) {
      cantidad -= transaccion.cantidad;
    }
      if (transaccion.receptor == cuenta) {
      cantidad += transaccion.cantidad;
      }
     }, 0);
  }

  findTransactionsForAccount(cuenta) {
    
  }
}

class Cuenta {
  constructor(Banco, nombreCuenta) {
    this.Banco = Banco;
    this.nombreCuenta = nombreCuenta;
  }

  enviar(receptor, cantidad, referencia) {
    this.Banco.addTransaccion(
      new Transaccion(remitente, receptor, cantidad, referencia)
    );
    this.Banco.addTransaccion(
      new Transaccion(
        remitente,
        this.Banco.bankAccount,
        this.tarifa,
        "Comisión por transferencia"
      )
    );
  }

  get saldo() {
    return this.Banco.calculaAmountForAccount(this);
  }

  get transacciones() {
    return this.Banco.findTransactionsForAccount(this);
  }
}

class CuentaPersonal extends Cuenta {
  constructor(nombreCuenta, referencia) {
    super(nombreCuenta, referencia);
  }
  get tarifa() {
    return 0.01;
  }
}

class CuentaComercial extends Cuenta {
  constructor(nombreCuenta, referencia) {
    super(nombreCuenta, referencia);
  }
  get tarifa() {
    return 0.02;
  }
}

class Transaccion {
  constructor(remitente, receptor, cantidad, referencia) {
    this.remitente = remitente;
    this.receptor = receptor;
    this.cantidad = cantidad;
    this.referencia = referencia;
  }
}

const banco1 = new Banco("Santander");
console.log(banco1);

const cuentaPersonal1 = new CuentaPersonal("Mi cuenta", banco1);
console.log(cuentaPersonal1);

const cuentaComercial1 = new CuentaComercial("Cuenta Empresa", banco1);
console.log(cuentaComercial1);

const transaccion1 = new Transaccion(
  cuentaPersonal1,
  cuentaComercial1,
  5000,
  "Saldo cuenta"
);
console.log(transaccion1);
