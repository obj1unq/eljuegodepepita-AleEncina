import src.extras.*
import wollok.game.*

object pepita {
	var energia = 100
	var property position = game.center()
	const perseguidor = silvestre 
	
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

}


