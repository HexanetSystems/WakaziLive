@extends('suppliers.master')

@section('content')

<div class="sa-app__content">
    @include('suppliers.toolbar')
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    @foreach ($Orders as $order)
    <div id="top" class="sa-app__body">
        <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
        <div class="container container--max--xl">
            <div class="py-5">
                <div class="row g-4 align-items-center">
                    <div class="col">

                    <h1 class="h3 m-0">Order #{{$order->id}}</h1>
                    </div>
                    <div class="col-auto d-flex"><a href="#" class="btn btn-secondary me-3">Delete</a><a href="#" class="btn btn-primary">Edit</a></div>
                </div>
            </div>
            <div class="sa-page-meta mb-5">
                <div class="sa-page-meta__body">
                    <div class="sa-page-meta__list">
                    <div class="sa-page-meta__item">{{date('M d, Y h:i:s', strtotime($order->created_at))}}</div>
                    <div class="sa-page-meta__item"><?php echo count($Items = DB::table('orders_product')->where('orders_id',$order->id)->get()) ?> items</div>
                    <div class="sa-page-meta__item">Total kes {{$order->total}}</div>
                    <div class="sa-page-meta__item d-flex align-items-center fs-6">
                            <span class="badge badge-sa-success me-2">Paid</span>
                            {{-- <span class="badge badge-sa-warning me-2">Partially Fulfilled</span> --}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="sa-entity-layout" data-sa-container-query="{&quot;920&quot;:&quot;sa-entity-layout--size--md&quot;}">
                <div class="sa-entity-layout__body">
                    <div class="sa-entity-layout__main">
                    {{-- <div class="sa-card-area">
                        <textarea class="sa-card-area__area" rows="2" placeholder="Notes about order"></textarea>
                        <div class="sa-card-area__card">
                            <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit">
                                <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                                <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                            </svg>
                        </div>
                    </div> --}}
                    <div class="card mt-5">
                        <div class="card-body px-5 py-4 d-flex align-items-center justify-content-between">
                            <h2 class="mb-0 fs-exact-18 me-4">Items</h2>
                            <div class="text-muted fs-exact-14"><a href="#">Edit items</a></div>
                        </div>
                        <div class="table-responsive">
                            <table class="sa-table">
                                <tbody>
                                <?php
                                   $Items = DB::table('orders_product')->where('orders_id',$order->id)->get();
                                ?>
                                @foreach ($Items as $items)
                                    <?php
                                        $Product = DB::table('products')->where('id',$items->product_id)->get();
                                    ?>
                                    @foreach ($Product as $products)
                                        <tr>
                                            <td class="min-w-20x">
                                                <div class="d-flex align-items-center"><img src="{{$products->image_one}}" class="me-4" width="40" height="40" alt=""/><a target="new" href="{{url('/')}}/product/{{$products->slung}}" class="text-reset">{{$products->name}}</a></div>
                                            </td>
                                            <td class="text-end">
                                                <div class="sa-price"><span class="sa-price__symbol">ksh</span><span class="sa-price__integer">{{$products->price}}</span><span class="sa-price__decimal"></span></div>
                                            </td>
                                            <td class="text-end">{{$items->qty}}</td>
                                            <td class="text-end">
                                                <div class="sa-price"><span class="sa-price__symbol">ksh</span><span class="sa-price__integer">{{$items->total}}</span><span class="sa-price__decimal"></span></div>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endforeach
                                </tbody>
                                <tbody class="sa-table__group">
                                <tr>
                                    <td colSpan="3">Subtotal</td>
                                    <td class="text-end">
                                        <div class="sa-price"><span class="sa-price__symbol">ksh</span><span class="sa-price__integer">{{$order->total}}</span><span class="sa-price__decimal">.00</span></div>
                                    </td>
                                </tr>
                                {{-- <tr>
                                    <td colSpan="3">Store Credit(ama disount)</td>
                                    <td class="text-end">
                                        <div class="sa-price"><span class="sa-price__symbol">$</span><span class="sa-price__integer">-20</span><span class="sa-price__decimal">.00</span></div>
                                    </td>
                                </tr> --}}
                                <tr>
                                    <td colSpan="3">
                                        Shipping
                                        <div class="text-muted fs-exact-13">Shipping</div>
                                    </td>
                                    <td class="text-end">
                                        <div class="sa-price"><span class="sa-price__symbol">ksh</span><span class="sa-price__integer">0</span><span class="sa-price__decimal">.00</span></div>
                                    </td>
                                </tr>
                                </tbody>
                                <tbody>
                                <tr>
                                    <td colSpan="3">Total</td>
                                    <td class="text-end">
                                        <div class="sa-price"><span class="sa-price__symbol">ksh</span><span class="sa-price__integer">{{$order->total}}</span><span class="sa-price__decimal"></span></div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    </div>
                    <div class="sa-entity-layout__sidebar">
                    <?php
                        $User = DB::table('users')->where('id', $order->user_id)->get();
                    ?>
                    @foreach ($User as $user)
                    <div class="card">
                        <div class="card-body d-flex align-items-center justify-content-between pb-0 pt-4">
                            <h2 class="fs-exact-16 mb-0">Customer</h2>
                            <a href="#" class="fs-exact-14">Edit</a>
                        </div>
                        <div class="card-body d-flex align-items-center pt-4">
                            <div class="sa-symbol sa-symbol--shape--circle sa-symbol--size--lg"><img src="images/customers/customer-1-40x40.jpg" width="40" height="40" alt=""/></div>
                            <div class="ms-3 ps-2">
                                <div class="fs-exact-14 fw-medium">{{$user->name}}</div>

                            </div>
                        </div>
                    </div>
                    <div class="card mt-5">
                        <div class="card-body d-flex align-items-center justify-content-between pb-0 pt-4">
                            <h2 class="fs-exact-16 mb-0">Contacts</h2>
                            {{-- <a href="#" class="fs-exact-14">Edit</a> --}}
                        </div>
                        <div class="card-body pt-4 fs-exact-14">
                            <div>{{$user->name}}</div>
                            <div class="mt-1"><a href="#">{{$user->email}}</a></div>
                            <div class="text-muted mt-1">{{$user->mobile}}</div>
                        </div>
                    </div>
                    <div class="card mt-5">
                        <div class="card-body d-flex align-items-center justify-content-between pb-0 pt-4">
                            <h2 class="fs-exact-16 mb-0">Shipping Address</h2>
                            {{-- <a href="#" class="fs-exact-14">Edit</a> --}}
                        </div>
                        <div class="card-body pt-4 fs-exact-14">{{$user->street}}</div>
                    </div>

                    @endforeach

                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    @endforeach
    <!-- sa-app__body / end --><!-- sa-app__footer -->
    <div class="sa-app__footer d-block d-md-flex">
       <!-- copyright -->Wakazi Suppliers Dashboad App — © {{date('Y')}}
       <div class="m-auto"></div>
       <div>Powered by Wakazi IT — Design by <a href="#">Wakazi Creatives</a></div>
       <!-- copyright / end -->
    </div>
    <!-- sa-app__footer / end -->
 </div>
@endsection
