<!-- resources/views/suppliers/makePayment.blade.php -->

@extends('suppliers.master')

@section('content')
<div class="container">
    <h2>Make a Payment</h2>

    <!-- Payment Form -->
    <form action="{{ route('kcb.stkRequestMake') }}" method="POST">
        @csrf

        <!-- Phone Number Input -->
        <div class="form-group">
            <label for="phoneNumber">Phone Number:</label>
            <input type="text" id="phoneNumber" name="phoneNumber" class="form-control" placeholder="Enter your phone number" required>
        </div>

        <!-- Amount Input -->
        <div class="form-group">
            <label for="amount">Amount:</label>
            <input type="number" id="amount" name="amount" class="form-control" placeholder="Enter amount to pay" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary">Make Payment</button>
    </form>
</div>
@endsection
