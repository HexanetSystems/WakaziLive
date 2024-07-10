<?php
function timeAgo($timestamp){
    $datetime1=new DateTime("now");
    $datetime2=date_create($timestamp);
    $diff=date_diff($datetime1, $datetime2);
    $timemsg='';
    if($diff->y > 0){
        $timemsg = $diff->y .' year'. ($diff->y > 1?"'s":'');

    }
    else if($diff->m > 0){
    $timemsg = $diff->m . ' month'. ($diff->m > 1?"'s":'');
    }
    else if($diff->d > 0){
    $timemsg = $diff->d .' day'. ($diff->d > 1?"'s":'');
    }
    else if($diff->h > 0){
    $timemsg = $diff->h .' hour'.($diff->h > 1 ? "'s":'');
    }
    else if($diff->i > 0){
    $timemsg = $diff->i .' minute'. ($diff->i > 1?"'s":'');
    }
    else if($diff->s > 0){
    $timemsg = $diff->s .' second'. ($diff->s > 1?"'s":'');
    }

$timemsg = $timemsg.' ago';
return $timemsg;
}
function dollar($value){
    $newValue = $value*0.0099;
    return $newValue;
}

function randomGen($min, $max, $quantity) {
    $numbers = range($min, $max);
    shuffle($numbers);
    return array_slice($numbers, 0, $quantity);
}


function add_nol($number,$add_nol) {
   while (strlen($number)<$add_nol) {
       $number = "AVS0".$number;
   }
   return $number;
}

function getAuthor($id){
    $author = \App\Models\User::find($id);
    return $author->name;
}

function getAuthorSlung($id){
    $author = \App\Models\User::find($id);
    return $author->username;
}

function getAuthorBio($id){
    $author = \App\Models\User::find($id);
    return $author->content;
}

function getAuthorDP($id){
    $author = \App\Models\User::find($id);
    return $author->image;
}


function getCategory($id){
    $Category = \App\Models\Category::find($id);
    return $Category;
}



function getCommision($salesAmount, $commissionRate) {
    // Validate the inputs
    if ($salesAmount < 0 || $commissionRate < 0) {
        return "Invalid input: Sales amount and commission rate must be non-negative.";
    }

    // Calculate the commission
    $commission = $salesAmount * ($commissionRate / 100);

    return $commission;
}


?>
