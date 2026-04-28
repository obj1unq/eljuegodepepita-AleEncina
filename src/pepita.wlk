import comidas.*
import extras.*
import direccion.*
import wollok.game.*
object pepita {
	var energia = 100
	var property position = game.center()
	const perseguidor = silvestre 
	var estaViva = true
	
	method energia() { return energia }
	
	method comer(comida) { 
		try { self.aumentarEnergiaDe(comida) game.removeVisual(comida) } 
			catch c: wollok.lang.Exception { self.error("No es una comida") } 
	}

	method aumentarEnergiaDe(comida) { energia = energia + comida.energiaQueOtorga() }

	method volar(kms) { energia = energia - 9 * kms	}
	
	method image() = "pepita-" + self.estado() + ".png"

	method estado() { return if( self.atrapada() ) "gris" else "libre" }
	
	method atrapada() = position == perseguidor.position()

	method init() { energia = 100 position = game.at(5,5) estaViva = true }

	method cambiarPosition(direccion) { position = direccion.siguiente(position) }

	method mover(direccion) { if(energia >= 0) { self.cambiarPosition(direccion) self.volar(1) } else self.morir() }

	method text() = "\n\n\n\n" + " \" " + energia + " \" "

	method color() = "0E28ED" 

	method morir() { self.quitarEventos() game.say(self, "¡PERDÍ!") self.finalizar() }

	method ganar() { self.quitarEventos() game.say(self, "¡GANE!") self.finalizar() }

	method quitarEventos() {
	  game.removeTickEvent("gravedad")
	  //game.removeTickEvent("comidas")
	}

	method finalizar() { game.schedule(2000, { game.stop() } ) }

	method caer() { self.cambiarPosition(abajo) }
}



