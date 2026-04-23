import src.extras.*
import wollok.game.*
import direccion.*
import pepita.*
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
        
        //keyboard.c().onPressDo({ pepita.comerAca() })
        game.onCollideDo(manzana, { alguien => alguien.comer(manzana) })
        game.onCollideDo(silvestre, { alguien => alguien.morir() })
        game.onTick(1000, "gravedad", {     })
        
        game.addVisual(silvestre)
        game.addVisual(pepita)
        game.addVisual(manzana)
    }
}