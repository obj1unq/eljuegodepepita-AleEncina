import wollok.game.*


object manzana {
	const base= 20
	var madurez = 2
	var property position = game.at(6,4)

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
	
	method image() = "manzana.png"
}

class Manzana{
	const base= 20
	var madurez = 2
	var property position = game.at(6,4)
	
	method image() = "manzana.png"
}

object alpiste {
	var property position = game.at(8,6)

	method energiaQueOtorga() {
		return 20
	}

	method image() = "alpiste.png"
}

