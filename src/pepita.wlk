import src.extras.*
import wollok.game.*

object pepita {

	var energia = 100
	
	var property position = game.center()

	var image = "pepita.png" 
	
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

	method image() {
	  return image
	}

	method positionX() {
	  return position.x()
	}
	
}

