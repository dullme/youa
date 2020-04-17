<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('links', LinkController::class);
    $router->resource('news', PostController::class);
    $router->resource('partner', PartnerController::class);
    $router->resource('category', CategoryController::class);
    $router->resource('anli', AnliController::class);
    $router->resource('program', ProgramController::class);

});
