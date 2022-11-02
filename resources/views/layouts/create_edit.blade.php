<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codervent.com/dashtremev3/form-advanced.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2020 09:41:22 GMT -->

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <base href="{{ asset('') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Dashboard</title>
    <!-- loader-->
    <link href="assets/css/pace.min.css" rel="stylesheet" />
    {{-- <script src="assets/js/pace.min.js"></script> --}}
    <!--favicon-->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!--text editor-->
    <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-bs4.css" />
    <!--Select Plugins-->
    <link href="assets/plugins/select2/css/select2.min.css" rel="stylesheet" />
    <!--inputtags-->
    <link href="assets/plugins/inputtags/css/bootstrap-tagsinput.css" rel="stylesheet" />
    <!--multi select-->
    <link href="assets/plugins/jquery-multi-select/multi-select.css" rel="stylesheet" type="text/css">
    <!--Bootstrap Datepicker-->
    <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css">
    <!--Touchspin-->
    <link href="assets/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css">
    <!-- Dropzone css -->
    <link href="assets/plugins/dropzone/css/dropzone.css" rel="stylesheet" type="text/css">
    <!-- simplebar CSS-->
    <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <!-- Bootstrap core CSS-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- animate CSS-->
    <link href="assets/css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Icons CSS-->
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <!-- Metismenu CSS-->
    <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
    <!-- Custom Style-->
    <link href="assets/css/app-style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/css/star-rating.min.css" media="all"
        rel="stylesheet" type="text/css" />

    <!-- with v4.1.0 Krajee SVG theme is used as default (and must be loaded as below) - include any of the other theme CSS files as mentioned below (and change the theme property of the plugin) -->
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.css"
        media="all" rel="stylesheet" type="text/css" />
    {{-- <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css" rel="stylesheet" /> --}}


</head>

<body class="bg-theme bg-theme2">

    <!-- Start wrapper-->
    <div id="wrapper">

        <!--Start sidebar-wrapper-->
        @include('layouts.sidebar')
        <!--End sidebar-wrapper-->

        <!--Start topbar header-->
        @include('layouts.header')
        <!--End topbar header-->

        <div class="clearfix"></div>

        @yield('content')
        <!--End content-wrapper-->
        <!--Start Back To Top Button-->
        <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
        <!--End Back To Top Button-->

        <!--Start footer-->
        {{-- @include('layouts.footer') --}}
        <!--End footer-->

        <!--start color switcher-->

        <!--end color switcher-->

    </div>
    <!--End wrapper-->

    {{-- <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script> --}}
    <!-- Bootstrap core JavaScript-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/js/star-rating.min.js"
        type="text/javascript"></script>

    <!-- with v4.1.0 Krajee SVG theme is used as default (and must be loaded as below) - include any of the other theme JS files as mentioned below (and change the theme property of the plugin) -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.js"></script>

    <!-- optionally if you need translation for your language then include locale file as mentioned below (replace LANG.js with your own locale file) -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/js/locales/LANG.js"></script>
    {{-- <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script> --}}
    <!-- simplebar js -->
    <script src="assets/plugins/simplebar/js/simplebar.js"></script>
    <!-- Metismenu js -->
    <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>

    <!-- Custom scripts -->
    <script src="assets/js/app-script.js"></script>

    <!--Bootstrap Touchspin Js-->
    <script src="assets/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.js"></script>
    <script src="assets/plugins/bootstrap-touchspin/js/bootstrap-touchspin-script.js"></script>
    <!-- Dropzone JS  -->
    <script src="assets/plugins/dropzone/js/dropzone.js"></script>
    <script src="assets/plugins/summernote/dist/summernote-bs4.min.js"></script>
    <script>
        $('#summernoteEditor').summernote({
            height: 300,
            tabsize: 2
        });

    </script>
    <!--Select Plugins Js-->
    <script src="assets/plugins/select2/js/select2.min.js"></script>
    <!--Inputtags Js-->
    <script src="assets/plugins/inputtags/js/bootstrap-tagsinput.js"></script>

    <!--Bootstrap Datepicker Js-->
    <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    {{-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script> --}}
    <script src="main.js"></script>
    <script>
        $('#default-datepicker').datepicker({
            todayHighlight: true
        });
        $('#autoclose-datepicker').datepicker({
            autoclose: true,
            todayHighlight: true
        });

        $('#inline-datepicker').datepicker({
            todayHighlight: true
        });

        $('#dateragne-picker .input-daterange').datepicker({});
        // Defaults
        $("#input-id").rating();

    </script>

    <!--Multi Select Js-->
    <script src="assets/plugins/jquery-multi-select/jquery.multi-select.js"></script>
    <script src="assets/plugins/jquery-multi-select/jquery.quicksearch.js"></script>
    <script>
        $(document).ready(function() {
            $('.single-select').select2();
            $(".js-example-tags").select2({
                tags: true
            });
            $('.multiple-select').select2();

            //multiselect start

            $('#my_multi_select1').multiSelect();
            $('#my_multi_select2').multiSelect({
                selectableOptgroup: true
            });

            $('#my_multi_select3').multiSelect({
                selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                afterInit: function(ms) {
                    var that = this,
                        $selectableSearch = that.$selectableUl.prev(),
                        $selectionSearch = that.$selectionUl.prev(),
                        selectableSearchString = '#' + that.$container.attr('id') +
                        ' .ms-elem-selectable:not(.ms-selected)',
                        selectionSearchString = '#' + that.$container.attr('id') +
                        ' .ms-elem-selection.ms-selected';

                    that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                        .on('keydown', function(e) {
                            if (e.which === 40) {
                                that.$selectableUl.focus();
                                return false;
                            }
                        });

                    that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                        .on('keydown', function(e) {
                            if (e.which == 40) {
                                that.$selectionUl.focus();
                                return false;
                            }
                        });
                },
                afterSelect: function() {
                    this.qs1.cache();
                    this.qs2.cache();
                },
                afterDeselect: function() {
                    this.qs1.cache();
                    this.qs2.cache();
                }
            });

            $('.custom-header').multiSelect({
                selectableHeader: "<div class='custom-header'>Selectable items</div>",
                selectionHeader: "<div class='custom-header'>Selection items</div>",
                selectableFooter: "<div class='custom-header'>Selectable footer</div>",
                selectionFooter: "<div class='custom-header'>Selection footer</div>"
            });


        });

    </script>
    @stack('scripts')
</body>

<!-- Mirrored from codervent.com/dashtremev3/form-advanced.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2020 09:41:30 GMT -->

</html>
