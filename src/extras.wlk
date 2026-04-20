impoer wollok.game.*
import pepita.*

object silvestre {
    const presa = pepita

    method position () = game.at(presq.positionX(), 0)

    method image() = "silvestre.png"

    method positionX(){
        return Position.x()
    }

    method positionY() {
	  return Position.y()
	}
}

