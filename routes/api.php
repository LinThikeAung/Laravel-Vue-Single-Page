<?php
use App\Http\Controllers\ProductController;

// Route::get('product',[ProductController::class,'index']);
// Route::post('product',[ProductController::class,'store']);
// Route::get('product/{id}',[ProductController::class,'show']);
// Route::put or patch('product/{id}',[ProductController::class,'update']);
// Route::delete('product/{id}',[ProductController::class,'destroy']);


// OR

//Route Model Binding
// |        | GET|HEAD  | /                     |                 | Closure                                        | web        |
// |        | GET|HEAD  | api/product           | product.index   | App\Http\Controllers\ProductController@index   | api        |
// |        | POST      | api/product           | product.store   | App\Http\Controllers\ProductController@store   | api        |
// |        | GET|HEAD  | api/product/{product} | product.show    | App\Http\Controllers\ProductController@show    | api        |
// |        | PUT|PATCH | api/product/{product} | product.update  | App\Http\Controllers\ProductController@update  | api        |
// |        | DELETE    | api/product/{product} | product.destroy | App\Http\Controllers\ProductController@destroy | api        |
// +--------+-----------+-----------------------+-----------------+------------------------------------------------+-------


//}id} nay mar {product} win dot Route Model Binding ya p

//(Reuqest request,$id)=>>(Reuqest request,Proudct $product)
Route::apiResource('product',ProductController::class);