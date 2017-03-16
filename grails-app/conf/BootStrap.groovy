import com.meli.academy.Producto
import com.meli.academy.Categoria

class BootStrap {

    def init = { servletContext ->
		
		JSON.registerObjectMarshaller(Producto) {
			def returnArray = [:]
			returnArray['codigo'] = it.codigo
			returnArray['nombre'] = it.nombre
			returnArray['disponible'] = it.disponible
			returnArray['imagen'] = it.imagen
			return returnArray
			}
			
		JSON.registerObjectMarshaller(Categoria) {
			def returnArray = [:]
			returnArray['nombre'] = it.nombre
			return returnArray
			}
		
    }
    def destroy = {
    }
}
