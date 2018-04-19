@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/integrations') }}">Integration</a> :
@endsection
@section("contentheader_description", $integration->$view_col)
@section("section", "Integrations")
@section("section_url", url(config('laraadmin.adminRoute') . '/integrations'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Integrations Edit : ".$integration->$view_col)

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
				{!! Form::model($integration, ['route' => [config('laraadmin.adminRoute') . '.integrations.update', $integration->id ], 'method'=>'PUT', 'id' => 'integration-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'integration_url')
					@la_input($module, 'supplier')
					@la_input($module, 'crontab')
					@la_input($module, 'start_date')
					@la_input($module, 'end_date')
					@la_input($module, 'stock_verge')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/integrations') }}">Cancel</a></button>
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
	$("#integration-edit-form").validate({
		
	});
});
</script>
@endpush
