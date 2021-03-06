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

Route::get('/', 'HomeController@index');
Route::get('/fangan', 'HomeController@fangan');
Route::get('/about', 'HomeController@about');
Route::get('/anli', 'HomeController@anli');
Route::get('/detail/{id}', 'HomeController@detail');
Route::get('/fangan5', 'HomeController@fangan5');
Route::get('/daibi', 'HomeController@daibi');
Route::get('/zhichi', 'HomeController@zhichi');
Route::get('/lianxi', 'HomeController@lianxi');
Route::get('/news/{type}', 'HomeController@news');
Route::get('/new/{id}', 'HomeController@new');
Route::get('/program', 'HomeController@program');
