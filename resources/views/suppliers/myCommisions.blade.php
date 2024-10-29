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
                       <h1 class="h3 m-0">Commisions</h1>
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
                          <th>Order</th>
                          <th>Date</th>
                          <th>Status</th>
                          <th>Paid</th>
                          <th>Pending Settlement</th>
                          <th>Total</th>
                          <th class="w-min" data-orderable="false"></th>
                       </tr>
                    </thead>
                    <tbody >
                        @foreach($Commisions as $commisions)
                            <tr>
                                <td><input type="checkbox" class="form-check-input m-0 fs-exact-16 d-block" aria-label="..."/></td>
                                <td><a href="#" class="text-reset">#wkz-{{$commisions->order_id}}</a></td>
                                <td>{{date("d M. Y", strtotime($order->created_at))}}</td>
                                <td><a href="#" class="text-reset"><?php $Customer = \App\Models\User::find($commisions->user_id); echo $Customer->name; ?></a></td>
                                <td>
                                   <div class="d-flex fs-6">
                                      <div class="badge badge-sa-success">Yes</div>
                                   </div>
                                </td>
                                <td>
                                    @if($commisions->status == "pending")
                                    <div class="d-flex fs-6">
                                        <div class="badge badge-sa-danger">{{$commisions->status}}</div>
                                    </div>
                                    @else
                                    <div class="d-flex fs-6">
                                        <div class="badge badge-sa-success">{{$commisions->status}}</div>
                                    </div>
                                    @endif
                                </td>
                                <td>
                                   <div class="sa-price"><span class="sa-price__symbol">kes </span><span class="sa-price__integer">{{$order->total}}</span><span class="sa-price__decimal"></span></div>
                                </td>
                                <td>
                                    <div class="sa-price">
                                        <span class="sa-price__symbol">
                                            @if($order->status == "confirmed")
                                               <a class="dropdown-item text-success" href="#"> Order Confirmed <span class="fa fa-check"></span> </a>
                                            @else
                                               <a onclick="return confirm('You wish to confirm this order? You cannot undo this process')" class="dropdown-item text-danger" href="{{url('/supplier/confirm-orders')}}/{{$order->id}}"> Confirm Order <span class="fa fa-questionmark"></span> </a>
                                            @endif
                                        </span>
                                    </div>
                                 </td>

                             </tr>

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
