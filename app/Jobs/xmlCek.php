<?php

namespace App\Jobs;

use App\Jobs\Job;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Models\Log;

class xmlCek extends Job implements ShouldQueue
{
    use InteractsWithQueue, SerializesModels;

    protected $data;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data  = $data;

    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //
        try{
                 $class = "\App\Http\Controllers\XMLSERVICE\\".$this->data->suppliers->code;

                 $xmlclass = new $class($this->data);
                 
                 $xmlclass->run();

            } catch(\Throwable $t){
                Log::create(
            ["name"=>"HATA",
            "description"=>$t->getMessage()
            ]);

            } 

		
    }
}
