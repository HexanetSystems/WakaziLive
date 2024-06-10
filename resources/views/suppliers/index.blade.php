@extends('suppliers.master')

@section('content')

<div class="sa-app__content">
    <!-- sa-app__toolbar -->
    <div class="sa-toolbar sa-toolbar--search-hidden sa-app__toolbar">
       <div class="sa-toolbar__body">
          <div class="sa-toolbar__item">
             <button class="sa-toolbar__button" type="button" aria-label="Menu" data-sa-toggle-sidebar="">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="currentColor">
                   <path d="M1,11V9h18v2H1z M1,3h18v2H1V3z M15,17H1v-2h14V17z"></path>
                </svg>
             </button>
          </div>
          <div class="sa-toolbar__item sa-toolbar__item--search">
             <form class="sa-search sa-search--state--pending">
                <div class="sa-search__body">
                   <label class="visually-hidden" for="input-search">Search for:</label>
                   <div class="sa-search__icon">
                      <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                         <path d="M16.243 14.828C16.243 14.828 16.047 15.308 15.701 15.654C15.34 16.015 14.828 16.242 14.828 16.242L10.321 11.736C9.247 12.522 7.933 13 6.5 13C2.91 13 0 10.09 0 6.5C0 2.91 2.91 0 6.5 0C10.09 0 13 2.91 13 6.5C13 7.933 12.522 9.247 11.736 10.321L16.243 14.828ZM6.5 2C4.015 2 2 4.015 2 6.5C2 8.985 4.015 11 6.5 11C8.985 11 11 8.985 11 6.5C11 4.015 8.985 2 6.5 2Z"></path>
                      </svg>
                   </div>
                   <input type="text" id="input-search" class="sa-search__input" placeholder="Search for the truth" autoComplete="off"/>
                   <button class="sa-search__cancel d-sm-none" type="button" aria-label="Close search">
                      <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="currentColor">
                         <path d="M10.8,10.8L10.8,10.8c-0.4,0.4-1,0.4-1.4,0L6,7.4l-3.4,3.4c-0.4,0.4-1,0.4-1.4,0l0,0c-0.4-0.4-0.4-1,0-1.4L4.6,6L1.2,2.6 c-0.4-0.4-0.4-1,0-1.4l0,0c0.4-0.4,1-0.4,1.4,0L6,4.6l3.4-3.4c0.4-0.4,1-0.4,1.4,0l0,0c0.4,0.4,0.4,1,0,1.4L7.4,6l3.4,3.4 C11.2,9.8,11.2,10.4,10.8,10.8z"></path>
                      </svg>
                   </button>
                   <div class="sa-search__field"></div>
                </div>
                <div class="sa-search__dropdown">
                   <div class="sa-search__dropdown-loader"></div>
                   <div class="sa-search__dropdown-wrapper">
                      <div class="sa-search__suggestions sa-suggestions"></div>
                      <div class="sa-search__help sa-search__help--type--no-results">
                         <div class="sa-search__help-title">No results for &quot;<span class="sa-search__query"></span>&quot;</div>
                         <div class="sa-search__help-subtitle">Make sure that all words are spelled correctly.</div>
                      </div>
                      <div class="sa-search__help sa-search__help--type--greeting">
                         <div class="sa-search__help-title">Start typing to search for</div>
                         <div class="sa-search__help-subtitle">Products, orders, customers, actions, etc.</div>
                      </div>
                   </div>
                </div>
                <div class="sa-search__backdrop"></div>
             </form>
          </div>
          <div class="mx-auto"></div>
          <div class="sa-toolbar__item d-sm-none">
             <button class="sa-toolbar__button" type="button" aria-label="Show search" data-sa-action="show-search">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                   <path d="M16.243 14.828C16.243 14.828 16.047 15.308 15.701 15.654C15.34 16.015 14.828 16.242 14.828 16.242L10.321 11.736C9.247 12.522 7.933 13 6.5 13C2.91 13 0 10.09 0 6.5C0 2.91 2.91 0 6.5 0C10.09 0 13 2.91 13 6.5C13 7.933 12.522 9.247 11.736 10.321L16.243 14.828ZM6.5 2C4.015 2 2 4.015 2 6.5C2 8.985 4.015 11 6.5 11C8.985 11 11 8.985 11 6.5C11 4.015 8.985 2 6.5 2Z"></path>
                </svg>
             </button>
          </div>
          <div class="sa-toolbar__item dropdown">
             <button class="sa-toolbar__button" type="button" id="dropdownMenuButton3" data-bs-toggle="dropdown" data-bs-reference="parent" data-bs-offset="0,1" aria-expanded="false"><img src="{{asset('supplier-theme/vendor/flag-icons/24/GB.png')}}" class="sa-language-icon" alt=""/></button>
             <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton3">
                <li><a class="dropdown-item d-flex align-items-center" href="#"><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon me-3" alt=""/><span class="ps-2">English</span></a></li>
             </ul>
          </div>
          <div class="sa-toolbar__item dropdown">
             <button class="sa-toolbar__button" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" data-bs-reference="parent" data-bs-offset="0,1" aria-expanded="false">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                   <path d="M8,13c0,0-5.2,0-7,0c0-1-0.1-1.9,1-1.9C2,5,4,2,6,2c0-1.1,0-2,2-2c1.9,0,2,0.9,2,2c2,0,4,3,4,9c1,0,1,1,1,2C12.7,13,8,13,8,13z M6,14h4c0,1.1,0,2-2,2C6,16,6,15.1,6,14L6,14L6,14z"></path>
                </svg>
                <span class="sa-toolbar__button-indicator">3</span>
             </button>
             <div class="dropdown-menu dropdown-menu-end py-0" aria-labelledby="dropdownMenuButton2">
                <div class="sa-notifications">
                   <div class="sa-notifications__header">
                      <div class="sa-notifications__header-title">Notifications</div>
                      <a class="sa-notifications__header-action" href="#">Mark All as Read</a>
                   </div>
                   <ul class="sa-notifications__list">
                      <li class="sa-notifications__item">
                         <a href="#" class="sa-notifications__item-button">
                            <div class="sa-notifications__item-icon">
                               <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--style--primary">
                                  <div class="sa-symbol__icon">
                                     <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                                        <path d="M14.5,15h-1c-0.8,0-1.5-0.7-1.5-1.5v-8C12,4.7,12.7,4,13.5,4h1C15.3,4,16,4.7,16,5.5v8C16,14.3,15.3,15,14.5,15z M8.5,15h-1C6.7,15,6,14.3,6,13.5v-11C6,1.7,6.7,1,7.5,1h1C9.3,1,10,1.7,10,2.5v11C10,14.3,9.3,15,8.5,15z M2.5,15h-1C0.7,15,0,14.3,0,13.5v-5C0,7.7,0.7,7,1.5,7h1C3.3,7,4,7.7,4,8.5v5C4,14.3,3.3,15,2.5,15z"></path>
                                     </svg>
                                  </div>
                               </div>
                            </div>
                            <div class="sa-notifications__item-body">
                               <div class="sa-notifications__item-title sa-notifications__item-title--nowrap">New report has been received</div>
                               <div class="sa-notifications__item-subtitle sa-notifications__item-subtitle--nowrap">24 hours ago</div>
                            </div>
                         </a>
                      </li>
                      <li class="sa-notifications__item">
                         <a href="#" class="sa-notifications__item-button">
                            <div class="sa-notifications__item-icon">
                               <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--style--warning">
                                  <div class="sa-symbol__icon">
                                     <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                                        <path d="M8,6C4.7,6,2,4.7,2,3s2.7-3,6-3s6,1.3,6,3S11.3,6,8,6z M2,5L2,5L2,5C2,5,2,5,2,5z M8,8c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3S2,9.7,2,8V5C2,6.7,4.7,8,8,8z M14,5L14,5C14,5,14,5,14,5L14,5z M2,10L2,10L2,10C2,10,2,10,2,10z M8,13c3.3,0,6-1.3,6-3v3c0,1.7-2.7,3-6,3s-6-1.3-6-3v-3C2,11.7,4.7,13,8,13z M14,10L14,10C14,10,14,10,14,10L14,10z"></path>
                                     </svg>
                                  </div>
                               </div>
                            </div>
                            <div class="sa-notifications__item-body">
                               <div class="sa-notifications__item-title sa-notifications__item-title--nowrap">Creating a backup in the process</div>
                               <div class="sa-notifications__item-subtitle sa-notifications__item-subtitle--nowrap">Completed: 37% (23.05 MB)</div>
                            </div>
                         </a>
                      </li>
                      <li class="sa-notifications__item">
                         <a href="#" class="sa-notifications__item-button">
                            <div class="sa-notifications__item-icon">
                               <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--style--primary">
                                  <div class="sa-symbol__icon">
                                     <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                                        <path d="M14.2,10.3c-0.1,0.4-0.5,0.7-0.9,0.7H4.8c-0.5,0-0.9-0.3-1-0.8L2.2,4C2.1,3.4,1.6,3,1,3H0.4C0.2,3,0,2.8,0,2.6V1.4C0,1.2,0.2,1,0.4,1h1.4c1,0,1.9,0.7,2.1,1.7l1.5,6.1C5.5,8.9,5.7,9,5.8,9h6.5c0.1,0,0.2-0.1,0.3-0.2l1.1-3.4C13.8,5.2,13.7,5,13.5,5H7.4C7.2,5,7,4.8,7,4.6V3.4C7,3.2,7.2,3,7.4,3H15c0.6,0,1,0.4,1,1v1L14.2,10.3z M4.5,13C5.3,13,6,13.7,6,14.5C6,15.3,5.3,16,4.5,16S3,15.3,3,14.5C3,13.7,3.7,13,4.5,13z M11.5,13c0.8,0,1.5,0.7,1.5,1.5c0,0.8-0.7,1.5-1.5,1.5S10,15.3,10,14.5C10,13.7,10.7,13,11.5,13z"></path>
                                     </svg>
                                  </div>
                               </div>
                            </div>
                            <div class="sa-notifications__item-body">
                               <div class="sa-notifications__item-title sa-notifications__item-title--nowrap">Product added to cart</div>
                               <div class="sa-notifications__item-subtitle sa-notifications__item-subtitle--nowrap">Drill Ile Noma ALX7054 200 Watts</div>
                            </div>
                         </a>
                      </li>
                      <li class="sa-notifications__item">
                         <a href="#" class="sa-notifications__item-button">
                            <div class="sa-notifications__item-icon">
                               <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--style--info">
                                  <div class="sa-symbol__icon">
                                     <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                                        <path d="M8,10c-3.3,0-6,2.7-6,6H0c0-3.2,1.9-6,4.7-7.3C3.7,7.8,3,6.5,3,5c0-2.8,2.2-5,5-5s5,2.2,5,5c0,1.5-0.7,2.8-1.7,3.7c2.8,1.3,4.7,4,4.7,7.3h-2C14,12.7,11.3,10,8,10z M8,2C6.3,2,5,3.3,5,5s1.3,3,3,3s3-1.3,3-3S9.7,2,8,2z"></path>
                                     </svg>
                                  </div>
                               </div>
                            </div>
                            <div class="sa-notifications__item-body">
                               <div class="sa-notifications__item-title sa-notifications__item-title--nowrap">Customer Kimutai Rop says</div>
                               <div class="sa-notifications__item-subtitle sa-notifications__item-subtitle--nowrap">What is a screen dimension of Brandix Series B monitor?</div>
                            </div>
                         </a>
                      </li>
                   </ul>
                   <div class="sa-notifications__footer"><a class="sa-notifications__footer-action" href="#">See all 15 notifications</a></div>
                </div>
             </div>
          </div>
          <div class="dropdown sa-toolbar__item">
             <button class="sa-toolbar-user" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" data-bs-offset="0,1" aria-expanded="false"><span class="sa-toolbar-user__avatar sa-symbol sa-symbol--shape--rounded"><img src="{{asset('supplier-theme/images/customers/customer-7-64x64.jpg')}}" width="64" height="64" alt=""/></span><span class="sa-toolbar-user__info"><span class="sa-toolbar-user__title">{{Auth::User()->name}}</span><span class="sa-toolbar-user__subtitle">{{Auth::User()->email}}</span></span></button>
             <ul class="dropdown-menu w-100" aria-labelledby="dropdownMenuButton">
                <li><a class="dropdown-item" href="{{url('/')}}/supplier/my-profile">Profile</a></li>
                   <hr class="dropdown-divider"/>
                </li>
                <li><a class="dropdown-item" href="{{route('logout')}}" onclick="event.preventDefault();   document.getElementById('logout-form').submit();">Sign Out</a></li>

             </ul>
          </div>
       </div>
       <div class="sa-toolbar__shadow"></div>
    </div>
    <!-- sa-app__toolbar / end --><!-- sa-app__body -->
    <div id="top" class="sa-app__body px-2 px-lg-4">
       <div class="container pb-6">
          <div class="py-5">
             <div class="row g-4 align-items-center">
                <div class="col">
                   <h1 class="h3 m-0">Dashboard</h1>
                </div>
                <div class="col-auto d-flex">
                   <select class="form-select me-3">
                      <option selected="">{{date('d')}}, {{date('D')}} {{date('M')}}, {{date('Y')}}</option>
                   </select>
                   <a href="#" class="btn btn-primary">Export</a>
                </div>
             </div>
          </div>
          <div class="row g-4 g-xl-5">
             <div class="col-12 col-md-4 d-flex">
                <div class="card saw-indicator flex-grow-1" data-sa-container-query="{&quot;340&quot;:&quot;saw-indicator--size--lg&quot;}">
                   <div class="sa-widget-header saw-indicator__header">
                      <h2 class="sa-widget-header__title">Total sells</h2>
                      <div class="sa-widget-header__actions">
                         <div class="dropdown">
                            <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-1" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                               <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                  <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                               </svg>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-1">
                               <li><a class="dropdown-item" href="#">Settings</a></li>
                               <li><a class="dropdown-item" href="#">Move</a></li>
                               <li>
                                  <hr class="dropdown-divider"/>
                               </li>
                               <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                   <div class="saw-indicator__body">
                      <div class="saw-indicator__value">kes3799.00</div>
                      <div class="saw-indicator__delta saw-indicator__delta--rise">
                         <div class="saw-indicator__delta-direction">
                            <svg xmlns="http://www.w3.org/2000/svg" width="9" height="9" viewBox="0 0 9 9" fill="currentColor">
                               <path d="M9,0L8,6.1L2.8,1L9,0z"></path>
                               <circle cx="1" cy="8" r="1"></circle>
                               <rect x="0" y="4.5" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -2.864 4.0858)" width="7.1" height="2"></rect>
                            </svg>
                         </div>
                         <div class="saw-indicator__delta-value">34.7%</div>
                      </div>
                      <div class="saw-indicator__caption">Compared to April 2024</div>
                   </div>
                </div>
             </div>
             <div class="col-12 col-md-4 d-flex">
                <div class="card saw-indicator flex-grow-1" data-sa-container-query="{&quot;340&quot;:&quot;saw-indicator--size--lg&quot;}">
                   <div class="sa-widget-header saw-indicator__header">
                      <h2 class="sa-widget-header__title">Average order value</h2>
                      <div class="sa-widget-header__actions">
                         <div class="dropdown">
                            <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-2" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                               <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                  <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                               </svg>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-2">
                               <li><a class="dropdown-item" href="#">Settings</a></li>
                               <li><a class="dropdown-item" href="#">Move</a></li>
                               <li>
                                  <hr class="dropdown-divider"/>
                               </li>
                               <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                   <div class="saw-indicator__body">
                      <div class="saw-indicator__value">kes272.98</div>
                      <div class="saw-indicator__delta saw-indicator__delta--fall">
                         <div class="saw-indicator__delta-direction">
                            <svg xmlns="http://www.w3.org/2000/svg" width="9" height="9" viewBox="0 0 9 9" fill="currentColor">
                               <path d="M2.8,8L8,2.9L9,9L2.8,8z"></path>
                               <circle cx="1" cy="1" r="1"></circle>
                               <rect x="0" y="2.5" transform="matrix(0.7071 0.7071 -0.7071 0.7071 3.5 -1.4497)" width="7.1" height="2"></rect>
                            </svg>
                         </div>
                         <div class="saw-indicator__delta-value">12.0%</div>
                      </div>
                      <div class="saw-indicator__caption">Compared to April 2024</div>
                   </div>
                </div>
             </div>
             <div class="col-12 col-md-4 d-flex">
                <div class="card saw-indicator flex-grow-1" data-sa-container-query="{&quot;340&quot;:&quot;saw-indicator--size--lg&quot;}">
                   <div class="sa-widget-header saw-indicator__header">
                      <h2 class="sa-widget-header__title">Total orders</h2>
                      <div class="sa-widget-header__actions">
                         <div class="dropdown">
                            <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-3" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                               <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                  <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                               </svg>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-3">
                               <li><a class="dropdown-item" href="#">Settings</a></li>
                               <li><a class="dropdown-item" href="#">Move</a></li>
                               <li>
                                  <hr class="dropdown-divider"/>
                               </li>
                               <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                   <div class="saw-indicator__body">
                      <div class="saw-indicator__value">578</div>
                      <div class="saw-indicator__delta saw-indicator__delta--rise">
                         <div class="saw-indicator__delta-direction">
                            <svg xmlns="http://www.w3.org/2000/svg" width="9" height="9" viewBox="0 0 9 9" fill="currentColor">
                               <path d="M9,0L8,6.1L2.8,1L9,0z"></path>
                               <circle cx="1" cy="8" r="1"></circle>
                               <rect x="0" y="4.5" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -2.864 4.0858)" width="7.1" height="2"></rect>
                            </svg>
                         </div>
                         <div class="saw-indicator__delta-value">27.9%</div>
                      </div>
                      <div class="saw-indicator__caption">Compared to April 2024</div>
                   </div>
                </div>
             </div>
             <div class="col-12 col-lg-4 col-xxl-3 d-flex">
                <div class="card flex-grow-1 saw-pulse" data-sa-container-query="{&quot;560&quot;:&quot;saw-pulse--size--lg&quot;}">
                   <div class="sa-widget-header saw-pulse__header">
                      <h2 class="sa-widget-header__title">Active users</h2>
                      <div class="sa-widget-header__actions">
                         <div class="dropdown">
                            <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-4" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                               <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                  <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                               </svg>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-4">
                               <li><a class="dropdown-item" href="#">Settings</a></li>
                               <li><a class="dropdown-item" href="#">Move</a></li>
                               <li>
                                  <hr class="dropdown-divider"/>
                               </li>
                               <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                   <div class="saw-pulse__counter">148</div>
                   <div class="sa-widget-table saw-pulse__table">
                      <table>
                         <thead>
                            <tr>
                               <th>Active pages</th>
                               <th class="text-end">Users</th>
                            </tr>
                         </thead>
                         <tbody>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p1</a></td>
                               <td class="text-end">15</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p2</a></td>
                               <td class="text-end">11</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p3</a></td>
                               <td class="text-end">7</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p4</a></td>
                               <td class="text-end">4</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p5</a></td>
                               <td class="text-end">3</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p6</a></td>
                               <td class="text-end">3</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="text-reset">/products/my-product-p7</a></td>
                               <td class="text-end">1</td>
                            </tr>
                         </tbody>
                      </table>
                   </div>
                </div>
             </div>

             <div class="col-12 col-lg-8 col-xxl-9 d-flex">
                <div class="card flex-grow-1 saw-table">
                   <div class="sa-widget-header saw-table__header">
                      <h2 class="sa-widget-header__title">Recent orders</h2>
                      <div class="sa-widget-header__actions">
                         <div class="dropdown">
                            <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-6" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                               <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                  <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                               </svg>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-6">
                               <li><a class="dropdown-item" href="#">Settings</a></li>
                               <li><a class="dropdown-item" href="#">Move</a></li>
                               <li>
                                  <hr class="dropdown-divider"/>
                               </li>
                               <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                   <div class="saw-table__body sa-widget-table text-nowrap">
                      <table>
                         <thead>
                            <tr>
                               <th>No.</th>
                               <th>Status</th>
                               <th>Co.</th>
                               <th>Customer</th>
                               <th>Date</th>
                               <th>Total</th>
                            </tr>
                         </thead>
                         <tbody>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00745</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-primary">Pending</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="Italy"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">GB</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Giordano Bruno</a></div>
                                  </div>
                               </td>
                               <td>2020-11-02</td>
                               <td>kes2,742.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00513</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-warning">Hold</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="Germany"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">HW</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Hans Weber</a></div>
                                  </div>
                               </td>
                               <td>2020-09-05</td>
                               <td>kes204.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00507</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-primary">Pending</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="Italy"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">AR</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Andrea Rossi</a></div>
                                  </div>
                               </td>
                               <td>2020-08-21</td>
                               <td>kes5,039.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00104</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-danger">Canceled</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="USA"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">RF</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Richard Feynman</a></div>
                                  </div>
                               </td>
                               <td>2020-06-22</td>
                               <td>kes79.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00097</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-success">Completed</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="Columbia"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">LG</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Leonardo Garcia</a></div>
                                  </div>
                               </td>
                               <td>2020-05-09</td>
                               <td>kes826.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00082</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-success">Completed</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="Srbija"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">NT</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Nikola Tesla</a></div>
                                  </div>
                               </td>
                               <td>2020-04-27</td>
                               <td>kes1,052.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00063</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-primary">Pending</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="France"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">MC</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Marie Curie</a></div>
                                  </div>
                               </td>
                               <td>2020-02-09</td>
                               <td>kes441.00</td>
                            </tr>
                            <tr>
                               <td><a href="app-order.html" class="text-reset">#00012</a></td>
                               <td>
                                  <div class="d-flex fs-6">
                                     <div class="badge badge-sa-success">Completed</div>
                                  </div>
                               </td>
                               <td><img src="{{asset('supplier-theme/vendor/flag-icons/24/Flag_of_Kenya-64x43.png')}}" class="sa-language-icon d-block" alt="" title="Russia"/></td>
                               <td>
                                  <div class="d-flex align-items-center">
                                     <a href="app-customer.html" class="sa-symbol sa-symbol--shape--circle sa-symbol--size--md me-3">
                                        <div class="sa-symbol__text">KT</div>
                                     </a>
                                     <div><a href="app-customer.html" class="text-reset">Konstantin Tsiolkovsky</a></div>
                                  </div>
                               </td>
                               <td>2020-01-01</td>
                               <td>kes12,961.00</td>
                            </tr>
                         </tbody>
                      </table>
                   </div>
                </div>
             </div>

             <div class="col-12 col-lg-6 d-flex">
                <div class="card flex-grow-1">
                   <div class="card-body">
                      <div class="sa-widget-header mb-4">
                         <h2 class="sa-widget-header__title">Recent activity</h2>
                         <div class="sa-widget-header__actions">
                            <div class="dropdown">
                               <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-8" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                     <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                                  </svg>
                               </button>
                               <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-8">
                                  <li><a class="dropdown-item" href="#">Settings</a></li>
                                  <li><a class="dropdown-item" href="#">Move</a></li>
                                  <li>
                                     <hr class="dropdown-divider"/>
                                  </li>
                                  <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                               </ul>
                            </div>
                         </div>
                      </div>
                      <div class="sa-timeline mb-n2 pt-2">
                         <ul class="sa-timeline__list">
                            <?php
                                   $Activity = DB::table('activity_log')->where('causer_id', Auth::user()->id)->limit(6)->get()
                            ?>
                            @foreach ($Activity as $activity)
                            <li class="sa-timeline__item">
                                <div class="sa-timeline__item-title"><?php echo timeAgo($activity->created_at) ?></div>
                                <div class="sa-timeline__item-content">{{$activity->description}}</a></div>
                             </li>
                            @endforeach


                         </ul>
                      </div>
                   </div>
                </div>
             </div>
             <div class="col-12 col-lg-6 d-flex">
                <div class="card flex-grow-1">
                   <div class="card-body">
                      <div class="sa-widget-header">
                         <h2 class="sa-widget-header__title">Recent reviews</h2>
                         <div class="sa-widget-header__actions">
                            <div class="dropdown">
                               <button type="button" class="btn btn-sm btn-sa-muted d-block" id="widget-context-menu-9" data-bs-toggle="dropdown" aria-expanded="false" aria-label="More">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="3" height="13" fill="currentColor">
                                     <path d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z"></path>
                                  </svg>
                               </button>
                               <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="widget-context-menu-9">
                                  <li><a class="dropdown-item" href="#">Settings</a></li>
                                  <li><a class="dropdown-item" href="#">Move</a></li>
                                  <li>
                                     <hr class="dropdown-divider"/>
                                  </li>
                                  <li><a class="dropdown-item text-danger" href="#">Remove</a></li>
                               </ul>
                            </div>
                         </div>
                      </div>
                   </div>
                   <ul class="list-group list-group-flush">

                      <li class="list-group-item py-2">
                         <div class="d-flex align-items-center py-3">
                            <a href="app-product.html" class="me-4">
                               <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--size--lg"><img src="{{asset('supplier-theme/images/products/product-1-40x40.jpg')}}" width="40" height="40" alt=""/></div>
                            </a>
                            <div class="d-flex align-items-center flex-grow-1 flex-wrap">
                               <div class="col">
                                  <a href="app-product.html" class="text-reset fs-exact-14">Wiper Blades Brandix WL2</a>
                                  <div class="text-muted fs-exact-13">Reviewed by <a href="app-customer.html" class="text-reset">Amos Kipchumba</a></div>
                               </div>
                               <div class="col-12 col-sm-auto">
                                  <div class="sa-rating ms-sm-3 my-2 my-sm-0" style="--sa-rating--value:1">
                                     <div class="sa-rating__body"></div>
                                  </div>
                               </div>
                            </div>
                         </div>
                      </li>
                   </ul>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- sa-app__body / end --><!-- sa-app__footer -->
    <div class="sa-app__footer d-block d-md-flex">
       <!-- copyright -->Wakazi Suppliers Dashboad App — © 2024
       <div class="m-auto"></div>
       <div>Powered by Wakazi IT — Design by <a href="#">Wakazi Creatives</a></div>
       <!-- copyright / end -->
    </div>
    <!-- sa-app__footer / end -->
 </div>
@endsection
