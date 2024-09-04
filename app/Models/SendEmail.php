<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Mail;

class SendEmail extends Model
{
    use HasFactory;
    public static function mailUser($email,$name,$InvoiceNumber){
        $message = 'Hello '.$name.' Your Order has been received, We have created a summary of the order below:';
        $subject = 'Your Order Has';
        $CartItems = \Cart::Content();

        // Process Cart

        //The Generic mailler Goes here
        $data = array(
            'invoicenumber'=>$InvoiceNumber,
            'content'=>$message,
            'subject'=>$subject,
            'name'=>$name,
            'CartItems'=>$CartItems,

        );
        $appName = config('app.name');
        $appEmail = config('mail.username');

        $FromVariable = "no-reply@wakazi.co.ke";
        $FromVariableName = "Wakazi Works";

        $toVariable = $email;

        $toVariableName = $name;


        Mail::send('emailClient', $data, function($message) use ($subject,$FromVariable,$FromVariableName,$toVariable,$toVariableName){
            $message->from($FromVariable , $FromVariableName);
            $message->to($toVariable, $toVariableName)->bcc('albertmuhatia@gmail.com')->subject($subject);
        });
    }



    public static function MailSupplier($SupplierEmail,$SupplierName,$InvoiceNumber){
        $message = 'Hello '.$SupplierName.' You have a new Order, We have created a summary of the order below:';
        $subject = 'Supplier Your Invoice Has Been Created';
        $CartItems = \Cart::Content();

        $data = array(
            'invoicenumber'=>$InvoiceNumber,
            'content'=>$message,
            'subject'=>$subject,
            'CartItems'=>$CartItems,
        );

        $appName = "Wakazi Works";
        $appEmail = "info@wakazi.co.ke";

        $FromVariable = "no-reply@wakazi.co.ke";
        $FromVariableName = "Wakazi Works";

        $toVariable = $SupplierEmail;
        $toVariableName = $SupplierName;

        Mail::send('emailSupplier', $data, function($message) use ($subject,$FromVariable,$FromVariableName,$toVariable,$toVariableName){
            $message->from($FromVariable , $FromVariableName);
            $message->to($toVariable, $toVariableName)->bcc('albertmuhatia@gmail.com')->subject($subject);
        });
    }

    public static function testEmail($email,$name,$InvoiceNumber){
        $message = 'Hello '.$name.' Your Order has been received, We have created a summary of the order below:';
        $subject = 'Your Order Has';


        // Process Cart

        //The Generic mailler Goes here
        $data = array(
            'invoicenumber'=>$InvoiceNumber,
            'content'=>$message,
            'subject'=>$subject,
            'name'=>$name,
        );
        $appName = config('app.name');
        $appEmail = config('mail.username');

        $FromVariable = "no-reply@wakazi.co.ke";
        $FromVariableName = "Wakazi Works";

        $toVariable = $email;

        $toVariableName = $name;


        Mail::send('testEmail', $data, function($message) use ($subject,$FromVariable,$FromVariableName,$toVariable,$toVariableName){
            $message->from($FromVariable , $FromVariableName);
            $message->to($toVariable, $toVariableName)->bcc('albertmuhatia@gmail.com')->subject($subject);
        });
    }


    public static function confirmOrder($UserEmail,$UserName,$orderID){
        $message = 'Thank You For Shopping with Wakazi Works, Your Order ID: '.$orderID.' has been confirm, You will received details of your delivery within an hour';
        $subject = 'Order Confirmed';


        // Process Cart

        //The Generic mailler Goes here
        $data = array(

            'content'=>$message,
            'subject'=>$subject,

        );
        $appName = config('app.name');
        $appEmail = config('mail.username');

        $FromVariable = "no-reply@wakazi.co.ke";
        $FromVariableName = "Wakazi Works";

        $toVariable = $UserEmail;

        $toVariableName = $UserName;


        Mail::send('confirm', $data, function($message) use ($subject,$FromVariable,$FromVariableName,$toVariable,$toVariableName){
            $message->from($FromVariable , $FromVariableName);
            $message->to($toVariable, $toVariableName)->bcc('albertmuhatia@gmail.com')->subject($subject);
        });
    }




}
