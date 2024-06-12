<aside class="col-xl-3">
                <div class="toggle-info">
                    <h5 class="title mb-0">Account Navbar</h5>
                    <a class="toggle-btn" href="#accountSidebar">Account Menu</a>
                </div>
                <div class="sticky-top account-sidebar-wrapper">
                    <div class="account-sidebar" id="accountSidebar">
                        <div class="profile-head">
                            <div class="user-thumb">
                                {{-- <img class="rounded-circle" src="images/profile4.jpg" alt="Susan Gardner"> --}}
                            </div>
                            <h5 class="title mb-0">{{Auth::User()->name}}</h5>
                            <span class="text text-primary"><a href="mailto:{{Auth::User()->email}}" >{{Auth::User()->email}}</a></span>
                        </div>
                        <div class="account-nav">
                            <div class="nav-title bg-light">DASHBOARD</div>
                            <ul>
                                <li><a href="{{url('/')}}/dashboard">Dashboard</a></li>
                                <li><a href="{{route('account-orders')}}">Orders</a></li>
                                {{-- <li><a href="account-downloads.html">Downloads</a></li>
                                <li><a href="account-return-request.html">Return request</a></li> --}}
                            </ul>
                            <div class="nav-title bg-light">ACCOUNT SETTINGS</div>
                            <ul class="account-info-list">
                                <li><a href="{{route('account-profile')}}">Profile</a></li>
                                <li><a href="{{route('account-address')}}">Address</a></li>
                                {{-- <li><a href="account-shipping-methods.html">Shipping methods</a></li>
                                <li><a href="account-payment-methods.html">Payment Methods</a></li>
                                <li><a href="account-review.html">Review</a></li> --}}
                            </ul>
                        </div>
                    </div>
                </div>
            </aside>
