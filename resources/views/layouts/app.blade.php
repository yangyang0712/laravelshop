<!doctype html>
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title','洋洋制作')-唯爱</title>
    <link href="{{('/css/app.css')}}" rel="stylesheet">
</head>
<body>
<div id="app" class="{{route_class()}}-page">
    @include('layouts._header')
    <div class="container">
        @yield('content')
    </div>
    @include('layouts._footer')
</div>
<script src="{{('/js/app.js')}}"></script>
@yield('scriptsAfterJs')
</body>
</html>