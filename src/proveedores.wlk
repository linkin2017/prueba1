
 
class Estampador {

	method agregarOcambiarLeyenda (camiseta,nuevaLeyenda) {
		self.cobrarServicio(camiseta)
		camiseta.leyenda(nuevaLeyenda)
	}
	method cobrarServicio(camiseta){
		if (camiseta.leyenda().size() > 5)
			camiseta.sumarCostoAlPrecio(200)
		else
			camiseta.sumarCostoAlPrecio(100)
	}
}

class Tintoreria {
	
	method cambiarColorDeCamiseta(camiseta,color){
		self.cobrarServicio(camiseta)
		camiseta.color(color)
	}
	method cobrarServicio(camiseta){
		if (camiseta.material().sosDryfit())
			camiseta.sumarCostoAlPrecio(175)	
			else camiseta.sumarCostoAlPrecio(75)	
	}	
}

class Costurero {
	var costoServicio
	
	constructor(costo){
		costoServicio=costo		
	}
	
	method agregarRefuerzoACamiseta(camiseta,cantidad){
		self.cobrarServicio(camiseta)
		camiseta.agregarRefuerzos(cantidad)
	}
	method agregarCosturaACamiseta(camiseta,cantidad){
		self.cobrarServicio(camiseta)
		camiseta.agregarCosturas(cantidad)
	}
	method cobrarServicio(camiseta){
		camiseta.sumarCostoAlPrecio(costoServicio)
	}
}