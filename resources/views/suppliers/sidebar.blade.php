<ul class="sa-nav sa-nav--sidebar" data-sa-collapse="">
    <li class="sa-nav__section">
    <div class="sa-nav__section-title"><span>Dashboard</span></div>
    <ul class="sa-nav__menu sa-nav__menu--root">
        <li class="sa-nav__menu-item sa-nav__menu-item--has-icon">
            <a href="{{url('/')}}/supplier/home" class="sa-nav__link">
                <span class="sa-nav__icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                    <path d="M8,13.1c-4.4,0-8,3.4-8-3C0,5.6,3.6,2,8,2s8,3.6,8,8.1C16,16.5,12.4,13.1,8,13.1zM8,4c-3.3,0-6,2.7-6,6c0,4,2.4,0.9,5,0.2C7,9.9,7.1,9.5,7.4,9.2l3-2.3c0.4-0.3,1-0.2,1.3,0.3c0.3,0.5,0.2,1.1-0.2,1.4l-2.2,1.7c2.5,0.9,4.8,3.6,4.8-0.2C14,6.7,11.3,4,8,4z"></path>
                </svg>
                </span>
                <span class="sa-nav__title">Home</span>
            </a>
        </li>
        <li class="sa-nav__menu-item sa-nav__menu-item--has-icon">
            <a href="{{url('/')}}" class="sa-nav__link">
                <span class="sa-nav__icon fa fa-globe">

                </span>
                <span class="sa-nav__title">Main Website</span>
            </a>
        </li>
        <li class="sa-nav__menu-item sa-nav__menu-item--has-icon">
            <a target="new" href="{{url('/')}}/company-products/{{Auth::User()->id}}" class="sa-nav__link">
                <span class="sa-nav__icon fa fa-shopping-cart">

                </span>
                <span class="sa-nav__title">My Shop</span>
            </a>
        </li>
    </ul>
    </li>
    <li class="sa-nav__section">
    <div class="sa-nav__section-title"><span>Orders</span></div>
    <ul class="sa-nav__menu sa-nav__menu--root">
        <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
            <a href="{{url('/')}}/supplier/my-orders" class="sa-nav__link">
                <span class="sa-nav__icon"><i class="fa fa-shopping-cart"></i></span><span class="sa-nav__title">My Orders</span>
                <span class="sa-nav__arrow fa fa-shopping-cart">

                </span>
            </a>
        </li>

    </ul>
    </li>
    <li class="sa-nav__section">
        <div class="sa-nav__section-title"><span>My Catalogue</span></div>
        <ul class="sa-nav__menu sa-nav__menu--root">
            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.my-products')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"><path d="M8,6C4.7,6,2,4.7,2,3s2.7-3,6-3s6,1.3,6,3S11.3,6,8,6z M2,5L2,5L2,5C2,5,2,5,2,5z M8,8c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3S2,9.7,2,8V5C2,6.7,4.7,8,8,8z M14,5L14,5C14,5,14,5,14,5L14,5z M2,10L2,10L2,10C2,10,2,10,2,10z M8,13c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3s-6-1.3-6-3v-3C2,11.7,4.7,13,8,13z M14,10L14,10C14,10,14,10,14,10L14,10z"></path></svg>
                        </i></span>
                        <span class="sa-nav__title">Inventory

                    </span>
                    <span class="sa-nav__arrow">
                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"><path d="M8,6C4.7,6,2,4.7,2,3s2.7-3,6-3s6,1.3,6,3S11.3,6,8,6z M2,5L2,5L2,5C2,5,2,5,2,5z M8,8c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3S2,9.7,2,8V5C2,6.7,4.7,8,8,8z M14,5L14,5C14,5,14,5,14,5L14,5z M2,10L2,10L2,10C2,10,2,10,2,10z M8,13c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3s-6-1.3-6-3v-3C2,11.7,4.7,13,8,13z M14,10L14,10C14,10,14,10,14,10L14,10z"></path></svg>
                    </span>
                </a>
            </li>

            {{-- <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.profile.products')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"><path d="M8,6C4.7,6,2,4.7,2,3s2.7-3,6-3s6,1.3,6,3S11.3,6,8,6z M2,5L2,5L2,5C2,5,2,5,2,5z M8,8c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3S2,9.7,2,8V5C2,6.7,4.7,8,8,8z M14,5L14,5C14,5,14,5,14,5L14,5z M2,10L2,10L2,10C2,10,2,10,2,10z M8,13c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3s-6-1.3-6-3v-3C2,11.7,4.7,13,8,13z M14,10L14,10C14,10,14,10,14,10L14,10z"></path></svg>
                        </i></span>
                        <span class="sa-nav__title">My Shop

                    </span>
                    <span class="sa-nav__arrow fa fa-user">

                    </span>
                </a>
            </li> --}}

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.add-product')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"><path d="M8,6C4.7,6,2,4.7,2,3s2.7-3,6-3s6,1.3,6,3S11.3,6,8,6z M2,5L2,5L2,5C2,5,2,5,2,5z M8,8c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3S2,9.7,2,8V5C2,6.7,4.7,8,8,8z M14,5L14,5C14,5,14,5,14,5L14,5z M2,10L2,10L2,10C2,10,2,10,2,10z M8,13c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3s-6-1.3-6-3v-3C2,11.7,4.7,13,8,13z M14,10L14,10C14,10,14,10,14,10L14,10z"></path></svg>
                        </i></span>
                        <span class="sa-nav__title">Add Products

                    </span>
                    <span class="sa-nav__arrow fa fa-plus">

                    </span>
                </a>
            </li>



        </ul>
    </li>
    <li class="sa-nav__section">
        <div class="sa-nav__section-title"><span>Billings</span></div>
        <ul class="sa-nav__menu sa-nav__menu--root">
            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.my-invoices')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg class="svg-inline--fa fa-file-alt fa-w-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="file-alt" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M224 136V0H24C10.7 0 0 10.7 0 24v464c0 13.3 10.7 24 24 24h336c13.3 0 24-10.7 24-24V160H248c-13.2 0-24-10.8-24-24zm64 236c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-64c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-72v8c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12zm96-114.1v6.1H256V0h6.1c6.4 0 12.5 2.5 17 7l97.9 98c4.5 4.5 7 10.6 7 16.9z"></path></svg>
                        </i>
                    </span>
                    <span class="sa-nav__title">Invoices

                    </span>
                </a>
            </li>

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.my-payments')}}" class="sa-nav__link">
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg class="svg-inline--fa fa-file-alt fa-w-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="file-alt" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M224 136V0H24C10.7 0 0 10.7 0 24v464c0 13.3 10.7 24 24 24h336c13.3 0 24-10.7 24-24V160H248c-13.2 0-24-10.8-24-24zm64 236c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-64c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-72v8c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12zm96-114.1v6.1H256V0h6.1c6.4 0 12.5 2.5 17 7l97.9 98c4.5 4.5 7 10.6 7 16.9z"></path></svg>
                        </i>
                    </span>
                    <span class="sa-nav__title">My Payments

                    </span>
                </a>
            </li>

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.make-payment')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg class="svg-inline--fa fa-file-alt fa-w-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="file-alt" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M224 136V0H24C10.7 0 0 10.7 0 24v464c0 13.3 10.7 24 24 24h336c13.3 0 24-10.7 24-24V160H248c-13.2 0-24-10.8-24-24zm64 236c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-64c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-72v8c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12zm96-114.1v6.1H256V0h6.1c6.4 0 12.5 2.5 17 7l97.9 98c4.5 4.5 7 10.6 7 16.9z"></path></svg>
                        </i>
                    </span>
                    <span class="sa-nav__title">Make Payments

                    </span>
                </a>
            </li>

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.commisions')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg class="svg-inline--fa fa-file-alt fa-w-12" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="file-alt" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M224 136V0H24C10.7 0 0 10.7 0 24v464c0 13.3 10.7 24 24 24h336c13.3 0 24-10.7 24-24V160H248c-13.2 0-24-10.8-24-24zm64 236c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-64c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12v8zm0-72v8c0 6.6-5.4 12-12 12H108c-6.6 0-12-5.4-12-12v-8c0-6.6 5.4-12 12-12h168c6.6 0 12 5.4 12 12zm96-114.1v6.1H256V0h6.1c6.4 0 12.5 2.5 17 7l97.9 98c4.5 4.5 7 10.6 7 16.9z"></path></svg>
                        </i>
                    </span>
                    <span class="sa-nav__title">My Commisions

                    </span>
                </a>
            </li>


        </ul>
    </li>

    <li class="sa-nav__section">
        <div class="sa-nav__section-title"><span>Legal</span></div>
        <ul class="sa-nav__menu sa-nav__menu--root">
            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.terms')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg class="svg-inline--fa fa-check-square fa-w-14" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="check-square" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M400 480H48c-26.51 0-48-21.49-48-48V80c0-26.51 21.49-48 48-48h352c26.51 0 48 21.49 48 48v352c0 26.51-21.49 48-48 48zm-204.686-98.059l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.248-16.379-6.249-22.628 0L184 302.745l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.25 16.379 6.25 22.628.001z"></path></svg>
                        </i>
                    </span>
                    <span class="sa-nav__title">Terms and Conditions

                    </span>
                </a>
            </li>

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{route('supplier.privacy')}}" class="sa-nav__link" >
                    <span class="sa-nav__icon">
                        <i class="">
                            <svg class="svg-inline--fa fa-check-square fa-w-14" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="check-square" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M400 480H48c-26.51 0-48-21.49-48-48V80c0-26.51 21.49-48 48-48h352c26.51 0 48 21.49 48 48v352c0 26.51-21.49 48-48 48zm-204.686-98.059l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.248-16.379-6.249-22.628 0L184 302.745l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.25 16.379 6.25 22.628.001z"></path></svg>
                        </i>
                    </span>
                    <span class="sa-nav__title"> Privacy Policy

                    </span>
                </a>
            </li>

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="#" class="sa-nav__link" data-sa-collapse-trigger="">
                    <span class="sa-nav__icon">
                        <i class="">
                            {{--  --}}
                            <svg class="svg-inline--fa fa-question-circle fa-w-16" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="question-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M504 256c0 136.997-111.043 248-248 248S8 392.997 8 256C8 119.083 119.043 8 256 8s248 111.083 248 248zM262.655 90c-54.497 0-89.255 22.957-116.549 63.758-3.536 5.286-2.353 12.415 2.715 16.258l34.699 26.31c5.205 3.947 12.621 3.008 16.665-2.122 17.864-22.658 30.113-35.797 57.303-35.797 20.429 0 45.698 13.148 45.698 32.958 0 14.976-12.363 22.667-32.534 33.976C247.128 238.528 216 254.941 216 296v4c0 6.627 5.373 12 12 12h56c6.627 0 12-5.373 12-12v-1.333c0-28.462 83.186-29.647 83.186-106.667 0-58.002-60.165-102-116.531-102zM256 338c-25.365 0-46 20.635-46 46 0 25.364 20.635 46 46 46s46-20.636 46-46c0-25.365-20.635-46-46-46z"></path></svg>
                            {{--  --}}
                        </i>
                    </span>
                    <span class="sa-nav__title">Help Center

                    </span>
                </a>
            </li>


        </ul>
    </li>

    <li class="sa-nav__section">
        <div class="sa-nav__section-title"><span>Settings</span></div>
        <ul class="sa-nav__menu sa-nav__menu--root">
            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{url('/')}}/supplier/my-profile" class="sa-nav__link">
                    <span class="sa-nav__icon fa fa-user fa-w-14">
                        <i class="">

                        </i>
                    </span>
                    <span class="sa-nav__title">My Account

                    </span>
                </a>
            </li>

            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{url('/')}}/supplier/update-logo" class="sa-nav__link">
                    <span class="sa-nav__icon fa fa-user fa-w-14">
                        <i class="">

                        </i>
                    </span>
                    <span class="sa-nav__title">Update Logo

                    </span>
                </a>
            </li>



            <li class="sa-nav__menu-item sa-nav__menu-item--has-icon" data-sa-collapse-item="sa-nav__menu-item--open">
                <a href="{{ route('logout') }}" class="sa-nav__link" onclick="event.preventDefault();   document.getElementById('logout-form').submit();">
                    <span class="sa-nav__icon fa fa-power-off">

                    </span>
                    <span class="sa-nav__title">Logout

                    </span>
                </a>
            </li>



            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>

        </ul>
    </li>

</ul>
