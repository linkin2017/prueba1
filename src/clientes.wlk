object sacachispas{
	
	const gradoResistenciaMinimo = 9
	
	method aceptaCamiseta(unaCamiseta){
		return unaCamiseta.gradoResistencia() > gradoResistenciaMinimo
	}
}

object sanMiguel{
	
	const color = 'verde'
	
	method aceptaCamiseta(unaCamiseta){
		return unaCamiseta.color() == color
	}
}