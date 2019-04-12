<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\Models\Media;
use Spatie\MediaLibrary\HasMedia\HasMedia;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;

class User extends Authenticatable implements HasMedia
{
    use Notifiable;
    use HasMediaTrait;

    protected $guard = 'web';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'username', 'phone', 'images', 'address', 'status', 'email', 'password', 'verified', 'verification_code', 'verified_at', 'provider_id', 'provider', 
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public $timestamps = true;
    
    protected $dates = [
        'verified_at',
    ];
    
    // Defining A Mutator
    public function setPasswordAttribute($value){
        $this->attributes['password'] = bcrypt($value);
    }


    //Media lib.
    public function registerMediaConversions(Media $media = null)
    {
        $this->addMediaConversion('thumb')
        ->width(200)
        ->height(200)
        ->sharpen(10);
    }

    // Defining An Accessor
    public function getThumbUserAttribute(){
        $thumb = optional($this->getFirstMedia('user_avatar'))->getFullUrl('thumb');
        return  $thumb ?? asset('images/employee.png');
    }



    // Relationships
    public function orders(){
        return $this->hasMany(Order::class, 'user_id', 'id');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class, 'user_id', 'id')->whereNull('parent_id');
    }


    // Tài khoản đã được xác nhận
    public function isVerified() {
        return $this->verified == 1;
    }

    // Tài khoản còn đang hoạt động
    public function isActive() {
        return $this->status == 1;
    }

    public static function generateAPIToken(){
        return str_random(60);
    }

    public function isOnline()
    {
        return cache()->has('user_online_'.$this->id);
    }
    

}
