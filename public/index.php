<?php 
require_once __DIR__ . '/../includes/app.php';


use MVC\Router;
use Controllers\AppController;
use Controllers\DetalleController;
use Controllers\LoginController;

$router = new Router();
$router->setBaseURL('/' . $_ENV['APP_NAME']);

$router->get('/', [AppController::class,'index']);

$router->get('/usuario', [DetalleController::class, 'estadistica']);
$router->get('/API/detalle/estadistica', [DetalleController::class, 'detalleEnviosAPI']);
$router->get('/logout', [LoginController::class, 'logout']);
$router->get('/menu', [LoginController::class, 'menu']);
$router->get('/registro', [LoginController::class, 'registro']);
$router->post('/API/registro', [LoginController::class, 'registroAPI']);
$router->post('/API/login', [LoginController::class, 'loginAPI']);




// Comprueba y valida las rutas, que existan y les asigna las funciones del Controlador
$router->comprobarRutas();
