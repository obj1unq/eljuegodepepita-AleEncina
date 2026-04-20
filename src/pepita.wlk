import src.extras.*
import wollok.game.*

object pepita {

	var energia = 100
	
	var property position = game.center()

	var perseguidor = silvestre 
	
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method pepitaCazada(){
		image = "pepita-gris.png"
	}

	method image() = "pepita-" + self.estado() + ".png"


	method positionX() {
	  return position.x()
	}

 method estado(){
    return if(self.atrapada()) "gris" else "libre"
	

 method atrapada() = posición == perseguidor.position()
}

