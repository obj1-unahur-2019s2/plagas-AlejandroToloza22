class  Hogar {
	var property nivelDeMugre
	var property confortQueOfrece
	
	method esBueno() {
		return nivelDeMugre<=confortQueOfrece/2
	}
	
}

object nivelDeProduccion {
	var property nivel = 1000
}

class Huerta {
	var property capacidadDeProduccion
	const property nivel=nivel.nivelDeProduccion()
	method esBueno() {
		return capacidadDeProduccion > nivel.nivelDeProduccion()
	}
	method recibirAtaque(plaga) {
		capacidadDeProduccion -= plaga.nivelDeDanio() *0.1
		if (plaga.transmiteENfermedades()) {
			capacidadDeProduccion-= 10
		}
	}
}

class Mascota {
	var property nivelDeSalud
	
	method esBuena() {
		return nivelDeSalud > 250
	}
	
	method recibirAtaque(plaga) {
		if (plaga.transmiteEnfermedades()) {
			nivelDeSalud = 0.max(nivelDeSalud - plaga.nivelDeDanio())
		}
	}
}

class Barrio {
	const property elementos = []
	method agregarElemento(elemento) { elementos.add(elemento)}
	method sacarElemento(elemento) {elementos.remove(elemento)}
	
	method esCopado() = return elementos.count({c=>c.esBueno()}) > elementos.count({c=>not c.esBueno()})
}