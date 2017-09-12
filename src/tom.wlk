//si quiero sacarlo desde otro lado le pongo import nombreDelArchivo.*    (trae todo, si queres algo en particular le pones el objeto)
class Gato {
var energia = 10
//var velocidad
const velocidadBase = 10

//solucion 1 NO ES MUY UTIL
/*method comerRaton(peso){
energia= energia +12+peso 
}*/


//solucion 2 ES MAS UTIL EL ENCAPSULAMIENTO
method comerRaton(raton){
	energia=energia+12+raton.peso()
}

method energiaObtenida(raton){
	return 12+raton.peso()
}

//self es el mensaje a mi mismo 
method correr(tiempo){
	energia = energia - (0.5 * self.calcularDistancia(tiempo))
}

method energiaGastada(distancia){
	return 0.5 * distancia
}

method calcularVelocidad(){
	return velocidadBase +energia/10
}

method calcularDistancia(tiempo){
	return self.calcularVelocidad() * tiempo
}

method meConvieneComerA(raton, distancia){
	return ((self.energiaObtenida(raton))>self.energiaGastada(distancia)
) 
}
}


class Raton {
	var peso = 10
method peso() {
	return peso
 }	
}
	
	
	
	 //Lograr que tom entienda el mensaje meConvieneComerA(unRaton, unaDistancia) que devuelve true 
	 //si la energía que gana por comer al ratón es mayor a la que consume corriendo la distancia, que 
	 //está medida en metros. 
	 
