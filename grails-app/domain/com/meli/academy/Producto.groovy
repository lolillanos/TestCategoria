package com.meli.academy

class Producto {
	String codigo
	String nombre
	String imagen
	Categoria categoria
	boolean disponible

    static constraints = {
		nombre matches: /[A-Z].*/
		
    }
}
