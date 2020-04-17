<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAnlisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anlis', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_id')->comment('分类');
            $table->string('title')->comment('标题');
            $table->string('image')->nullable()->comment('主图');
            $table->string('uri')->nullable()->comment('地址');
            $table->string('type')->nullable()->comment('类别');
            $table->string('features')->nullable()->comment('特点');
            $table->boolean('is_app')->default(false);
            $table->string('video')->nullable()->comment('视频');
            $table->longText('content1')->nullable()->comment('详情1');
            $table->longText('content2')->nullable()->comment('详情2');
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
        Schema::dropIfExists('anlis');
    }
}
