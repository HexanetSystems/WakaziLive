@extends('suppliers.master')

@section('content')

<div class="sa-app__content">
    @include('suppliers.toolbar')
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <div id="top" class="sa-app__body">
        <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
           <div class="container">
              <div class="py-5">
                 <div class="row g-4 align-items-center">
                    <div class="col">
                       <nav class="mb-2" aria-label="breadcrumb">
                          {{-- <ol class="breadcrumb breadcrumb-sa-simple">
                             <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                             <li class="breadcrumb-item active" aria-current="page">Orders</li>
                          </ol> --}}
                       </nav>
                       <h1 class="h3 m-0">Orders</h1>
                    </div>
                    {{-- <div class="col-auto d-flex"><a href="app-order.html" class="btn btn-primary">New order</a></div> --}}
                 </div>
              </div>
              <div class="card">
                 <div class="p-4"><input type="text" placeholder="Start typing to search for orders" class="form-control form-control--search mx-auto" id="table-search"/></div>
                 <div class="sa-divider"></div>
                 <table class="sa-datatables-init text-nowrap" data-order="[[ 1, &quot;desc&quot; ]]" data-sa-search-input="#table-search">
                    <thead>
                       <tr>
                          <th class="w-min" data-orderable="false"><input type="checkbox" class="form-check-input m-0 fs-exact-16 d-block" aria-label="..."/></th>
                          <th>Number</th>
                          <th>Date</th>
                          <th>Customer</th>
                          <th>Paid</th>
                          <th>Status</th>
                          <th>Items</th>
                          <th>Total</th>
                          <th class="w-min" data-orderable="false"></th>
                       </tr>
                    </thead>
                    <tbody >
                        @foreach($Orders as $order)
                        <?php $OrderProducts = DB::table('orders_product')->where('orders_id',$order->id)->get(); ?>
                          @foreach ($OrderProducts as $orderproducts)
                           <?php $Product_id = $orderproducts->product_id; $Prods = \App\Models\Product::where('id',$Product_id)->where('UserID', Auth::User()->id)->get(); ?>
                            @foreach ($Prods as $prods)
                            <tr>
                                <td><input type="checkbox" class="form-check-input m-0 fs-exact-16 d-block" aria-label="..."/></td>
                                <td><a href="app-order.html" class="text-reset">#wkz-{{$order->id}}</a></td>
                                <td>{{date("d M. Y", strtotime($order->created_at))}}</td>
                                <td><a href="app-customer.html" class="text-reset"><?php $Customer = \App\Models\User::find($order->user_id); echo $Customer->name; ?></a></td>
                                <td>
                                   <div class="d-flex fs-6">
                                      <div class="badge badge-sa-success">Yes</div>
                                   </div>
                                </td>
                                <td>
                                    @if($order->status == "pending")
                                    <div class="d-flex fs-6">
                                        <div class="badge badge-sa-danger">{{$order->status}}</div>
                                    </div>
                                    @else
                                    <div class="d-flex fs-6">
                                        <div class="badge badge-sa-success">{{$order->status}}</div>
                                    </div>
                                    @endif
                                </td>
                                <td>{{$orderproducts->qty}} items</td>
                                <td>
                                   <div class="sa-price"><span class="sa-price__symbol">kes </span><span class="sa-price__integer">{{$order->total}}</span><span class="sa-price__decimal"></span></div>
                                </td>
                                <td>
                                   <div class="dropdown">
                                      <button class="btn btn-sa-muted btn-sm" type="button" id="order-context-menu-0" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                                         <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                            <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                                         </svg>
                                      </button>
                                      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="order-context-menu-0">
                                         <li><a class="dropdown-item" href="{{url('/supplier/confirm-orders')}}/{{$order->id}}">Confirm</a></li>

                                            <hr class="dropdown-divider"/>
                                         </li>
                                         <li><a class="dropdown-item text-danger" href="{{url('/supplier/delete-orders')}}/{{$order->id}}">Delete</a></li>
                                      </ul>
                                   </div>
                                </td>
                             </tr>
                            @endforeach
                          @endforeach
                        @endforeach

                    </tbody>
                 </table>
              </div>
           </div>
        </div>
     </div>
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
