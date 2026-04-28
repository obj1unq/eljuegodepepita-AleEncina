import wollok.game.*
//import randomizer.*

object manzana {		//class Manzana
	const base= 20
	var madurez = 1
	var property position = game.at(8, 6)	//null

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
	
	method image() = "manzana.png"
}

object alpiste {		//class Alpiste
	var property position = game.at(4, 6)	//null

	method energiaQueOtorga() {
		return 40.randomUpTo(100).truncate(0)
	}

	method image() = "alpiste.png"
}

object comida {

	//method puedeAgregarComida() { if(game.allVisuals().size() < 6) self.generarComida() }

	//method generarComida() {
	//	if(1.randomUpTo(2).truncate(0) == 1) { new Manzana() } else new Alpiste()
	//	}
}






