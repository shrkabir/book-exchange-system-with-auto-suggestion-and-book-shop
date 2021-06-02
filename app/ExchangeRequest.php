<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ExchangeRequest extends Model
{
    //

    protected $guarded = [];

    public function sent_data(){

        return $this->belongsTo(Centraldata::class,'centraldata_req_id');
    }

    public function request_details(){

        return $this->belongsTo(Centraldata::class,'centraldata_id');

    }
}
