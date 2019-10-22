class  Plaga {
	var property poblacion
	
	method aumentarPoblacion(valor) { poblacion *= valor}
	method nivelDeDanio() {
		return 0
	}
	
	method transmiteEnfermedades() {
		return poblacion >= 10
	}
	
	method atacar(elemento) {
		self.aumentarPoblacion(1.1) elemento.recibirAtaque(self) //self siempre va a ser sobre el class con el que se hizo el new
																// si se hizo una cuca con ese new, entonces es una cuca el sel0
	}
}

class Cucarachas inherits Plaga {
	var property pesoPromedio
	
	override method nivelDeDanio() = return self.poblacion()
	override method transmiteEnfermedades() = super() && pesoPromedio > 10
	override method atacar(elemento) {
		super(elemento)
	}
}

class Pulgas inherits Plaga {
	
	
}