
object pepe {

	var faltas = 0
	
	var categoria
	var tipoBonoPresentismo
	var tipoBonoResultado
	
	method categoria(unaCategoria){
		categoria = unaCategoria
	}
	
	method tipoBonoPresentismo(unBonoPresentismo){
		tipoBonoPresentismo = unBonoPresentismo
	}
	
	method tipoBonoResultado(unBonoResultado){
		tipoBonoResultado = unBonoResultado
	}

	method sueldo(){
		return categoria.neto() + tipoBonoPresentismo.valorBono(faltas) + 
			tipoBonoResultado.valorBono(categoria)
	}


}


object categoriaCadete {
	
	method neto(){
		return 1500
	}
	
}

object categoriaGerente {
	
	method neto(){
		return 1000
	}
	
}


object bonoPresentismoVariable {
	
	method valorBono(cantidadDeFaltas){
		if(cantidadDeFaltas == 0){
			return 100
		} else if(cantidadDeFaltas == 1){
			return 50
		} else {
			return 0
		}
	}
	
}

object bonoPresentismoFijo {
	
	method valorBono(cantidadDeFaltas){
		return 0
	}
	
}


object bonoResultadoPorcentualSobreElNeto {
	
	method valorBono(categoria){
		return categoria.neto() * 0.1
	}
	
}

object bonoResultadoFijo {
	
	method valorBono(categoria){
		return 80
	}
	
}

object bonoResultadoNoDevuelveNada {
	
	method valorBono(categoria){
		return 0
	}
	
}