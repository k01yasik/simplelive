<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountryFilmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('country_film', function (Blueprint $table) {
            $table->id();
            $table->foreignId('film_id');
            $table->foreignId('country_id');
            $table->timestamps();
        });

        Schema::table('country_film', function (Blueprint $table) {
            $table->foreign('film_id')->references('id')->on('films');
            $table->foreign('country_id')->references('id')->on('countries');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('country_film');
    }
}
