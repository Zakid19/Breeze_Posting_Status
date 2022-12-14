<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'username',
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function gravatar($size = 100)
    {
        $default = "m";
        return $grav_url = "https://www.gravatar.com/avatar/" . md5( strtolower( trim( $this->email ) ) ) . "?d=" . urlencode( $default ) . "&s=" . $size;
    }

    public function statuses()
    {
       return $this->hasMany(Status::class);
    }

    public function makeStatus($string)
    {
        $this->statuses()->create([
            'body' => $string,
            'identifier' => Str::slug(Str::random(31). $this->id),
       ]);
    }

    public function timeline()
    {
        $following = $this->follows->pluck('id');
         return Status::whereIn('user_id', $following)
                            ->orWhere('user_id', $this->id)
                            ->latest()
                            ->get();
    }

    // RELASI
    public function follows()
    {
       return $this->belongsToMany(User::class, 'follows', 'user_id', 'following_user_id')->withTimestamps();
    }

    // ACTION
    public function follow(User $user)
    {
       return $this->follows()->save($user);
    }
}
