<?php
/**
 * Created by PhpStorm.
 * User: ZYY
 * Date: 2019/5/23 0023
 * Time: 14:25
 */

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\Request;
use App\Models\Commission;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Layout\Content;

class CommissionsController extends Controller
{
    use HasResourceActions;

    public function index(Content $content)
    {
        $commission = Commission::query()->first();
        return $content
            ->header('分销管理')
            ->body(view('admin.commissions.show', compact('commission')));
    }

    public function update(Request $request)
    {
        $commission = Commission::query()->where('id', $request->id)->first();
        if ($commission){
            $commission->commission1 = $request->commission1;
            $commission->commission2 = $request->commission2;
            $commission->commission3 = $request->commission3;
            $commission->commissionmoney = $request->commissionmoney;
            $commission->ordermoney = $request->ordermoney;
            $commission->downcount = $request->downcount;
            $commission->save();
        }else{
            $commission = new Commission();
            $commission->commission1 = $request->commission1;
            $commission->commission2 = $request->commission2;
            $commission->commission3 = $request->commission3;
            $commission->commissionmoney = $request->commissionmoney;
            $commission->ordermoney = $request->ordermoney;
            $commission->downcount = $request->downcount;
            $commission->save();
        }
        return $commission;
    }
}