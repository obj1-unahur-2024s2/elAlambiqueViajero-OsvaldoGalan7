import recuerdos.*
import alambique.*
object paris{
    const property recuerdo = "llavero de la torre Eiffel"

    method puedeSerVisitadoPor(vehiculo) = vehiculo.combustible() > 100 
    method combustibleConsumido(unVehiculo)  = unVehiculo.combustible() * 0.5
}

object buenosAires{
    const property presidentesConMate = ["massa","peron","DelCaño","cristina"]
    var property presidente = "milei"
    const property recuerdo = mate 

    method puedeSerVisitadoPor(vehiculo) = vehiculo.esRapido()
    method combustibleConsumido(unVehiculo)  = unVehiculo.combustible() *0.75
}

object bagdad{
    var property anio = 200
    const property recuerdos = [bidon,arma,jardin,lampara]
    method recuerdo() = recuerdos.find({elemento => elemento.perteneceAlAnio(anio)})

    method puedeSerVisitadoPor(vehiculo) = true
    method combustibleConsumido(unVehiculo)  = unVehiculo.combustible() *0.1
    
}

object lasVegas{
    var property paisHomenajeado = buenosAires

    method recuerdo() = paisHomenajeado.recuerdo()
    method puedeSerVisitadoPor(unVehiculo) = paisHomenajeado.puedeSerVisitadoPor(unVehiculo)
}