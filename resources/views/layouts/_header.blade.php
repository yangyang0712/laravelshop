<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-static-top">
    <div class="container">
        <!-- Branding Image -->
        <span class="nav-item nav-link" style="font-size: 17px">
            <a href="{{route('products.index')}}">
            <img src="{{('/img/demo.jpg')}}" alt="" height="50" width="100">
            </a>
        </span>
        <span class="nav-item nav-link" style="font-size: 17px">唯  爱</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">

            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav navbar-right">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item"><a class="nav-link" href="{{ route('login') }}">登录</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('registration') }}">注册</a></li>
                @else
                    <li class="nav-item">
                        <a class="nav-link mt-1" href="{{ route('cart.index') }}"><i
                                    class="fa fa-shopping-cart"></i></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="https://iocaffcdn.phphub.org/uploads/images/201709/20/1/PtDKbASVcz.png?imageView2/1/w/60/h/60"
                                 class="img-responsive img-circle" width="30px" height="30px">
                            {{ Auth::user()->name }}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" id="logout" href="#"
                               onclick="event.preventDefault();document.getElementById('logout-form').submit();">退出登录</a>
                            <a href="{{ route('user_addresses.index') }}" class="dropdown-item">收货地址</a>
                            <a href="{{ route('products.favorites') }}" class="dropdown-item">我的收藏</a>
                            <a href="{{ route('orders.index') }}" class="dropdown-item">我的订单</a>
{{--                            <a href="{{route('qr_code')}}" class="dropdown-item">分销中心</a>--}}
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>