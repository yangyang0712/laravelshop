@extends('layouts.app')
@section('title', '分销中心')

@section('content')
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card-header">
                分销中心
            </div>
            <div class="card-body">
                <div style="text-align:center">我的推广二维码</div>
                <div style="text-align:center">
                    {!! \QrCode::size(250)->generate($test); !!}
                </div>
                <div class="row">
                    <div class="col-md-6" style="border: 1px solid rgba(0, 0, 0, 0.125); text-align:center">分销中心</div>
                    <div class="col-md-6" style="border: 1px solid rgba(0, 0, 0, 0.125); text-align:center">我的团队</div>
                </div>
            </div>
        </div>
    </div>
@endsection