<div class="col-xs-12">
	<h1>Nuevo producto</h1>
	<?php if(!empty($this->session->flashdata())): ?>
		<div class="alert alert-<?php echo $this->session->flashdata('clase')?>">
			<?php echo $this->session->flashdata('mensaje') ?>
		</div>
	<?php endif; ?>
	<form method="post" action="<?php echo base_url() ?>index.php/productos/guardar">
		<label for="codigo">Código:</label>
		<input class="form-control" name="codigo" required type="text" id="codigo" placeholder="Escribe el código">

		<label for="descripcion">Descripción del producto:</label>
		<input class="form-control" name="descripcion" required type="text" id="descripcion" placeholder="Descripcion de producto">

		<label for="precioVenta">Precio de venta: $</label>
		<input class="form-control" name="precioVenta" required type="number" id="precioVenta" placeholder="Precio de venta">

		<br><br><input class="btn btn-info" type="submit" value="Guardar">
	</form>
</div>