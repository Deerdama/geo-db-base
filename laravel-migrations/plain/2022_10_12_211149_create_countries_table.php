<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('countries', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->string('native_name');
            $table->string('common_name')->nullable();
            $table->string('code', 10)->unique();
            $table->string('code_3', 10)->unique();
            $table->string('capital')->nullable();
            $table->string('continent', 30);
            $table->string('world_region', 30)->nullable();
            $table->json('timezones')->nullable();
            $table->json('languages')->nullable();
            $table->json('currencies')->nullable();
            $table->string('latitude', 20)->nullable();
            $table->string('longitude', 20)->nullable();
            $table->json('translations')->nullable();
            $table->json('alt_names')->nullable();
            $table->json('calling_codes')->nullable();
            $table->json('border_countries')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('countries');
    }
}
