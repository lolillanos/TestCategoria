package com.meli.academy

class Categoria {
	String nombre
	static hasMany = [producto:Producto]

    static constraints = {
    }
}
