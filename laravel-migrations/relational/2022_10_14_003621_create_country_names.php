<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountryNames extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('country_names', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('country_id')->unsigned();
            $table->integer('language_id')->unsigned()->nullable();
            $table->string('type')->default('official');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('country_names');
    }
}
