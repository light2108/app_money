<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;
use App\Models\Type;

class TaskController extends Controller
{
    public function index()
    {
        $tasks = Task::all();
        return View('tasks.index', compact('tasks'));
    }
    public function create(Request $request)
    {

        if ($request->isMethod('post')) {
            $data = $request->all();
            // dd($data);
            if ($data['select'] == 1) {
                $data['link'] = '';
                $data['step']="";
            }else{
                $data['step']=implode("|||", $data['step']);
            }
            $validator = Validator::make($data, [
                'image.*' => 'image|mimes:png,jpg,jpeg'
            ]);
            if ($validator->fails()) {
                return redirect()->back()->with('error_message', $validator->errors());
            } else {
                if ($request->hasFile('image')) {
                    $image = $request->file('image');
                    $reimage = time() . '.' . $image->getClientOriginalExtension();
                    $dest = public_path('/imgs');
                    $image->move($dest, $reimage);
                    $data['image'] = 'imgs/' . $reimage;
                    Task::create($data);
                } else {
                    Task::create($data);
                }
                return redirect('/tasks')->with('success_message', 'Tạo nhiệm vụ thành công');
            }
        }
        return View('tasks.create');
    }
    public function edit(Request $request, $id)
    {
        $task = Task::find($id);

        if ($request->isMethod('post')) {
            $data = $request->all();

            if ($data['select'] == 1) {
                $data['link'] = '';
                $data['step']="";
            }else{
                $data['step']=implode("|||", $data['step']);
            }
            $validator = Validator::make($data, [
                'image.*' => 'mimes:png,jpg,jpeg'
            ]);
            if ($validator->fails()) {
                return redirect()->back()->with('error_message', $validator->errors());
            } else {
                if ($request->hasFile('image')) {
                    $image = $request->file('image');
                    $reimage = time() . '.' . $image->getClientOriginalExtension();
                    $dest = public_path('/imgs');
                    $image->move($dest, $reimage);
                    $data['image'] = 'imgs/' . $reimage;
                    File::delete(public_path($task['image']));
                    $task->update($data);
                } else {
                    $task->update($data);
                }
                return redirect('/tasks')->with('success_message', 'Cập nhật nhiệm vụ thành công');
            }
        }
        return View('tasks.edit', compact('task'));
    }
    public function delete($id)
    {
        Task::find($id)->delete();
        return redirect()->back()->with('success_message', 'Xóa nhiệm vụ thành công');
    }
    public function deleteAll(Request $request)
    {
        $data = $request->all();
        // dd(implode(",",$data['task_id']));
        if (!empty($data['task_id'])) {
            $tasks = Task::whereIn('id', $data['task_id']);
            $tasks->delete();
            return redirect()->back()->with('success_message', 'Xóa nhiệm vụ được chọn thành công');
        } else {
            return redirect()->back()->with('error_message', 'Có gì đó sai!');
        }
    }
}
