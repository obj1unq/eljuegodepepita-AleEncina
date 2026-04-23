import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	var property position = game.at(6,4)
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
	
	method image() = "manzana.png"

}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

}

