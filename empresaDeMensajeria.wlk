import mensajeros.*
object empresa {
  const property mensajeros = []
 
  method contratarMensajero(mensajero){
    mensajeros.add(mensajero) 
  }
  method despedirMensajero(mensajero){
    mensajeros.remove(mensajero)
  }
  method despedirTodosLosMensajeros(){
    mensajeros.clear()
  }
  method esGrande(){
    return mensajeros.size() > 2
  }
  method primerMensajeroPuedeEntregar(paquete){
    return paquete.puedeEntregarse(mensajeros.first())
  }
  method pesoUltimoMensajero(){
    return mensajeros.last().peso()
  }
  method pesoTotalDeLosMensajeros(){
   return mensajeros.sum({m => m.pesoTotal() })
  }
    method alMenosUnMensajeroPuedeEntregar(paquete){
       return mensajeros.any({m => paquete.puedeEntregarse(m)})
    }
    method losQuePuedenLlevar(paquete){
     return   mensajeros.filter({m => paquete.puedeEntregarse(m)})
    }

}