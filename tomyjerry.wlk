object tom {
	
	var energia = 50

	method energia()= energia

	method comer(raton) {
		energia += 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = 0.max(energia - distancia / 2)
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10
	}

	method puedeCorrer(distancia) {
		return energia >= distancia / 2
	}

	method puedeCazar(distancia){
		return self.puedeCorrer(distancia)
	}

	method puedeCazar(distancia, raton) {
		if (self.puedeCazar(distancia)) {
			self.correr(distancia)
			self.comer(raton)
		}
	}

	
}

object jerry {
	var edad = 2
	method edad()=edad
	method cumplirAnios() {
		edad = edad + 1
	}
	method peso() = edad * 20
}

object nibbles {
	method peso() = 35
}
