import pepita.*
import extras.*
import wollok.game.*
import direccion.*
import comidas.*

object nivel1 {
    method init() {
    pepita.init()
    game.clear()

    keyboard.up().onPressDo({ pepita.mover(arriba) })
    keyboard.down().onPressDo({ pepita.mover(abajo) })
    keyboard.right().onPressDo({ pepita.mover(derecha) })
    keyboard.left().onPressDo({ pepita.mover(izquierda) })
    keyboard.x().onPressDo({ self.init() })
        
    game.onCollideDo(manzana, { alguien => alguien.comer(manzana) })
    game.onCollideDo(alpiste, { alguien => alguien.comer(alpiste) })
    game.onCollideDo(silvestre, { alguien => alguien.morir() })
    game.onCollideDo(nido, { alguien => alguien.ganar() })
    game.onTick(800, "gravedad", { pepita.bajar() })
        
    game.addVisual(silvestre)
	game.addVisual(alpiste)
    game.addVisual(manzana)
	game.addVisual(nido)
	game.addVisual(pepita)
    }
}