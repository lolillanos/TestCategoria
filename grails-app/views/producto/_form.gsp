<%@ page import="com.meli.academy.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="producto.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${com.meli.academy.Categoria.list()}" optionKey="id" required="" optionValue="${{it.nombre}}" value="${productoInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="producto.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigo" required="" value="${productoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'disponible', 'error')} ">
	<label for="disponible">
		<g:message code="producto.disponible.label" default="Disponible" />
		
	</label>
	<g:checkBox name="disponible" value="${productoInstance?.disponible}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'imagen', 'error')} required">
	<label for="imagen">
		<g:message code="producto.imagen.label" default="Imagen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="imagen" required="" value="${productoInstance?.imagen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${productoInstance?.nombre}"/>

</div>

