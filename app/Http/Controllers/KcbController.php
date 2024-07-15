<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Carbon\Carbon;

class KcbController extends Controller
{
    public function generateAccessToken (){
        $consumer_key = env('KCB_CONSUMER_KEY',null);
        $consumer_secret = env('KCB_CONSUMER_SECRET',null);

        $url = 'https://uat.buni.kcbgroup.com/token';
        $data=array(
            'grant_type'=>'client_credentials',
            'username'=>$consumer_key,
            'password'=>$consumer_secret,
        );
        $payload = http_build_query($data);
        $options=array(
             CURLOPT_URL=>$url,
             CURLOPT_POST=>true,
             CURLOPT_POSTFIELDS=>$payload,
             CURLOPT_RETURNTRANSFER=>true,
             CURLOPT_SSL_VERIFYPEER=>false,
             CURLOPT_HTTPHEADER=>array(
                'Authorization: Basic '.base64_encode($consumer_key.':'.$consumer_secret),
             ),
        );
        $Curl = curl_init();
        curl_setopt_array($Curl,$options);
        $response = curl_exec($Curl);
        if(curl_errno($Curl)){
            echo 'cURL error: '.curl_error($Curl);
        }
        curl_close($Curl);


        $access_token=json_decode($response);
        // dd($access_token->access_token);
        return $access_token->access_token;
    }

    public function lipaNaMpesaPassword()
    {
        $lipa_time = Carbon::rawParse('now')->format('YmdHms');
        $passkey = "f8c8d30f750d884990562ad0fd20e5e0c2e867e21ccae3974eff8c841a8d032f";
        $BusinessShortCode = 928732;
        $timestamp =$lipa_time;
        $lipa_na_mpesa_password = base64_encode($BusinessShortCode.$passkey.$timestamp);
        return $lipa_na_mpesa_password;
    }


    public function stkRequest(){

        $postData = array(
            "phoneNumber"=> "254723014032",
            "amount"=> "10",
            "invoiceNumber"=> "ONETILLNO#YOURREF",
            "sharedShortCode"=> "",
            "orgShortCode"=> "",
            "orgPassKey"=> "",
            "callbackUrl"=> "https://posthere.io/f613-4b7f-b82b",
            "transactionDescription"=> "school fee payment"
        );

        $url="https://uat.buni.kcbgroup.com/mm/api/request/1.0.0/stkpush";

        $options=array(
            CURLOPT_URL=>$url,
            CURLOPT_POST=>true,
            CURLOPT_POSTFIELDS=>$postData,
            CURLOPT_RETURNTRANSFER=>true,
            CURLOPT_SSL_VERIFYPEER=>false,
            CURLOPT_HTTPHEADER=>array(
               'Content-Type: application/json',
               'Authorization: Bearer '.$this->generateAccessToken(),
            ),
       );


       $Curl = curl_init();
       curl_setopt_array($Curl,$options);

       $response = curl_exec($Curl);

       if(curl_errno($Curl)){
           echo 'cURL error: '.curl_error($Curl);
       }

       curl_close($Curl);

       echo $response;

    }

    public function tryKen(){
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => 'https://uat.buni.kcbgroup.com/mm/api/request/1.0.0/stkpush',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS =>'{
            "phoneNumber": "254705027335",
            "amount": "10",
            "invoiceNumber": "ONETILLNO#YOURREF",
            "sharedShortCode": true,
            "orgShortCode": "",
            "orgPassKey": "",
            "callbackUrl": "https://posthere.io/f613-4b7f-b82b",
            "transactionDescription": "school fee payment"
        }',
        CURLOPT_HTTPHEADER => array(
            'accept: application/json',
            'routeCode: 207',
            'operation: STKPush',
            'messageId: 232323_KCBOrg_8875661561',
            'Content-Type: application/json',
            'Authorization: Bearer '.$this->generateAccessToken(),
            'Cookie: 4b1f380494b4bbde9d5435be5996a54d=c8ce1208a0770073a38a1f193b072115; dd73a3039ce793d42fd0d40f64213ce1=8c944c650c1df5dff545043cf35f9e6c'
        ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        echo $response;
    }

}
