<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommissionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('commissions', function (Blueprint $table) {
            $table->increments('id');
            $table->decimal('commission1', 10, 2)->nullable()->comment('级别1分佣 比例');
            $table->decimal('commission2', 10, 2)->nullable()->comment('级别2分佣 比例');
            $table->decimal('commission3', 10, 2)->nullable()->comment('级别3分佣 比例');
            $table->decimal('commissionmoney', 10, 2)->nullable()->comment('升级条件 提现满金额');
            $table->decimal('ordermoney', 10, 2)->nullable()->comment('升级条件 订单总金额');
            $table->decimal('downcount', 10, 2)->nullable()->comment('升级条件 订单总金额');
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
        Schema::dropIfExists('commissions');
    }
}
