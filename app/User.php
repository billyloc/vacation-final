<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use DB;

class User extends Model implements AuthenticatableContract,
                                    AuthorizableContract,
                                    CanResetPasswordContract
{
    use Authenticatable, Authorizable, CanResetPassword;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['first_name','last_name', 'email', 'password'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = ['password', 'remember_token'];

    public function addVacationPayment($vacation,$amount){

        // echo("User" . $this->id . " added " .$vacation->id . " for " . $amount);

        $sql = "INSERT into purchase (user_id,destination_id,amount) values (:user_id,:destination_id,:amount)";
        DB::insert($sql, ["user_id"=>$this->id,":destination_id"=>$vacation->id,"amount"=>$amount]);
              
    }

    public function getRememberToken()
    {
        return $this->remember_token;
    }

    public function setRememberToken($value)
    {
        $this->remember_token = $value;
    }

    public function getRememberTokenName()
    {
        return 'remember_token';
    }

    // public function makeVacationPayment($vacation,$amount){

    //     echo("User" . $this->id . " for " .$vacation->id . " paid " . $amount);

    //     $sql = "INSERT into purchase  amount=:amount WHERE user_id = :user_id AND destination_id = :destination_id";
    //     DB::insert($sql, ["user_id"=>$this->id,":destination_id"=>$vacation->id,"amount"=>$amount]);
              
    // }


}
