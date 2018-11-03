//Barrionuevo Nahuel
object blanco {

}

object negro {

}

object gris {

}

class Remera {

	var property talle

	method costoGeneral() {
		if (talle > 31 and talle < 41) {
			return 80
		} else return 100
	}

}

class RemeraLisa inherits Remera {

	var property color

	method costo() {
		if (color == negro or color == blanco or color == gris) {
			return self.costoGeneral()
		} else return self.costoGeneral() + self.costoGeneral() / 10
	}

}

class RemeraBordeada inherits Remera {
	
	var property cantColores

	method costoBordeado() {
		return cantColores * 10
	}

	method costo() {
		return self.costoGeneral() + self.costoBordeado()
	}

}

class RemeraSublimada inherits Remera {

	var property alto
	var property ancho
	var property costoPorDerechoAutor = 0

	method costo() {
		return self.costoGeneral()+ (0.5*self.superficie()) + costoPorDerechoAutor
	}

	method superficie() {
		return alto * ancho
	}

}

