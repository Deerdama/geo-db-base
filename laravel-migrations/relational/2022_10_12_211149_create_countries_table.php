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
            $table->integer('world_region_id')->nullable();
            $table->json('timezones')->nullable();
            $table->string('latitude', 20)->nullable();
            $table->string('longitude', 20)->nullable();
            $table->json('calling_codes')->nullable();
            $table->json('border_countries_id')->nullable();
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
