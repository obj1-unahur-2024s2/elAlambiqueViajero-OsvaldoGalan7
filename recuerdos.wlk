import lugares.*



object mate{
    method tieneYerba(){
       return
        buenosAires.presidentesConMate().contains(buenosAires.presidente())
    }
}


object bidon{
    method perteneceAlAnio(unAnio) = unAnio.between(1000, 1499) 
}

object arma{
    method perteneceAlAnio(unAnio) = unAnio.between(1500, 1999) 
}

object jardin{
    method perteneceAlAnio(unAnio) = unAnio >= 2000 
}

object lampara{
    method perteneceAlAnio(unAnio) = unAnio <= 999
}
