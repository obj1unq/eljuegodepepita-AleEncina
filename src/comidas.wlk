import wollok.game.*
import randomizer.*

object manzana {		
	const base= 20
	var madurez = 1
	var property position = game.at(4, 5)

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
	
	method image() = "manzana.png"

	method init() {
		self.position(randomizer.emptyPosition())
		comida.agregarSiNoEsta(self) 
	}
}

object alpiste {		//class Alpiste
	var property position = game.at(6, 8)

	method energiaQueOtorga() {
		return 40.randomUpTo(100).truncate(0)
	}

	method image() = "alpiste.png"

	method init() {
		self.position(randomizer.emptyPosition())
		comida.agregarSiNoEsta(self) 
	}
	
}

object comida {
	//method puedeGenerarComida() { if(game.allVisuals().size() < 6) self.generarComida() } //Esto es si hay clases
	method generarComida() {
		if(0.randomUpTo(2).truncate(0) == 0) { self.quitarSiEsta(manzana) manzana.init() } else self.quitarSiEsta(alpiste) alpiste.init()
	}

	method quitarSiEsta(unaComida) {
	   if (game.allVisuals().contains(unaComida)) { game.removeVisual(unaComida) } 
	}

	method agregarSiNoEsta(unaComida) {
		if (!game.allVisuals().contains(unaComida)) { game.addVisual(unaComida) }
	}
}






