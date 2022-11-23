<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TaskCode extends Model
{
    use HasFactory;
    protected $table="task_codes";
    protected $fillable=[
        'task_id',
        'user_id',
        'check'
    ];
}
