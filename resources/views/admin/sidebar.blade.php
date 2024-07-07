<?php $SiteSettings = DB::table('_site_settings')->get(); ?>
@foreach ($SiteSettings as $SiteSettings)
<div class="sb2-1">
   <!--== USER INFO ==-->
   <div class="sb2-12">
      <ul>
         <li><img src="{{url('/')}}/uploads/users/{{Auth::user()->image }}" alt="">
         </li>
         <li>
            <h5>{{Auth::user()->name}}<span>{{$SiteSettings->location}}</span></h5>
         </li>
         <li></li>
      </ul>
   </div>
   <!--== LEFT MENU ==-->
   <div class="sb2-13">
      <ul class="collapsible" data-collapsible="accordion">
         <li><a href="{{url('/')}}/admin/home" class="menu-active"><i class="fa fa-home" aria-hidden="true"></i> Dashboard</a>
         </li>
         <li><a target="_blank" href="{{url('/')}}/" class="menu-active"><i class="fa fa-globe" aria-hidden="true"></i> Visit Website</a>
         </li>
         <li>
            <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-folder" aria-hidden="true"></i> Parent Categories </a>
            <div class="collapsible-body left-sub-menu">
               <ul>
                  <li><a href="{{url('/')}}/admin/mains">All Parent Categorgy  </a>
                  </li>
                  <li><a href="{{url('/')}}/admin/addMain">Add Parent Category</a>
                  </li>
               </ul>
            </div>
         </li>

        </li>
        {{--  --}}
              {{--  --}}
              <li>
                <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-folder" aria-hidden="true"></i> Categories </a>
                <div class="collapsible-body left-sub-menu">
                   <ul>
                      <li><a href="{{url('/')}}/admin/categories">All Category </a>
                      </li>
                      <li><a href="{{url('/')}}/admin/addCategory">Add Category</a>
                      </li>
                   </ul>
                </div>
             </li>

            </li>


            <li>
              <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-folder" aria-hidden="true"></i> Sub Categories </a>
              <div class="collapsible-body left-sub-menu">
                 <ul>
                    <li><a href="{{url('/')}}/admin/subcategories">All Sub Category </a>
                    </li>
                    <li><a href="{{url('/')}}/admin/addSubCategory">Add Sub Category</a>
                    </li>
                 </ul>
              </div>
           </li>
             {{--  --}}
             <?php $ProductCount = DB::table('products')->where('status',"0")->count(); ?>
             <li>
                <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-suitcase" aria-hidden="true"></i> Products </a>
                <div class="collapsible-body left-sub-menu">
                   <ul>

                      <li><a href="{{url('/')}}/admin/products">All Products </a>
                      </li>
                      <li><a href="{{route('product-approve')}}">Pending Approval <sup class="text-danger" style="border-radius: 50%; font-weight:900">{{$ProductCount}}</sup> </a>
                      </li>
                      <li><a href="{{url('/')}}/admin/addProduct">Add Products</a>
                      </li>
                   </ul>
                </div>
             </li>

             <li>
                <a href="{{url('/')}}/admin/orders" class="collapsible-header"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Orders </a>

             </li>

            <li>
                <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-rss" aria-hidden="true"></i> News & Blogs</a>
                <div class="collapsible-body left-sub-menu">
                <ul>
                    <li><a href="{{url('/')}}/admin/blog">All Blogs</a>
                    </li>
                    <li><a href="{{url('/')}}/admin/addBlog">Add Blog</a>
                    </li>
                </ul>
                </div>
            </li>




         {{--  --}}
         <li>
            <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-ticket" aria-hidden="true"></i> Payments</a>
            <div class="collapsible-body left-sub-menu">
               <ul>
                  <li>
                     <a style="color:#000000 !important; font-weight:600" href="javascript:void(0)" class="collapsible-header"><i class="fa fa-money" aria-hidden="true"></i>M-PESA API</a>
                     <div class="left-sub-menu">
                        <ul>
                           <li><a style="color:#000000 !important; text-align: center;" href="{{url('/')}}/admin/lnmo_api_response">STK Transactions</a>
                           </li>
                           <li><a style="color:#000000 !important; text-align: center;" href="{{url('/')}}/admin/mobile_payments">C2B Transactions</a>
                           </li>
                        </ul>
                     </div>
                  </li>
                  <li>
                     <a style="color:#000000 !important; font-weight:600" href="{{url('/')}}" class="collapsible-header"><i class="fa fa-paypal" aria-hidden="true"></i>Paypal Payments</a>
                     <div class="left-sub-menu">
                     </div>
                  </li>
               </ul>
            </div>
         </li>
         {{--  --}}
         <li>
            <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-user" aria-hidden="true"></i>System Users</a>
            <div class="collapsible-body left-sub-menu">
               <ul>

                  <li><a href="{{url('/')}}/admin/addUser">Add User</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/users">Manage Users</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/admins">Manage Admins</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/managers">Manage Managers</a>
                  </li>
               </ul>
            </div>
         </li>
         {{--  --}}
         <li>
            <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-info" aria-hidden="true"></i>Information Center</a>
            <div class="collapsible-body left-sub-menu">
               <ul>
                  <li><a href="{{url('/')}}/admin/faq">Frequently Asked Questions</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/how">How It Works</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/county-bounty">County Bounty</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/artisan-voices">Artisan Voices</a>
                  </li>
               </ul>
            </div>
         </li>
         {{--  --}}
         <li>
            <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-gavel" aria-hidden="true"></i>Legal Pages</a>
            <div class="collapsible-body left-sub-menu">
               <ul>
                  <li><a href="{{url('/')}}/admin/editAbout">About Us</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/privacy">Privacy Policy</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/terms">Terms and Conditions</a>
                  </li>
                  <li><a href="{{url('/')}}/admin/editCopyright"> Copyright Statement</a>
                  </li>
               </ul>
            </div>
         </li>
         <li><a href="{{url('/')}}/admin/logo-and-favicon"><i class="fa fa-info" aria-hidden="true"></i> Logo & Favicon </a>
         </li>
         <li>
            <a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-cog" aria-hidden="true"></i> SiteSettings </a>
            <div class="collapsible-body left-sub-menu">
               <ul>
                  <li><a href="{{url('/')}}/admin/SiteSettings">Systems Settings </a>
                  </li>
                  <li><a href="{{url('/')}}/admin/mailerSettings">Mailer Settings </a>
                  </li>
                  <li><a href="{{url('/')}}/admin/credentials">Systems Credentials </a>
                  </li>
               </ul>
            </div>
         </li>
         <li><a href="{{url('/')}}/admin/SocialMediaSettings"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Social Media</a>
         </li>
         <li><a href="{{ route('logout') }}" class="sa-nav__link" onclick="event.preventDefault();   document.getElementById('logout-form').submit();" target="_blank"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout </a>
         </li>
      </ul>
   </div>
</div>
<form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
    @csrf
</form>
@endforeach






