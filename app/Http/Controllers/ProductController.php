<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Http\Requests\ProductStoreRequest;
use App\Http\Requests\ProductStoreUpdate;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //search so yin query lote p /ma par yin a kone htoke mal
        return Product::when(request('search'), function($query){
            $query->where('name','like','%'. request('search') .'%');
        })->orderBy('id','desc')->paginate(5);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductStoreRequest $request)
    {
        //$store = Product::create($request->all()); //OR~
        // $request->validate([
        //     'name' => 'required|min:3|max:255|String',
        //     'price' => 'required|numeric',
        // ]);
        $store = Product::create($request->only('name','price'));
        return $store;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


     // route:list call p thone kyi yin {id} nay yar mar product pyit twar de a twat 
     // route model binding
    public function show(Product $product)
    {
        //$product = Product::find($id);
        return $product;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductStoreUpdate $request, Product $product)
    {
        // $request->validate([
        //     'name' => 'required|string',
        //     'price' => 'required|numeric',
        // ],[
        //     'name.required'=> "Name Ko Htae Pay Par",
        //     'name.string'=> "String lal pyit ya myee"
        // ]);
        //$product = Product::find($id);
        $product->update($request->all()); //OR only()
        return $product;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //$product = Product::find($id);
        $product->delete();
        return $product;
    }
}
