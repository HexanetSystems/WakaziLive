<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class EmailAvailable extends Controller
{
    function check(Request $request)
    {
     if($request->get('email'))
     {
      $email = $request->get('email');
      $data = DB::table("users")
       ->where('email', $email)
       ->count();
      if($data > 0)
      {
       echo 'not_unique';
      }
      else
      {
       echo 'unique';
      }
     }
    }
}
