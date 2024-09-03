<?php

namespace Controllers;

use Exception;
use Model\Usuario;
use MVC\Router;

class DetalleController
{

    public static function estadistica(Router $router)
    {
        $router->render('usuario/estadistica');
    }

    public static function detalleEnviosAPI()
    {
        try {

            $sql = 'SELECT USU_NOMBRE AS USUARIOS, SUM(DETALLE_CANTIDAD) AS CANTIDAD_ENVIOS FROM DETALLE_ENVIOS
            INNER JOIN USUARIO ON DETALLE_ENVIO = USU_ID WHERE DETALLE_SITUACION = 1
            GROUP BY USU_NOMBRE';

            $datos = Usuario::fetchArray($sql);

            echo json_encode($datos);
        } catch (Exception $e) {
            echo json_encode([
                'detalle' => $e->getMessage(),
                'mensaje' => 'Ocurrió un error',
                'codigo' => 0
            ]);
        }
    }
}












































