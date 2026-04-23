import src.extras.*
import wollok.game.*
import direccion.*


object pepita {
	var energia = 100
	var property position = game.center()
	const perseguidor = silvestre 
	var estaViva = true
	
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 9 - kms 
	}
	
	method energia() {
		return energia
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

	method mover(direccion) {
	return position.siguiente(direccion)
	self.volar(1)
	}

	method text() = "\n\n\n\n" + energia + " \" "

	method color() = "0E28ED" 

}

