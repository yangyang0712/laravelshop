<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->get('users', 'UsersController@index');
    $router->get('products', 'ProdictsController@index');
    $router->get('products/create', 'ProdictsController@create');
    $router->post('products', 'ProdictsController@store');
    $router->get('products/{id}/edit', 'ProdictsController@edit');
    $router->put('products/{id}', 'ProdictsController@update');
    $router->get('order','OrdersController@index')->name('admin.orders.index');
    $router->get('order/{order}', 'OrdersController@show')->name('admin.orders.show');
    $router->post('orders/{order}/ship', 'OrdersController@ship')->name('admin.orders.ship');
    $router->post('orders/{order}/refund', 'OrdersController@handleRefund')->name('admin.orders.handle_refund');
    $router->get('coupon_codes', 'CouponCodesController@index');
    $router->post('coupon_codes', 'CouponCodesController@store');
    $router->get('coupon_codes/create', 'CouponCodesController@create');
    $router->get('coupon_codes/{id}/edit', 'CouponCodesController@edit');
    $router->put('coupon_codes/{id}', 'CouponCodesController@update');
    $router->delete('coupon_codes/{id}', 'CouponCodesController@destroy');
    $router->get('commissions', 'CommissionsController@index');
    $router->post('commissions', 'CommissionsController@update')->name('admin.commissions');
});
