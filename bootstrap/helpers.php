<?php
/**
 * Created by new_bsz
 * User: ZYY
 * Date: 2019/2/13 0013
 * Time: 9:51
 */
function test_helper(){
    return "OK";
}
function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}