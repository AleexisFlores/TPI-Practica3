<div class="col-xs-12">
	<h1>Editar producto</h1>
	<form method="post" action="<?php echo base_url() ?>index.php/productos/guardarCambios">
        <input name="id" type="hidden" value="<?php echo $producto->id ?>">
		<label for="codigo">Código:</label>
		<input value="<?php echo $producto->codigo ?>" class="form-control" name="codigo" required type="text" id="codigo" placeholder="Escribe el código">

		<label for="descripcion">Descripción:</label>
		<input value="<?php echo $producto->descripcion ?>" class="form-control" name="descripcion" required type="text" id="descripcion" placeholder="Descripcion de producto">

		<label for="precioVenta">Precio de venta: $</label>
		<input value="<?php echo $producto->precioVenta ?>" class="form-control" name="precioVenta" required type="number" id="precioVenta" placeholder="Precio de venta">

		<br><br><input class="btn btn-info" type="submit" value="Guardar">
	</form>
</div>