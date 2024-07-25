<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SendEmail extends Model
{
    use HasFactory;
    public static function mailUser($email,$name,$invoicenumber){
        $message = 'Hello '.$name.' Your Order has been received, We have created a summary of the order below:';
        $subject = 'Your Invoice Has Been Created';
        $CartItems = \Cart::Content();

        // Process Cart

        //The Generic mailler Goes here
        $data = array(
            'invoicenumber'=>$invoicenumber,
            'content'=>$message,
            'subject'=>$subject,
            'name'=>$name,
            'CartItems'=>$CartItems,

        );


        $appName = config('app.name');
        $appEmail = config('mail.username');

        $FromVariable = "noreply@wakazi.co.ke";
        $FromVariableName = "Wakazi Works";

        $toVariable = $email;

        $toVariableName = $name;


        Mail::send('emailClient', $data, function($message) use ($subject,$FromVariable,$FromVariableName,$toVariable,$toVariableName){
            $message->from($FromVariable , $FromVariableName);
            $message->to($toVariable, $toVariableName)->bcc('albertmuhatia@gmail.com')->cc('info@armstrong.ke')->cc('sales@armstrong.ke')->subject($subject);
        });
    }
}
