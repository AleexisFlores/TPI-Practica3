<?php
    class ProductoModel extends CI_Model{
        public $id;
        public $codigo;
        public $descripcion;
        public $precioVenta;

        public function __construct(){
            $this->load->database();
        }

        public function nuevo($codigo, $descripcion, $precioVenta){
            $this->codigo = $codigo;
            $this->descripcion = $descripcion;
            $this->precioVenta = $precioVenta;
            return $this->db->insert('productos', $this);
        }

        public function guardarCambios($id, $codigo, $descripcion, $precioVenta){
            $this->id = $id;
            $this->codigo = $codigo;
            $this->descripcion = $descripcion;
            $this->precioVenta = $precioVenta;
            return $this->db->update('productos', $this, array("id" => $id));
        }

        public function todos(){
            return $this->db->get("productos")->result();
        }
        public function eliminar($id){
            return $this->db->delete("productos", array("id" => $id));
        }

        public function uno($id){
            return $this->db->get_where("productos", array("id" => $id))->row();
        }

        public function porCodigoDeBarras($codigoDeBarras){
            return $this->db->get_where("productos", array("codigo" => $codigoDeBarras))->row();
        }
    }
?>