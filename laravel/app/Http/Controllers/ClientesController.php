<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Cliente;

use Illuminate\Http\Request;
use stdClass;

class ClientesController extends Controller
{
    public function getClientes()
    {
        $response_local = new \stdClass();
        $response_local->success = true;
        $response_local->data = Cliente::all();

        return response()->json($response_local, 200);
    }
}
