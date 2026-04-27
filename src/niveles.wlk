import pepita.*
import extras.*
import wollok.game.*
import direccion.*
import comidas.*

object nivel1 {
    method init() {
        const tick = game.tick(500, { muro.movete() }, false)

        pepita.init()
        game.clear()
        tick.start()

        keyboard.up().onPressDo({ pepita.mover(arriba) })
        keyboard.down().onPressDo({ pepita.mover(abajo) })
        keyboard.right().onPressDo({ pepita.mover(derecha) })
        keyboard.left().onPressDo({ pepita.mover(izquierda) })
        
        keyboard.x().onPressDo({ self.init() })
        
        // keyboard.c().onPressDo({ pepita.comerAca() })
        game.onCollideDo(manzana, { alguien => alguien.comer(manzana) })
        game.onCollideDo(alpiste, { alguien => alguien.comer(alpiste) })
        game.onCollideDo(silvestre, { alguien => alguien.morir() })
        game.onCollideDo(nido, { alguien => alguien.ganar() })
        game.onCollideDo(muro, { alguien => alguien.chocar() })
        game.onTick(800, "gravedad", { pepita.bajar(1) })
        
    game.addVisual(silvestre)
	game.addVisual(alpiste)
    game.addVisual(manzana)
	game.addVisual(nido)
    game.addVisual(muro)
	game.addVisual(pepita)
    }
}