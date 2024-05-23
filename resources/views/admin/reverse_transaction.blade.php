@extends('admin.master')
@section('content')
<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>
    .modal a.close-modal{
        top:0px !important;
        right:0px !important;
    }
</style>
<!--== BODY CONTNAINER ==-->
 <div class="container-fluid sb2">
    <div class="row">
        @include('admin.sidebar')

        <!--== BODY INNER CONTAINER ==-->
        <div class="sb2-2">
            <div class="sb2-2-2">
                <ul>
                    <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                    </li>
                    <li class="active-bre"><a href="#"> Reversed Payments Transactions </a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/accountbalance"> Account Balance</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/b2b"> B2B</a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/b2c"> B2C</a>
                    </li>
                
                    <li class="page-back"><a href="{{url('/')}}/admin/lnmo_api_response">STK </a>
                    </li>
                    <li class="page-back"><a href="{{url('/')}}/admin/transaction_status">Transcation Status </a>
                    </li>
                </ul>
            </div>
            <div class="sb2-2-1">
                <h2>All Reversed Payments</h2>
                <center>
                    @if(Session::has('message'))
                                  <div class="alert alert-success">{{ Session::get('message') }}</div>
                   @endif
   
                   @if(Session::has('messageError'))
                                  <div class="alert alert-danger">{{ Session::get('messageError') }}</div>
                   @endif
                </center>
               
                <table class="table">
                    <thead>
                        <tr>
                            <th>IDs#</th>
                            <th>Details</th>
                            
                            <th>Durations</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                        @foreach ($Reverse as $item)
                        <tr>
                            <td>
                                transactionstatusID: {{$item->transactionstatusID}}<br>
                                Credit Party PublicName : {{$item->CreditPartyPublicName}}<br>
                                Debit Party PublicName : {{$item->DebitPartyPublicName}}<br>
                                
                            </td>
                            <td>
                              
                                    Amount: {{$item->Amount}}<br>
                                    DebitAccountBalance: {{$item->DebitAccountBalance}}<br>
                                    OriginalTransactionID : {{$item->OriginalTransactionID}}<br>
                                    Charge : {{$item->Charge}}<br>
                               
                                 
                            </td>
                            <td>
                                updateTime: {{$item->updateTime}}
                            </td>
                           
                          
                            <td><a onclick="archiveFunction{{$item->transactionstatusID}}()" href="#" class="sb2-2-1-edit"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                        </tr>
                        <script>
                            function archiveFunction{{$item->transactionstatusID}}()
                                {
                                    event.preventDefault(); // prevent form submit
                                    swal({
                                        title: "Are you sure you want to delete this record?",
                                        text: "Once deleted, you will not be able to recover this imaginary file!",
                                        icon: "warning",
                                        buttons: true,
                                        dangerMode: true,
                                        })
                                        .then((willDelete) => {
                                        if (willDelete) {
                                            //do the ajax stuff.
                                            $.ajax({
                                                url: "{{url('/')}}/admin/deleteReverseAjax",
                                                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                                                type: "POST",
                                                data: {id: {{$item->transactionstatusID}}},
                                                dataType: "html",
                                                success: function () 
                                                {
                                                    swal("Done!","It was succesfully deleted!","success");
                                                    setTimeout(function() {
                                                        window.location.reload();
                                                    }, 3000);

                                                }
                                            });
                                            // 
                                          
                                        } else {
                                            swal("Your imaginary file is safe!");
                                        }
                                    });
                                }
                        </script>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!--== BODY INNER CONTAINER ==-->

    </div>
</div>


@endsection