<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Models\Integration;
use App\Models\Log;
use Illuminate\Support\Facades\Storage;
use App\Traits\xmltrait;
use App\Jobs\xmlCek;


/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class ImportController extends Controller
{
	   #use xmltrait;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->debug = False;
    }

    /**
     * Show the application dashboard.
     *
     * @return Response
     */
    public function index()
    {
		echo "<h3>Güncellenecekler</h3>";

		foreach($this->getList() as $data){

        echo "<br>".$data->name." - <b>xml kuyruğa eklendi.</b>";
        $job = (new xmlCek($data)); #->delay(1)->onQueue('xmlload');
         $this->dispatch($job);	
		}
        
    }

    /** Güncellenecek tedarikçileri çağırırız **/
	public function getList(){
		return Integration::where('end_date', '>=', date('Y-m-d').' 00:00:00')->get();
	}
	

}