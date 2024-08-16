<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Dymantic\InstagramFeed\Profile;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     */
    protected function schedule(Schedule $schedule): void
    {

        $schedule->call(function(){
            try{
                Profile::where('username','Wakazi_Works')->first()->refreshFeed(12);
            } catch(Exception $e){
                Log::error('Failed retreving Instagram', ['message' => $e->getMessage()]);
            }
        })->twiceDaily();

        $schedule->command("intagram-feed:refresh-tokens")->monthlyOn(15, '03:00');
    }

    /**
     * Register the commands for the application.
     */
    protected function commands(): void
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
