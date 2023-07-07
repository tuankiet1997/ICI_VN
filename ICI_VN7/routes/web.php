<?php

use Illuminate\Support\Facades\Route;
use App\Mail\GuiEmail;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/','HomeController@index');
Route::get('/trang-chu', 'HomeController@index');
Route::get('/ve-chung-toi', 'AboutController@index');

// change languge
// Route::get('lang/{locale}', function($locale){
//     if(!in_array($locale, ['en', 'vi'])){
//         var_dump('aaaa');
//         abort(404);
//     }
//     session()->put('locale', $locale);
//     return redirect()->back();
// });
Route::get('lang/{lang}', ['as' => 'lang.switch', 'uses' => 'LanguageController@switchLang']);
Route::get('/lien-he', 'ContactController@index');
Route::get('/bao-gia', 'QuoteController@index');
Route::get('/tra-cuu-diem', 'TraCuuDiemController@index');

Route::post('/guilienhe', function(Illuminate\Http\Request $request){
    $arr = request()->post();
    $ht = trim(strip_tags($arr['name']));
    $sub = trim(strip_tags($arr['subject']));
    $em = trim(strip_tags($arr['email']));
    $nd = trim(strip_tags($arr['message']));
    $adminEmail = 'kietit197@gmail.com';
    Mail::mailer('smtp')->to($adminEmail)->send(new GuiEmail($ht, $sub, $em, $nd));
  
     $request->session()->flash('thongbao', "Đã gửi mail");
     return redirect("thongbao");
  });

  Route::get("/thongbao", function(Illuminate\Http\Request $request){ 
    $tb = $request->session()->get('thongbao');
    return view('pages.thongbao',['thongbao'=> $tb]);
  });