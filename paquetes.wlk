import destinos.*
object paquete {
    var property destino = puenteDeBrooklyn 
    var estaPago = false
    method puedeEntregarse(mensajero){
        return destino.dejaPasar(mensajero) && estaPago
    }
   method registrarPago(){
    estaPago = true
   }
   method rechazarPago() {
     estaPago = false
   }
   method precio() = 50
   method estaPago() = estaPago
}
object paquetito {
    var property destino = puenteDeBrooklyn 
    method puedeEntregarse(mensajero){
        return destino.dejaPasar(mensajero) 
    }
    method precio() = 0
    method estaPago(){
       return true
    }
}
object paqueton {
    const destinos = #{}
    var importeAbonado = 0
    method registrarPago(unValor){
        importeAbonado = (importeAbonado + unValor).min(self.precio())
    }
    method precio(){
      return destinos.size() * 100
    }
    method estaPago(){
       return importeAbonado == self.precio()
    }
}