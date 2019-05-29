<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('slug');
            $table->text('content');
            // $table->string('thumbnail');
            // $table->text('description');
            // $table->text('hot')->nullable();
            // Số lượt view tin
            $table->unsignedInteger('author_id')->nullable();
            $table->foreign('author_id')->references('id')->on('writers');
            $table->enum('status',[0, 1])->default(1);
            // 0: Ẩn, 1: Hiển thị
            $table->unsignedInteger('count_views')->default(0);
            $table->softDeletes();
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
        Schema::dropIfExists('news');
    }
}
