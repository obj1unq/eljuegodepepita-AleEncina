import pepita.*
import extras.*
import wollok.game.*
import direccion.*
import comidas.*
object nivel1 {
    method init() {
    pepita.init()
    game.clear()

    config.teclas()
    config.colisiones()
    config.eventos()
    config.visuales()
    }
}

object config {
    method teclas() {
        keyboard.x().onPressDo({ pepita.init() })  
        keyboard.up().onPressDo({ pepita.mover(arriba) })
        keyboard.down().onPressDo({ pepita.mover(abajo) })
        keyboard.right().onPressDo({ pepita.mover(derecha) })
        keyboard.left().onPressDo({ pepita.mover(izquierda) })
    }

    method colisiones() {
        game.onCollideDo(pepita, { algo => pepita.comer(algo) })
        game.onCollideDo(nido, { alguien => alguien.ganar() })
    }

    method eventos() {
        game.onTick(800, "gravedad", { pepita.caer() })
        //game.onTick(800, "comidas", { comida.puedeAgregarComida() })
    }

    method visuales() {
        game.addVisual(silvestre)
	    game.addVisual(alpiste)
        game.addVisual(manzana)
	    game.addVisual(nido)
	    game.addVisual(pepita)
    }

    method datos() {
        game.title("Pepita")
	    game.cellSize(50)    
	    game.height(15)
	    game.width(15)
	    game.boardGround('fondo2.jpg')  
    }
}