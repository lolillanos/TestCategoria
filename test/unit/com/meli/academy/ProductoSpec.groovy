package com.meli.academy

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Producto)
class ProductoSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "Probar que el nombre comience con una letra mayuscula"() {
		when: 'El nombre comienza con una letra minuscula'
			def g = new Producto (nombre: 'marco', imagen:'loli', codigo: '2323kk', disponible: true)
			
		then: 'la validacion no pasa'
			!g.validate()
		
		when: 'El nombre comience con una letra mayuscula'
			g = new Producto(nombre: 'Marco', imagen:'loli', codigo: '2323kk', disponible: true)
		then: 'la validacion no pasa'
			g.validate()
    }
}
