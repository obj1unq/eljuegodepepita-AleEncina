import wollok.game.*
import pepita.*

object silvestre {
    const presa = pepita

    method position () = game.at(self.x(), 0)

    method image() = "silvestre.png"

    method x(){
        const xPresa = presa.position().x()

        return if(xPresa >= 3) xPresa else 3
    }
}

object nido {
   var property position = game.at(9,8)

   method image() = "nido.png"
}

object muro {
    var property position = game.at(3,3)

    method image() = "muro.png"

    method movete() {
      const x = (0.. game.width()-1).anyOne()
      const y = (0.. game.height()-1).anyOne()
    }
}

