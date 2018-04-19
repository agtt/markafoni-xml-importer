@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/crontabs') }}">Crontab</a> :
@endsection
@section("contentheader_description", $crontab->$view_col)
@section("section", "Crontabs")
@section("section_url", url(config('laraadmin.adminRoute') . '/crontabs'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Crontabs Edit : ".$crontab->$view_col)

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
				{!! Form::model($crontab, ['route' => [config('laraadmin.adminRoute') . '.crontabs.update', $crontab->id ], 'method'=>'PUT', 'id' => 'crontab-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'cron_time')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/crontabs') }}">Cancel</a></button>
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
	$("#crontab-edit-form").validate({
		
	});
});
</script>
@endpush
