<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	protected $table = 'orders';

	protected $fillable = [
		'name', 'phone', 'email', 'address', 'input_date', 'delivery_date', 'sum_money', 'user_id', 'status', 'note', 'created_at', 'updated_at', 
	];
	
	protected $dates = [
		'input_date',
		'delivery_date',
	];

	public $timestamps = true;
	

	public function user(){
		return $this->belongsTo(User::class, 'user_id', 'id')->withDefault();
	}

	public function orderDetails(){
		return $this->hasMany(OrderDetail::class, 'order_id', 'id');
	}


	// scope
	public function scopeSearchDateFrom($query, $value)
	{
		$date = date_create_from_format('d/m/Y', $value)->format('Y-m-d');
		return $query->whereDate('input_date', '>=', $date);
	}

	public function scopeSearchDateTo($query, $value)
	{
		$date = date_create_from_format('d/m/Y', $value)->format('Y-m-d');
		return $query->whereDate('input_date', '<=', $date);
	}

	// Get pdf invoice
	public function getPdf($type = 'stream')
	{
		$pdf = app('dompdf.wrapper')->loadView('admin.orders.order-pdf', ['order' => $this]);

		if ($type == 'stream') {
			return $pdf->stream('invoice_#DH00'.$this->id.'.pdf', ['order' => $this]);
		}
		if ($type == 'download') {
			return $pdf->download('invoice_#DH00'.$this->id.'.pdf', ['order' => $this]);
		}
	}
}
