impoer wollok.game.*
import pepita.*

object silvestre {
    const presa = pepita

    method position () = game.at(presq.positionX(), 0)

    method image() = "silvestre.png"

    method x(){
        const xPresa = presa.position.x()

        return if(xPresa >= 3) xPresa else 3
    }

    method positionY() {
	  return Position.y()
	}

}

