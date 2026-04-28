import wollok.game.*
import randomizer.*
class Manzana {
	const base= 20
	var madurez = 2
	var property position = null

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
	
	method image() = "manzana.png"
}

class Alpiste {
	var property position = null

	method energiaQueOtorga() {
		return 40.randomUpTo(100).truncate(0)
	}

	method image() = "alpiste.png"
}

object comida {

	method puedeAgregarComida() { if(game.allVisuals().size() < 6) self.generarComida() }

	method generarComida() {
		if(0.randomUpTo(2).truncate(0) == 0) { new Manzana() } else new Alpiste()
		}






}






