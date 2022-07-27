<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Cliente;

use Illuminate\Http\Request;
use stdClass;

class ClientesController extends Controller
{
    public function getAll()
    {
        // funcion del getall
        $response_local = new \stdClass();
        $response_local->success = true;
        $response_local->data = Cliente::all();

        return response()->json($response_local, 200);
    }

    public function store(Request $request)
    {
        $response = new \stdClass();

        $cliente = new Cliente();

        $cliente->apellido_paterno = $request->apellido_paterno;
        $cliente->apellido_materno = $request->apellido_materno;
        $cliente->nombres = $request->nombres;
        $cliente->expediente = $request->expediente;

        $cliente->save();

        $response->data = $cliente;
        $response->success = true;
        return response()->json($response, 200);
    }
    public function update(Request $request, $id)
    {
        $response = new \stdClass();

        $cliente = Cliente::find($id);
        $cliente->apellido_paterno = $request->apellido_paterno;
        $cliente->apellido_materno = $request->apellido_materno;
        $cliente->nombres = $request->nombres;
        $cliente->expediente = $request->expediente;
        $cliente->save();

        $response->data = $cliente;
        $response->success = true;
        return response()->json($response, 200);
    }
}
