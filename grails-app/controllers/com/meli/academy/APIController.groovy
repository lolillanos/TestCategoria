package com.meli.academy
import com.meli.academy.Producto
import com.meli.academy.Categoria

import grails.converters.JSON

class APIController {

    def index() { }
	
	def jsonCategoria = {
		def categoria = [categoriaList: [Categoria.list().sort{it.nombre}]]
		def producto = [productoList: [Producto.list()]]
		
		render categoria as JSON
		}
	
}
