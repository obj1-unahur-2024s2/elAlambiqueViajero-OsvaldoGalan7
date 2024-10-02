import lugares.*
import recuerdos.*


object luke {
    const property lugaresQueVisito = []
    var vehiculo = alambiqueVeloz

    method cantidadDeLugaresQueVisito() = lugaresQueVisito.size()

    method ultimoRecuerdo() = lugaresQueVisito.last().recuerdo()

    method vehiculo(unVehiculo){ vehiculo = unVehiculo}

    method viajarA(unLugar){
        if(vehiculo.puedeViajarA(unLugar)){
            lugaresQueVisito.add(unLugar)
            vehiculo.bajarCombustible(unLugar)
        }
    }
}


object alambiqueVeloz{
    var combustible = 250
    method esRapido() = combustible == 250

    method combustible() = combustible
    
    method cargarCombustible(cantidad){ combustible = 250.min(combustible + cantidad)}

    method puedeViajarA(unLugar) = unLugar.puedeSerVisitadoPor(self)

    method bajarCombustible(unLugar){ combustible = combustible - unLugar.combustibleConsumido(self)}
}