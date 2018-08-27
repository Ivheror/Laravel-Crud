<?php

namespace Prueba\Http\Controllers;
use Prueba\Passport;
use Illuminate\Http\Request;

class PassportController extends Controller
{
    public function create()
    {
        return view('create');
    }
    public function store(Request $request)
    {
        if($request->hasfile('filename'))
        {
            $file = $request->file('filename');
            $name=time().$file->getClientOriginalName();
            $file->move(public_path().'/images/', $name);
        }
        $passport= new \Prueba\Passport;
        $passport->name=$request->get('name');
        $passport->email=$request->get('email');
        $passport->number=$request->get('number');
        $date=date_create($request->get('date'));
        $format = date_format($date,"Y-m-d");
        $passport->date = strtotime($format);
        $passport->office=$request->get('office');
        $passport->filename=$name;
        $passport->save();

        return redirect('listas')->with('success', 'Registro añadido correctamente');
    }
    public function index()
    {
        $passports=\Prueba\Passport::paginate(10);
        return view('index',compact('passports'));
    }
    public function edit($id)
    {
        $passport = \Prueba\Passport::find($id);
        return view('edit',compact('passport','id'));
    }
    public function update(Request $request, $id)
    {
        $passport= \Prueba\Passport::find($id);
        $passport->name=$request->get('name');
        $passport->email=$request->get('email');
        $passport->number=$request->get('number');
        $passport->office=$request->get('office');
        $passport->save();
        return redirect('listas')->with('success','Registro modificado correctamente'); //con esto conseguimos que nos salga el modal para el crud
    }
    public function destroy($id)
    {
        $passport = \Prueba\Passport::find($id);
        $passport->delete();
        return redirect('listas')->with('success','El registro ha sido borrado correctamente');
    }
}
