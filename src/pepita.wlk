import src.comidas.*
import src.extras.*
import wollok.game.*
import direccion.*


object pepita {
	var energia = 100
	var property position = game.center()
	const perseguidor = silvestre 
	var estaViva = true
	
	method energia() {
		return energia
	}
	
	method comer(comida) {
		self.aumentarEnergiaDe(comida)
		game.removeVisual(manzana)
	}

	method aumentarEnergiaDe(comida) {
	  energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 9 * kms 
	}
	
	method image() = "pepita-" + self.estado() + ".png"

	method estado(){
    	return if(self.atrapada()) "gris" else "libre"
	}
	
	method atrapada() = position == perseguidor.position()

	method init() {
		energia = 100
		position = game.at(5,5)
		estaViva = true
	}

	method cambiarPosition(direccion) {
	  position = direccion.siguiente(position) 
	}

	method mover(direccion) {
	if(energia >= 0) {
		self.cambiarPosition(direccion) 
		self.volar(1) } 
	else self.morir()
	}

	method morir() {
	  game.stop()
	}

	method text() = "\n\n\n\n" + " \" " + energia + " \" "

	method color() = "0E28ED" 
}

object muerta {
  	const energia = 0
	const estaViva = false

	method energia() {
	  return energia
	}

	method estaViva() {
		return estaViva
	}

}


