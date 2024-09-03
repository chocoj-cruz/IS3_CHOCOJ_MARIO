<?php

namespace Model;

class Usuario extends ActiveRecord{
    protected static $tabla = 'usuario';
    //aca va el nombre del id de la tabla
    protected static $idTabla = 'usu_id';
    //aca van los nombres de los campos
    protected static $columnasDB = ['usu_nombre', 'usu_serial', 'usu_password', 'usu_situacion'];

    public $usu_id;
    public $usu_nombre;
    public $usu_serial;
    public $usu_password;
    public $usu_situacion;


    public function __construct($args = [])
    {
        $this->usu_id = $args['usu_id'] ?? null;
        $this->usu_nombre = $args['usu_nombre'] ?? '';
        $this->usu_serial = $args['usu_serial'] ?? '';
        $this->usu_password = $args['usu_password'] ?? '';
        $this->usu_situacion = $args['usu_situacion'] ?? '1';
} 
    


}