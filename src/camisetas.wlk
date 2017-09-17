import materiales.*
import clientes.*
import proveedores.*

class Camiseta {
	var cliente
	var material
	var colorBase	
	var cantidadRefuerzos
	var cantidadCosturas
	var leyenda=''
	var precio
	
	constructor (unCliente, unMaterial, unColor){
		cliente=unCliente
		material=unMaterial
		colorBase=unColor
		precio=self.calcularPrecioInicial()
	}
	constructor (unCliente, unMaterial, unColor, refuerzos, costuras){
		cliente=unCliente
		material=unMaterial
		colorBase=unColor
		cantidadRefuerzos=refuerzos
		cantidadCosturas=costuras
		precio=self.calcularPrecioInicial()
	}
	
	method leyenda(texto){
		leyenda=texto
	}
	method leyenda(){
		return leyenda
	}
	method color(){
		return colorBase
	}
	
	method calcularPrecioInicial(){
		return self.costoPorMaterial() + self.costoPorResistencia()		
	}
	
	method costoPorMaterial(){
		if (material.sosDryfit())
			return 550
		else if (colorBase='negro')
				return 400
				else
					return 300		
	}
	
	method costoPorResistencia(){
		return 50 * self.gradoResistencia()
	}
	
	method gradoResistencia(){
		return self.resistenciaBase() * self.adicionalCosturaExtra()
	}
	
	method resistenciaBase() {
		return material.resistencia()+self.resistenciaPorRefuerzos()
	}
	
	method resistenciaPorRefuerzos(){
		return (0.5 * cantidadRefuerzos)
	}
	
	method adicionalCosturaExtra(){
		return (1 + (0.2*cantidadCosturas))
	}
	
	method sumarCostoAlPrecio(costo){
		precio=precio+costo
	}
	
	method agregarRefuerzos(cantidad){
		cantidadRefuerzos=cantidadRefuerzos+cantidad
	}
	
	method agregarCosturas(cantidad){
		cantidadCosturas=cantidadCosturas+cantidad
	}
}
