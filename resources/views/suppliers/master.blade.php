<!DOCTYPE html>
<html lang="en" dir="ltr" data-scompiler-id="0">

   <head>
      <meta charSet="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="format-detection" content="telephone=no"/>
      <title>{{Auth::User()->name}} - Wakazi Suppliers Dashboard</title>
      <!-- icon -->
      <link rel="icon" type="image/png" href="images/favicon.png')}}"/>
      <!-- fonts -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i"/>
      <!-- css -->
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/bootstrap/css/bootstrap.ltr.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/highlight.js/styles/github.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/simplebar/simplebar.min.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/quill/quill.snow.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/air-datepicker/css/datepicker.min.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/select2/css/select2.min.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/datatables/css/dataTables.bootstrap5.min.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/nouislider/nouislider.min.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/vendor/fullcalendar/main.min.css')}}"/>
      <link rel="stylesheet" href="{{asset('supplier-theme/css/style.css')}}"/>

      <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-97489509-8"></script><script>
         window.dataLayer = window.dataLayer || [];
         function gtag(){dataLayer.push(arguments);}
         gtag('js', new Date());

         gtag('config', 'UA-97489509-8');
      </script>

   </head>
   <body>
      <!-- sa-app -->
      <div class="sa-app sa-app--desktop-sidebar-shown sa-app--mobile-sidebar-hidden sa-app--toolbar-fixed">
         <!-- sa-app__sidebar -->
         <div class="sa-app__sidebar">
            <div class="sa-sidebar">
               <div class="sa-sidebar__header">
                  <a class="sa-sidebar__logo" href="{{url('/')}}/supplier/hom">
                     <!-- logo -->
                     <div class="sa-sidebar-logo">
                        <img width="80px" src="{{url('/')}}/supplier-theme/images/wakazi-logo.png">
                        <div class="sa-sidebar-logo__caption">Supplier</div>
                     </div>
                     <!-- logo / end -->
                  </a>
               </div>
               <div class="sa-sidebar__body" data-simplebar="">
                  @include('suppliers.sidebar')
               </div>
            </div>
            <div class="sa-app__sidebar-shadow"></div>
            <div class="sa-app__sidebar-backdrop" data-sa-close-sidebar=""></div>
         </div>
         <!-- sa-app__sidebar / end --><!-- sa-app__content -->
         @yield('content')
         <!-- sa-app__content / end --><!-- sa-app__toasts -->
         <div class="sa-app__toasts toast-container bottom-0 end-0"></div>
         <!-- sa-app__toasts / end -->
      </div>
      <!-- sa-app / end --><!-- scripts -->
      <script src="{{asset('supplier-theme/vendor/jquery/jquery.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/feather-icons/feather.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/simplebar/simplebar.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/highlight.js/highlight.pack.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/quill/quill.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/air-datepicker/js/datepicker.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/air-datepicker/js/i18n/datepicker.en.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/select2/js/select2.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/fontawesome/js/all.min.js')}}" data-auto-replace-svg="" async=""></script>
      <script src="{{asset('supplier-theme/vendor/chart.js/chart.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/datatables/js/jquery.dataTables.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/datatables/js/dataTables.bootstrap5.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/nouislider/nouislider.min.js')}}"></script>
      <script src="{{asset('supplier-theme/vendor/fullcalendar/main.min.js')}}"></script>
      <script src="{{asset('supplier-theme/js/stroyka.js')}}"></script>
      <script src="{{asset('supplier-theme/js/custom.js')}}"></script>
      <script src="{{asset('supplier-theme/js/calendar.js')}}"></script>
      <script src="{{asset('supplier-theme/js/demo.js')}}"></script>
      <script src="{{asset('supplier-theme/js/demo-chart-js.js')}}"></script>
   </body>

</html>
