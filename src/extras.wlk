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
   var property position = game.at(8,8)

   method image() = "nido.png"
}

