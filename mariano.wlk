import golosinas.*
object mariano {
    const bolsa = []
    method comprarGolosina(unaGolosina){
        bolsa.add(unaGolosina)
    }
    method desecharGolosina(unaGolosina){
        bolsa.remove(unaGolosina)
    }
    method cantidadGolosina(){
        bolsa.count()
    }
    method tieneLaGolosina(unaGolosina){
        bolsa.all({ g => g == unaGolosina}) //fijarme
    }

    method probarGolosinas() {
        bolsa.forEach({ g => g.mordisco()})
    }
    method hayGolosinaSinTACC(){
        bolsa.any({ g => g.libreGluten()})
    }
    method preciosCuidados(){
        bolsa.forEach({ g => g.precio() < 10})
    }
    method primeraGolosinaDeSabor(unSabor){
        bolsa.first({ g => g.sabor() == unSabor})
    }
    method golosinaDeSabor(unSabor){
        bolsa.all({ g => g.sabor() == unSabor})
    }

    method sabores() {
        bolsa.map({ g => g.sabor() }).asSet()
    }

    method golosinaMasCara(){
        bolsa.max({ g => g.precio()})
    }
    method pesoGolosina(){
        bolsa.sum({ g => g.peso()})
    }
}