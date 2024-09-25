import paises.*
import recuerdos.*


object luke {
    const property lugaresQueVisito = []

    method cantidadDeLugaresQueVisito() = lugaresQueVisito.size()

    method ultimoRecuerdo() = lugaresQueVisito.last().recuerdo()

    method viajarA(unLugar){

    }
}