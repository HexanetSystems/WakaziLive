<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->integer('UserID')->nullable();
            $table->tinyInteger('status')->default(0);
            $table->string('pro_condition')->default('New');
            $table->string('slung')->nullable();
            $table->string('video')->nullable();
            $table->string('category')->nullable();
            $table->string('sub_category_id')->nullable();
            $table->integer('google_product_category')->default(6552);
            $table->string('brand')->default('Aste');
            $table->tinyInteger('featured')->default(0);
            $table->tinyInteger('trending')->default(1);
            $table->string('banner_position')->nullable();
            $table->string('sku')->nullable();
            $table->string('stock')->nullable()->default('In Stock');
            $table->string('price_raw')->nullable();
            $table->string('price')->nullable();
            $table->text('meta')->nullable();
            $table->text('content')->nullable();
            $table->string('image_one')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
