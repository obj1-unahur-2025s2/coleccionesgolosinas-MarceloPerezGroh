class Bombon {
  var peso = 15
  method libreGluten() = true
  method mordisco() {
    peso = (peso * 0.8) - 1 
  }
  method precio() = 5
  method sabor() = frutilla
  method peso() = peso

}
class Alfajor {
  var peso = 300
  method libreGluten() = false
  method precio()  = 12
  method sabor() = chocolate
  method mordisco() {
    peso = peso - (peso * 0.8)
  }
  method peso() = peso
}
class Caramelo {
  const peso = 5
  method libreGluten() = true
  method precio() = 1 
  method sabor() = frutilla
  method peso() = peso
  method mordisco() = peso - 1

}
class Chupetin {
  var peso = 7
  method libreGluten() = true
  method precio() = 2
  method sabor() = naranja
  method peso() = peso
  method mordisco() {
    if (peso >= 2) {
      peso = peso * 0.9 //deja el 90% del valor original.
    }
  }
}
class Oblea {
  var peso = 250  
  method libreGluten() = true
  method precio() =  5
  method sabor() = vainilla
  method peso() = peso
  method mordisco() {
    if (peso >= 70){
      peso = peso * 0.5
    }else{
      peso = peso - (peso * 0.25)
    }
  } 
  
}
class Chocolatin {
  var  pesoInicial
  var comido = 0
  method libreGluten() = false
  method precio()  = 0.5 * pesoInicial
  method sabor() = chocolate
  method pesoInicial(unPeso) {
    return (pesoInicial - 2).max(0)
  }
  method mordisco()  {
    comido = comido + 2
  }
}
class GolosinaBañada {
  var golosinaInterior
  var pesoBaño = 4
  method golosinaInterior(unaGolosina){
    golosinaInterior = unaGolosina
  }
  method libreGluten() = golosinaInterior.libreGluten()
  method precio() = golosinaInterior.precio() + 2
  method sabor() = golosinaInterior.sabor()
  method peso() = golosinaInterior.peso() + pesoBaño
  method mordisco() {
    golosinaInterior.mordisco()
		pesoBaño = (pesoBaño - 2).max(0) 
  }
}


class Tuttifrutti {
	var libreDeGluten
	const sabores = [frutilla, chocolate, naranja]
	var saborActual = 0
	
	method mordisco() { saborActual += 1 }	
	method sabor() { return sabores.get(saborActual % 3) }	

	method precio() { return (if(self.libreGluten()) 7 else 10) }
	method peso() { return 5 }
	method libreGluten() { return libreDeGluten }	
	method libreGluten(valor) { libreDeGluten = valor }
}

/*
 * Los sabores
 */
object frutilla { }
object chocolate { }
object vainilla { }
object naranja { }
object limon { }