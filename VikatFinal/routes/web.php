<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


//Admin Routes
Route::get('/admin/home', function(){
    return view('admin.home');
})->name('home');

Route::get('/admin/register','AdminController@showRegisterForm');

Route::post('/admin/action/add/admin','AdminController@createAdmin');

Route::get('/admin/login','AdminController@showLoginForm')->name('login');

Route::get('/admin/dashboard','AdminController@showDashboard')->name('dashboard')->middleware('adminauth');

Route::post('/admin/action/login',"AdminController@adminLogin");

Route::get('/admin/logout','AdminController@logout')->name('logout');

Route::get('/admin/forgotpassword','AdminController@forgotPasswordForm');


/*
*                   Product
*
*/
Route::get('/admin/dashboard/product','ProductController@create')->middleware('adminauth');

Route::any('/admin/action/product/create',"ProductController@store")->middleware('adminauth');

Route::any('/admin/dashboard/product/view',"ProductController@index")->middleware('adminauth');

Route::any('/admin/action/product/edit/{id}','ProductController@edit')->middleware('adminauth');

Route::any('/admin/action/product/update/{id}', "ProductController@update")->middleware('adminauth');

Route::get('/admin/action/product/delete/{id}','ProductController@destroy')->middleware('adminauth');

/*
*     Product Images
*/

Route::any('/admin/dashboard/productimage',"ProductImagesController@index")->middleware('adminauth');

Route::any('/admin/dashboard/productimage/delete/{id}',"ProductImagesController@destroy")->middleware('adminauth');

Route::any('/admin/dashboard/productimage/upload/{id}',"ProductImagesController@create")->middleware('adminauth');

//Save the uploaded images
Route::post('/admin/dashboard/productimage/save',"ProductImagesController@store")->middleware('adminauth');

Route::any('/admin/action/photoimage/delete/{id}',"ProductImagesController@destroy")->middleware('adminauth');

/*
*  Slider Images
*/

Route::any('/admin/dashboard/slider','SliderController@create')->middleware('adminauth');

Route::any('/admin/dashboard/slider/store',"SliderController@store")->middleware('adminauth');

Route::any('/admin/dashboard/slider/edit','SliderController@edit')->middleware('adminauth');

Route::any('/admin/action/slider/delete/{id}',"SliderController@destroy")->middleware('adminauth');

/*
**           Mail
*/


Route::any('/admin/resetpassword/action','AdminController@forgotPasswordMailSend');

Route::any('/admin/account/verify/{token}','AdminController@verifyPasswordResetToken');

Route::any('/admin/resetpassword/final_action',"AdminController@verifyPasswordGetNewPassword");

/*
*  Client
*
*/

Route::any('/aboutus', function(){
    return view('client.aboutus');
});

Route::any('/products', function(){
    return view('client.products');
});

Route::any('/product',function(){

});

