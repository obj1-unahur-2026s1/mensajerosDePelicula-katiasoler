object bicicleta{
    method peso(){
        return 5
    }
}
object camion{
    var cantidadDeAcoplados = 1 
    method peso(){
        return cantidadDeAcoplados * 500
    }
    method cambiarCantidadDeAcoplados(nuevaCantidad){
        cantidadDeAcoplados = nuevaCantidad
    }
}