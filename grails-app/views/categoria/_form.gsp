.<%@ page import="com.meli.academy.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="categoria.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${categoriaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'producto', 'error')} ">
	<label for="producto">
		<g:message code="categoria.producto.label" default="Producto" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.producto?}" var="p">
    <li><g:link controller="producto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="producto" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'producto.label', default: 'Producto')])}</g:link>
</li>
</ul>


</div>

