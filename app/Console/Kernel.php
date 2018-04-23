<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use App\Jobs\xmlCek;
use App\Models\Integration;
use App\Jobs\Job;

class Kernel extends ConsoleKernel
{
    protected $data;

    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        // Commands\Inspire::class,
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')
        //          ->hourly();

        #$schedule->job(new Heartbeat, 'heartbeats')->everyFiveMinutes();
        $file = 'command1_output.log';
        foreach(Integration::where('end_date', '>=', date('Y-m-d').' 00:00:00')->get() as $data){

        $event = $schedule->call(function () use ($data)  {
        dispatch((new xmlCek($data)));
    });

    $event->cron($data->crontabs->cron_time);

        }

    }
}
