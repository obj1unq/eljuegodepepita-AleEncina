import pepita.*

object silvestre {
    
    method position () = game.at(pepita.positionX(), 0)

    method image() = "silvestre.png"

    method positionX(){
        return Position.x()
    }

    method positionY() {
	  return Position.y()
	}
}

