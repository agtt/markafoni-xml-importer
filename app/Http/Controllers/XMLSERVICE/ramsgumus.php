<?php

namespace App\Http\Controllers\XMLSERVICE;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Models\Integration;
use App\Models\Log;
use Illuminate\Support\Facades\Storage;
use App\Traits\xmltrait;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class ramsgumus //extends Controller
{
    use xmltrait;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->debug = False;
        $this->data = $data;
        $this->code = $data->suppliers->code;
        $this->filexml = $this->code.".xml";
    }

    public function run(){

            $xml = $this->loadXML($this->data->integration_url);

            $oldxml = $this->getFile($this->filexml);

            $farkli = $this->diffxml($oldxml,$xml);
            
            echo "<br>".$this->data->name." - ".count($farkli)." ürün güncellendi";
            
            $update = $this->debug ? $this->addFile($this->filexml,(string)$xml) : '';
            
            $addLog = Log::create(
            ["name"=>"UPDATE",
            "description"=>"".count($farkli)." adet ürün güncellendi",
            "integration"=>$this->data->id
            ]);

    }

    /** Sadece farklı olan barkodları güncelleriz ve bize sunulan barkodları **/
    protected function diffxml($old,$new,$barcodes=[]){

        $new =  simplexml_load_string ($new);
        $old =  simplexml_load_string ($old);
        $newData = [];
        $oldData = [];
        
        foreach($new->urun as $k => $x){
            $newData[(string)$x->barkod]= (int)$x->adet - $this->data->stock_verge;     
        }
        foreach($old->urun as $k => $x){
            $oldData[(string)$x->barkod]= (int)$x->adet - $this->data->stock_verge ;     
        }
        
        $farkli = array_diff($oldData,$newData);
        
        return $farkli;
    }
	
	
	
	
}