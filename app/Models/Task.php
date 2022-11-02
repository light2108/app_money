<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $table='tasks';
    protected $fillable=[
        'title',
        'description',
        'image',
        'price',
        'link',
        'step',
        'rating',
        'level',
        'select',
        'status',
        'type'
    ];
    public function question_answer(){
        return $this->hasMany('App\Models\QuestionAnswer', 'task_id', 'id');
    }
    public function task_user(){
        return $this->hasMany('App\Models\TaskUser', 'task_id', 'id');
    }
}
