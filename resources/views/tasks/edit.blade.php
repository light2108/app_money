@extends('layouts.create_edit')
@section('content')
    <div class="content-wrapper">
        <div class="container-fluid">
            <!-- Breadcrumb-->
            <div class="row pt-2 pb-2">
                <div class="col-sm-9">
                    <h4 class="page-title">Điều Chỉnh</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javaScript:void();">Trang Chủ</a></li>
                        <li class="breadcrumb-item"><a href="javaScript:void();">Cấu Hình</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Điều Chỉnh Nhiệm Vụ</li>
                    </ol>
                </div>

            </div>
            <!-- End Breadcrumb-->
            <form action="{{ url('/edit/task/' . $task['id']) }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header text-uppercase">Các Dữ Liệu Nhiệm Vụ</div>
                            <div class="card-body">
                                <label>Tiêu Đề</label>
                                <input type="text" name="title" value="{{ $task['title'] }}" required
                                    class="form-control">
                                <hr>
                                <label>Giá</label>
                                <input type="number" required name="price" class="form-control"
                                    value="{{ $task['price'] }}">
                                <hr>
                                <label>Lựa Chọn Link Hoặc Câu Hỏi</label>
                                <select class="form-control select-link-question" name="select" required>
                                    @if ($task['select'] == 1)
                                        <option value="1" selected>Câu Hỏi</option>
                                        <option value="0">Link</option>
                                    @else
                                        <option value="1">Câu Hỏi</option>
                                        <option value="0" selected>Link</option>
                                    @endif
                                </select>
                                <hr>
                                <div id="link">
                                    @if ($task['select'] == 0)
                                        <label>Link</label>
                                        <input type="text" name="link" required class="form-control"
                                            value="{{ $task['link'] }}">
                                        <hr>
                                        <input type="hidden" id="hiddenkey"
                                            value="{{ count(explode('|||', $task['step'])) }}">
                                        <div id="past-create">
                                            @foreach (explode('|||', $task['step']) as $key => $step)
                                                <input type="hidden" value="{{ ++$key }}">
                                                @if ($key == 1)
                                                    <div class="row">
                                                        <div class="col-11">
                                                            <label>Bước {{ $key }}</label>
                                                            <input type="text" required name="step[]"
                                                                value="{{ $step }}" class="form-control">
                                                        </div>
                                                        <div class="col-1">
                                                            <a href="javascript:void(0)" style="position: relative;top:40%"
                                                                class="plus-step"><i
                                                                    class="fa fa-3x fa-plus-circle"></i></a>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                @else
                                                    <div class="newcreate">
                                                        <div class="row">
                                                            <div class="col-11">
                                                                <label>Bước {{ $key }}</label>
                                                                <input type="text" required name="step[]"
                                                                    value="{{ $step }}" class="form-control">
                                                            </div>
                                                            <div class="col-1">
                                                                <a href="javascript:void(0)"
                                                                    style="position: relative;top:40%" class="minus-step"><i
                                                                        class="fa fa-3x fa-minus-circle"></i></a>
                                                            </div>
                                                        </div>
                                                        <hr>
                                                    </div>

                                                @endif
                                            @endforeach
                                        </div>
                                    @endif
                                </div>
                                <label>Ảnh</label>
                                <input name="image" onchange="loadfile(event)" type="file" class="form-control">
                                <div id="preview">
                                    @if (!empty($task['image']))
                                        @foreach (explode(',', $task['image']) as $image)
                                            <img src="{{ $image }}" width="100px" height="100px">
                                        @endforeach
                                    @endif
                                </div>
                                <hr>
                                <label>Mô Tả</label>
                                <textarea id="summernoteEditor" name="description">{{ $task['description'] }}
                                            </textarea>
                                <hr>
                                <label>Level</label>
                                <select class="form-control" requiredname="level">
                                    @if ($task['level'] == 1)
                                        <option value="1" selected>Dễ</option>
                                        <option value="2">Trung Bình</option>
                                        <option value="3">Khó</option>
                                        <option value="4">Cực Khó</option>
                                    @elseif($task['level']==2)
                                        <option value="1">Dễ</option>
                                        <option value="2" selected>Trung Bình</option>
                                        <option value="3">Khó</option>
                                        <option value="4">Cực Khó</option>
                                    @elseif($task['level']==3)
                                        <option value="1">Dễ</option>
                                        <option value="2">Trung Bình</option>
                                        <option value="3" selected>Khó</option>
                                        <option value="4">Cực Khó</option>
                                    @elseif($task['level']==4)
                                        <option value="1">Dễ</option>
                                        <option value="2">Trung Bình</option>
                                        <option value="3">Khó</option>
                                        <option value="4" selected>Cực Khó</option>
                                    @endif
                                </select>
                                <hr>
                                <label>Đánh Giá</label>
                                <input id="input-id" type="hidden" value="{{ $task['rating'] }}" name="rating"
                                    class="rating form-control" data-size="lg">
                                <hr>
                                <button type="submit" class="btn btn-gradient-primary">Cập Nhật</button>
                            </div>
                        </div>
                    </div>
                </div>

            </form>


            <!--End Row-->



            <!--End Row-->
            <!--start overlay-->
            <div class="overlay"></div>
            <!--end overlay-->
        </div>
        <!-- End container-fluid-->

    </div>
@endsection
@push('scripts')
    <script>
        $(document).ready(function() {
            var count = $('#hiddenkey').val();
            $('.plus-step').click(function() {
                ++count;
                $('#past-create').append(`
                    <div class="newcreate">
                        <div class="row">
                            <div class="col-11">
                                <label>Bước ` + count + `</label>
                                <input type="text" required name="step[]" class="form-control">
                            </div>
                            <div class="col-1">
                                <a href="javascript:void(0)" style="position: relative;top:40%"  class="minus-step"><i class="fa fa-3x fa-minus-circle"></i></a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    `);
                    $('.minus-step').click(function() {
                --count;
                if(count<1){
                    count=1;
                }
                $(this).closest('.newcreate').remove();
            })
            });
            $('.minus-step').click(function() {
                --count;
                if(count<1){
                    count=1;
                }
                $(this).closest('.newcreate').remove();
            })
        });

    </script>
@endpush
