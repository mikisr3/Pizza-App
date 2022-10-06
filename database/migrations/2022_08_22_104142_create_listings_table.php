<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('title');
            $table->string('logo')->nullable();
            $table->string('tags');
            $table->number('small')->nullable();
            $table->number('medium')->nullable();
            $table->number('large')->nullable();
            // $table->string('coordinates')->nullable();
            // $table->string('company');
            // $table->string('location');
            // $table->string('email');
            // $table->string('website');
            $table->longText('description');
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
        Schema::dropIfExists('listings');

      
    }
}

// class RemoveCoord extends Migration {

//     public function up(){

//          Schema::table('listings', function($table) {
//             $table->dropColumn('coordinates');
//             // $table->dropColumn('view_count');
//         });

//     }

//     public function down(){

//           Schema::table('listings', function($table) {
//             $table->string('coordinates');
//             // $table->integer('view_count');
//         });


//     }


// }
