<header class="topbar-nav">
    <nav class="navbar navbar-expand fixed-top">

        <div class="toggle-menu">
            <i class="zmdi zmdi-menu"></i>
        </div>
        <div class="search-bar flex-grow-1">
            <div class="input-group">
                <div class="input-group-prepend search-arrow-back">
                    <button class="btn btn-search-back" type="button"><i
                            class="zmdi zmdi-long-arrow-left"></i></button>
                </div>
                <input type="text" class="form-control" placeholder="tìm kiếm">
                <div class="input-group-append">
                    <button class="btn btn-search" type="button"><i class="zmdi zmdi-search"></i></button>
                </div>
            </div>
        </div>

        <ul class="navbar-nav align-items-center right-nav-link ml-auto">
            <li class="nav-item dropdown search-btn-mobile">
                <a class="nav-link position-relative" href="javascript:void();">
                    <i class="zmdi zmdi-search align-middle"></i>
                </a>
            </li>



            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret position-relative"
                    data-toggle="dropdown" href="javascript:void();">
                    <span class="user-profile"><img src="assets/images/avatar.jpg" class="img-circle"
                            alt="user avatar"></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li class="dropdown-item user-details">
                        <a href="javaScript:void();">
                            <div class="media">
                                <div class="avatar"><img class="align-self-start mr-3"
                                        src="assets/images/avatar.jpg" alt="user avatar"></div>
                                <div class="media-body">
                                    <h6 class="mt-2 user-title">Admin</h6>
                                    <p class="user-subtitle">{{Auth::guard('admin')->user()->email}}</p>
                                </div>
                            </div>
                        </a>
                    </li>

                    <li class="dropdown-divider"></li>
                    <a href="{{url('/account')}}"><li class="dropdown-item"><i class="zmdi zmdi-balance-wallet mr-3"></i>Tài khoản</li></a>

                    <li class="dropdown-divider"></li>
                    <a href="{{url('/logout')}}"><li class="dropdown-item"><i class="zmdi zmdi-power mr-3"></i>Đăng xuất</li></a>
                </ul>
            </li>
        </ul>
    </nav>
</header>
