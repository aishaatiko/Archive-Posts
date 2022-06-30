<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use Session;
use Auth;

class PostsController extends Controller {

    private function is_login() {
        if(Auth::user()) {
            return true;
        } else {
            return false;
        }
    }

    public function show() {
        $posts = DB::table('posts')->orderby('date', 'desc')->get();
        
        return view('show', ['posts'=>$posts]);
    }

    public function page() {
        return view('page');
    }


    public function add() {
        if($this->is_login()) {
            return view('add');
        } else {
           return redirect('/login');
        }    
    }

    public function add_process(Request $post) {
        
        DB::table('posts')->insert([
            'title'=>$post->title,
            'image'=>$post->image,
            'date'=>$post->date,
            'content'=>$post->content,
            'source'=>$post->source,
            'source_id'=>$post->source_id,
            'created_at'=>date('Y-m-d H:i:s'),
            'updated_at'=>date('Y-m-d H:i:s')
        ]);
        return redirect()->action([PostsController::class, 'show_by_admin']);
    }

    public function detail($id) {
        $post = DB::table('posts')->where('id', $id)->first();
        return view('detail', ['post'=>$post]);
    }

    public function show_by_admin() {
        if($this->is_login()) {
            $posts = DB::table('posts')->orderby('updated_at', 'desc')->get();
            return view('adminshow', ['posts'=>$posts]);
        } else {
           return redirect('/login');
        }
    }

    public function edit($id) {
        if($this->is_login()) {
            $post = DB::table('posts')->where('id', $id)->first();
            return view('edit', ['post'=>$post]);
        } else {
           return redirect('/login');
        }
    }

    public function edit_process(Request $post) {
        $id = $post->id;
        $title = $post->title;
        $image = $post->image;
        $date = $post->date;
        $content = $post->content;
        $source = $post->source;
        $source_id = $post->source_id;
        $updated = date('Y-m-d H:i:s');
        DB::table('posts')->where('id', $id)
                            ->update(['image' => $image, 
                                      'title' => $title, 
                                      'content' => $content, 
                                      'source' => $source,
                                      'source_id' => $source_id, 
                                      'date' => $date, 
                                      'updated_at' => $updated]);
        Session::flash('success', 'Post berhasil diedit');
        return redirect()->action([PostsController::class, 'show_by_admin']);
    }

    public function delete($id) {
        if($this->is_login()) {
             //menghapus artikel dengan ID sesuai pada URL
            DB::table('posts')->where('id', $id)
                                ->delete();
 
            //membuat pesan yang akan ditampilkan ketika artikel berhasil dihapus
            Session::flash('success', 'Post berhasil dihapus');
            return redirect()->action([PostsController::class, 'show_by_admin']);
        } else {
           return redirect('/login');
        }
    }

    public function source(Request $posts) {
        
        $posts = DB::table('posts')
                    ->whereIn('source_id', [$posts->source_id])->orderby('date', 'desc')->get();
        return view('show', ['posts'=>$posts]);
    }

    public function byYear(Request $posts) {
        $posts = DB::table('posts')
                ->whereYear('date', '=', $posts->year)->orderby('date', 'desc')->get();
        return view('show', ['posts'=>$posts]);
    }

    public function sourceByYear(Request $posts) {
        $posts = DB::table('posts')->whereIn('source_id', [$posts->source_id])
                ->whereYear('date', '=', $posts->year)->orderby('date', 'desc')->get();
        return view('show', ['posts'=>$posts]);
    }

    public function byMonth(Request $posts) {
        $posts = DB::table('posts')
                ->whereYear('date', '=', $posts->year)->whereMonth('date', '=', $posts->month)->orderby('date', 'desc')->get();
        return view('show', ['posts'=>$posts]);
    }

    
    public function sourceByMonth(Request $posts) {
        $posts = DB::table('posts')->whereIn('source_id', [$posts->source_id])
                ->whereYear('date', '=', $posts->year)->whereMonth('date', '=', $posts->month)->orderby('date', 'desc')->get();
        return view('show', ['posts'=>$posts]);
    }
}
