@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/logs') }}">Log</a> :
@endsection
@section("contentheader_description", $log->$view_col)
@section("section", "Logs")
@section("section_url", url(config('laraadmin.adminRoute') . '/logs'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Logs Edit : ".$log->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($log, ['route' => [config('laraadmin.adminRoute') . '.logs.update', $log->id ], 'method'=>'PUT', 'id' => 'log-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'description')
					@la_input($module, 'integration')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/logs') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#log-edit-form").validate({
		
	});
});
</script>
@endpush
