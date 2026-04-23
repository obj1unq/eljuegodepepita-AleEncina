object izquierda{
  method siguiente(position) = if(position.x() > 0) position.left(1) else self.error("No se puede Mover")

}

object derecha{
  method siguiente(position) = if(position.x() < (game.width() - 1)) position.right(1) else self.error("No se puede Mover")
}

object arriba{
  method siguiente(position) = if(position.y() < (game.height() - 1)) position.up(1) else self.error("No se puede Mover")
}

object abajo{
  method siguiente(position) = if(position.y() > 0) position.down(1) else self.error("No se puede Mover")
}