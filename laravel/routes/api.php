<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ClientesController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/clientes', [ClientesController::class, 'getAll']);
Route::get('/clientes/{id}', [ClientesController::class, 'getItem']);

Route::post('/clientes', [ClientesController::class, 'store']);

Route::put('/clientes/{id}', [ClientesController::class, 'update']);
Route::patch('/clientes/{id}', [ClientesController::class, 'patchUpdate']);

Route::delete('/clientes/{id}', [ClientesController::class, 'delete']);
