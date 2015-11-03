<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return redirect('home');
});


Route::get('home', 'VacationController@viewAll');
Route::get('destination/{id}', "VacationController@view");
// Route::get('destination/{id}', "VacationController@randomView");

// Route::get('account', "purchaseController@getPurchase");
Route::get('/account', ['middleware' => 'auth', function() {
	return redirect("auth/login");
}]);
Route::get('account', "purchaseController@getPurchase");
Route::get('payment', "purchaseController@getPayment");
Route::post('payment', "purchaseController@postPayment");


Route::get('checkout', "purchaseController@checkout");
Route::post('checkout', "purchaseController@postCheckout");
Route::get('delete', "VacationController@deleteDestination");




Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');
// Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');



