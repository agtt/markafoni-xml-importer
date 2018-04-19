<?php 

namespace App\Traits;
use App\Models\Integration;
use App\Models\Log;
use Illuminate\Support\Facades\Storage;

trait xmltrait
{

	/** XML dosyayı ekle **/
    public function addFile($file,$data) {
		return Storage::put($file, $data);
	}	

	/** XML dosyasını çağırır **/
	public function getFile($file) {
     return Storage::get($file);
	}

	/** Uzak sunucudan veriyi çeker **/
    protected function loadXML($url)
    {
        if(!$string = file_get_contents($url)) {
            return response()->json([
                'error'=> 'cannot_get_contents',
                'message' => 'Não foi possível capturar o XML'
            ]);
        }
		
		return $string;
        if(!$xml = simplexml_load_string($string)) {
            return response()->json([
                'error'=> 'cannot_load_string',
                'message'=> 'Não foi possível carregar o XML'
            ]);
        }

        return $xml;
    }

    /** Sadece farklı olan barkodları güncelleriz ve bize sunulan barkodları **/
	protected function diffxml($old,$new,$barcodes=[]){
		
		$new =  simplexml_load_string ($new);
		$old =  simplexml_load_string ($old);
		$newData = [];
		$oldData = [];
		
		foreach($new->urun as $k => $x){
			$newData[(string)$x->barkod]= (string)$x->adet;		
		}
		foreach($old->urun as $k => $x){
			$oldData[(string)$x->barkod]= (string)$x->adet;		
		}
		
		$farkli = array_diff($oldData,$newData);
		
		return $farkli;
	}
}