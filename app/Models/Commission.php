<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Commission extends Model
{
    protected $table = 'commissions';
    protected $fillable = [
        'commission1',
        'commission2',
        'commission3',
        'commissionmoney',
        'ordermoney',
        'downcount'
    ];
}
