<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\Banner;
use App\Models\QuestionAnswer;
use App\Models\TaskUser;
use Carbon\Carbon;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;
use Illuminate\Pagination\LengthAwarePaginator;
use App\Models\TaskCode;
use App\Models\TaskGrade;
use Illuminate\Support\Facades\Auth;

function translate($q, $tl){
    if(empty($q)){
        $res="";
        return $res;
    }else{
        $res= file_get_contents("https://translate.googleapis.com/translate_a/single?client=gtx&ie=UTF-8&oe=UTF-8&dt=bd&dt=ex&dt=ld&dt=md&dt=qca&dt=rw&dt=rm&dt=ss&dt=t&dt=at&sl="."vi"."&tl=".$tl."&hl=hl&q=".urlencode($q), $_SERVER['DOCUMENT_ROOT']."/transes.html");
        $res=json_decode($res);
        return $res[0][0][0];
    }
}
class TaskController extends Controller
{
    public function pagination($items, $perPage = 10, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }
    // public function index()
    // {
    //     foreach (Task::all() as $task) {
    //         // $task['image']='https://bakesrc.com/public/'.$task['image'];
    //         $task['image'] = 'https://bakesrc.com/public/' . $task['image'];

    //     }
    //     return response()->json(['code' => 200, 'status' => true, 'tasks' => $xxx]);
    // }

    public function edit(Request $request)
    {
        $task = Task::find($request->id);
        $user=User::where('token', $request->token)->first();
        // $question_answer = QuestionAnswer::where('task_id', $id)->get();

        if (!empty($task)&&!empty($user)) {
            $task['title']=$task['title'];
            $task['description']=$task['description'];
            $task['image'] = 'https://bakesrc.com/public/' . $task['image'];
            if (!empty($task['link'])) {
                $new_step=[];
                foreach(explode("|||", $task['step']) as $step){
                    $new_step[]=$step;
                }
                $task['step']=$new_step;
                $task['check']=!empty(TaskUser::where('user_id', $user['id'])->where('task_id', $request->id)->first()->check)?TaskUser::where('user_id', $user['id'])->where('task_id', $request->id)->first()->check:0;
                return response()->json(['code' => 200, 'status' => true, 'task' => $task]);
            } else {
                $new_question_answer=array();
                foreach (QuestionAnswer::where('task_id', $request->id)->get() as $question) {
                    $new_answer=[];
                    $question['question']=$question['question'];
                    foreach(explode("|||", $question['answer']) as $answer){
                        $new_answer[]=$answer;
                    }
                    $question['answer']=$new_answer;
                    $new_question_answer[] = $question;
                }
                $task['check']=!empty(TaskUser::where('user_id', $user['id'])->where('task_id', $request->id)->first()->check)?TaskUser::where('user_id', $user['id'])->where('task_id', $request->id)->first()->check:0;
                return response()->json(['code' => 200, 'status' => true, 'task' => $task, 'question_answer' => $new_question_answer]);
            }
        } else {
            return response()->json(['code' => 404, 'status' => false, 'message' => 'Task not exists']);
        }
    }

    // public function taskUserDoing(Request $request, $task_id, $token)
    // {
    //     $user = User::where('token', $token)->first();
    //     $task = Task::with('question_answer')->find($task_id);
    //     if ($request->isMethod('post')) {
    //         if(!in_array($user['id'], explode(",", $task['user_id']))){
    //             $task->update(['user_id' => $task['user_id'] . "," . $user['id']]);
    //         }
    //         if (in_array($user['id'], explode(",", $task['user_id']))) {
    //             return response()->json(['code' => 200, 'status' => true, 'message' => 'User doing this task']);
    //         } else {
    //             return response()->json(['code' => 404, 'status' => false, 'message' => 'User not doing this task']);
    //         }
    //     }
    //     else {
    //         if (!empty($user)) {
    //             $tt = array();
    //             foreach (explode(",", $task['image']) as $image) {
    //                 $tt[] = 'https://bakesrc.com/public/' . $image;
    //             }
    //             $task['image'] = $tt;
    //             return response()->json(['code' => 200, 'status' => true, 'tasks_user_doing' => $task]);
    //         } else {
    //             return response()->json(['code' => 404, 'status' => false, 'message' => 'Somethings wrong!']);
    //         }
    //     }
    // }
    public function taskUserDoing(Request $request)
    {
        $user = User::where('token', $request->token)->first();
        $task = Task::find($request->id);
        if ($request->isMethod('post')) {
            if (count(TaskUser::where('task_id', $request->id)->where('user_id', $user['id'])->get()) == 0) {
                TaskUser::create(['task_id' => $request->id, 'user_id' => $user['id'], 'check'=>1]);
            }else{
                TaskUser::where('task_id', $request->id)->where('user_id', $user['id'])->update(['check'=>1]);
            }
            return response()->json(['code' => 200, 'status' => true, 'message' => 'User doing this task']);
        }
    }
    public function tasksUserComplete(Request $request)
    {
        $new_banner = array();
        foreach (Banner::all() as $banner) {
            $banner['image'] = 'https://bakesrc.com/public/' . $banner['image'];
            $new_banner[] = $banner;
        }
        $user = User::where('token',$request->token)->first();
        $new_taskuser = [];
        if (!empty($user)) {
            $award = 0;
            foreach (TaskUser::where('user_id', $user['id'])->with('task')->get()->take((empty($request->page) ? 10 : 10 * $request->page)) as $key => $taskuser) {
                // $new_taskuser=[];
                $stepx=array();
                foreach(explode("|||", $taskuser['task']['step']) as $step){
                    $stepx[]=$step;
                }
                $taskuser['task']['step'] = $stepx;
                $taskuser['task']['image'] = 'https://bakesrc.com/public/' . $taskuser['task']['image'];
                $init = date(strtotime(Carbon::now())) - date(strtotime($taskuser['updated_at']));
                $day = floor($init / 86400);
                $hours = floor(($init - $day * 86400) / 3600);
                $minutes = floor(($init / 60) % 60);
                $seconds = $init % 60;
                if ($init >= 24 * 60 * 60) {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $day .' '. ' ngày'];
                } elseif ($init >= 60 * 60) {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $hours .' '. ' giờ'];
                } elseif ($minutes >= 60) {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $minutes .' '. ' phút'];
                } else {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $seconds .' '. ' giây'];
                }
                $award += $taskuser['task']['price'];
            }
            $data=$this->pagination($new_taskuser);
            $data->withPath('/api/tasks/complete');
            return response()->json(['code' => 200, 'status' => true, 'banner' => $new_banner, 'user_money' => $user['money'], 'tasks_user_did' => $data, 'all_award_task_get' => $award]);
        } else {
            return response()->json(['code' => 404, 'status' => false, 'message' => 'Somethings wrong!']);
        }
    }
    public function userClickTask(Request $request)
    {
        $new_banner = array();
        foreach (Banner::all() as $banner) {
            $banner['image'] = 'https://bakesrc.com/public/' . $banner['image'];
            $new_banner[] = $banner;
        }
        $user = User::where('token', $request->token)->first();

        $new_taskuser = [];
        if (!empty($user)) {
            foreach (TaskUser::where('user_id', $user['id'])->with('task')->get() as $key => $taskuser) {
                $stepx=array();
                foreach(explode("|||", $taskuser['task']['step']) as $step){
                    $stepx[]=$step;
                }
                $taskuser['task']['step']=$stepx;
                $taskuser['task']['image'] = 'https://bakesrc.com/public/' . $taskuser['task']['image'];
                $init = date(strtotime(Carbon::now())) - date(strtotime($taskuser['created_at']));
                $day = floor($init / 86400);
                $hours = floor(($init - $day * 86400) / 3600);
                $minutes = floor(($init / 60) % 60);
                $seconds = $init % 60;
                if ($init >= 24 * 60 * 60) {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $day .' '. ' ngày'];
                } elseif ($init >= 60 * 60) {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $hours .' '. ' giờ'];
                } elseif ($minutes >= 60) {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $minutes .' '. ' phút'];
                } else {
                    $new_taskuser[] = ['id'=>$taskuser['task']['id'],"title" => $taskuser['task']['title'], 'image' => $taskuser['task']['image'], 'description' => $taskuser['task']['description'], 'price' => $taskuser['task']['price'], 'link' => $taskuser['task']['link'], 'rating' => $taskuser['task']['rating'], 'level' => $taskuser['task']['level'],'step'=>$taskuser['task']['step'],'select'=>$taskuser['task']['select'],'status'=>$taskuser['task']['status'],'type'=>$taskuser['task']['type'],'check'=>$taskuser['check'],'created_at'=>$taskuser['task']['created_at'], 'updated_at'=>$taskuser['task']['updated_at'], 'time' => $seconds .' '. ' giây'];
                }
            }
            $data=$this->pagination($new_taskuser);
            $data->withPath('/api/all-task-click');
            return response()->json(['code' => 200, 'status' => true, 'banner' => $new_banner, 'user_money' => $user['money'], 'tasks_user_click' => $data]);
        } else {
            return response()->json(['code' => 404, 'status' => false, 'message' => 'Somethings wrong!']);
        }
    }
    public function userFinishTask(Request $request)
    {
        $user = User::where('token', $request->token)->first();
        if (!empty($user)) {
            if ($request->isMethod('post')) {

                $user['money'] += Task::find($request->id)->price;
                $user->update(['money' => $user['money']]);
                if(empty(Task::find($request->id)->link)){
                    $taskuser=TaskUser::create(['task_id'=>$request->id, 'user_id'=>$user['id'], 'check'=>2, 'updated_at'=>Carbon::now()]);
                }else{
                    TaskUser::where('task_id', $request->id)->where('user_id', $user['id'])->update(['updated_at' => Carbon::now(), 'check'=>2]);
                }
                return response()->json(['code' => 200, 'status' => true, 'message' => 'Finish Task Successfully and User get money']);
            }
        } else {
            return response()->json(['code' => 404, 'status' => false, 'message' => 'Somethings wrong!']);
        }
    }
    public function sendCodeId(Request $request){
        if($request->isMethod('post')){
            $data['grade']=$request->header('grade');
            $data['code']=$request->header('code');
            $data['task_id']=$request->header('task_id');
            $user=User::where('token', $request->header('token'))->first();
            $data['user_id']=$user['id'];
            $validator=Validator::make($data, [
                'grade'=>'required',
                'code'=>'required',
                'task_id'=>'required',
            ]);
            if($validator->fails()){
                return response()->json(['code'=>403, 'status'=>false, 'message'=>$validator->errors()]);
            }else{
                if(count(TaskGrade::where('task_id', $data['task_id'])->where('code', $data['code'])->where('user_id', $data['user_id'])->get())>0){
                    return response()->json(['code'=>403, 'status'=>false, 'message'=>'Code was added']);
                }else{
                    TaskGrade::create($data);
                    return response()->json(['code'=>200, 'status'=>true, 'message'=>'Send code successfully']);
                }
            }
            
        }
        $games=Task::all();
        $xxx=array();
        foreach($games as $game){
            if(isset($game['code'])){
                array_push($xxx, ['id'=>$game['id'], 'code'=>explode("|||", $game['code'])]);
            }
        }
        return response()->json(['code'=>200, 'status'=>true, 'games'=>$xxx]);
    }
    public function sendGradeCodeId(Request $request){
        $user=User::where('token', $request->header('token'))->first();
            $data['code']=$request->header('code');
            $data['task_id']=$request->header('task_id');
            $task=Task::find($data['task_id']);
            $data['grade']=TaskGrade::where('task_id', $data['task_id'])->where('code', $data['code'])->where('user_id', $user['id'])->first()->grade;
            // return response()->json(TaskGrade::where('task_id', $data['task_id'])->where('code', $data['code'])->where('user_id', $user['id'])->get());
            if(in_array($data['code'], explode("|||",$task['code']))){
                foreach(explode("|||",$task['grade']) as $key=>$grade){
                    if($data['grade']>=$grade){
                        if(TaskCode::where('task_id', $data['task_id'])->where('user_id', $user['id'])){
                            $taskcode=TaskCode::where('task_id', $data['task_id'])->where('user_id', $user['id'])->first();
                            if(in_array($data['code'], explode("|||", $taskcode['check']))){
                                return response()->json(['status'=>403, 'code'=>false, 'message'=>'Your code was used']);
                            }else{
                                $data['check']=$taskcode['check']."|||".$data['code'];
                                $taskcode->update(['check'=>$data['check']]);
                                return response()->json(['status'=>200, 'code'=>true, 'message'=>'Added code successfully']);
                            }
                        }else{
                            TaskCode::create(['task_id'=>$data['task_id'], 'user_id'=>$user['id'], 'check'=>$data['code']]);
                            return response()->json(['status'=>200, 'code'=>true, 'message'=>'Added code successfully']);
                        }
                    }else{
                        return response()->json(['code'=>403, 'status'=>false, 'message'=>'Not enough money']);
                    }
                }
            }else{
                return response()->json(['code'=>403, 'status'=>false, 'message'=>'Your code is wrong!']);
            }
    }
}
