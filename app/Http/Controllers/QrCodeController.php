<?php

namespace App\Http\Controllers;

use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Illuminate\Http\Request;

class QrCodeController extends Controller
{
    public function index(Request $request)
    {
        $url = env('APP_URL');
        $id = $request->user()->id;
        $test = $url."/registration?id=".$id;
//        $qr_code = QrCode::size(200)->generate($test);
        return view('qrcode/index', ['test' => $test]);
    }
}
