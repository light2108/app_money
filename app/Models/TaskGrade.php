<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TaskGrade extends Model
{
    use HasFactory;
    protected $table='task_grades';
    protected $fillable=[
        'user_id',
        'grade',
        'code',
        'task_id',
    ];
}
