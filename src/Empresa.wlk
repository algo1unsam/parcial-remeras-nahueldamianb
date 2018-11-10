object empresa {
//Punto C
	var property pedidos = []

	//1
	method recibirPedido(unPedido) {
		pedidos.add(unPedido)
	}

	method cantPedidos() {
		return pedidos.size()
		
	}
	//2
	method totalFacutrado(){
		return pedidos.sum({unP => unP.totalFacuturado()})
	}
	//3
	method totalSucursal(unaSucursal){
		pedidos.sum({unp => unp.sucursal() == unaSucursal}) // TODO sum espera un bloque numérico, este es booleano
	}
	//4
	method sucursalMasFacuturo(){
		pedidos.max({unP => unP.sucursal()})
	}
}

class Sucursal {

	var property cantidadMinimaParaDescuentos = 0

}

class Pedido {

	var property tipo
	var property cantidad
	var property sucursal
	
	method totalFacturado (){
		
	}
	method precioBase(){
		return tipo.costo()* cantidad
	}
	
	method seAplicaDescuento (){
		return sucursal.cantidadMinimaParaDescuentos() >= cantidad
	}

}

object descuento {
	
}

