<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;


class PostController extends Controller
{

    /**
     * index
     * @return void
     */
    public function index()
    {
        //get posts
        $posts = Post::latest()->paginate(5);

        //return collection of post as a resource
        return new PostResource(true, 'List Data Posts', $posts);
    }

    /**
     * store
     * 
     * @param mixed $request
     * @return void
     */

    public function store(Request $request)
    {
        //define validation rules
        $validator =  Validator::make($request->all(), [
            'image'    => 'required',
            'title'    => 'required',
            'content'  => 'required',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //create post
        $post = Post::create([
            'image'    => $request->image,
            'title'    => $request->title,
            'content'  => $request->content,
            'date'     => $request->date,
            'source'   => $request->source,
            'source_id'=> $request->source_id,
            'created_at'=>date('Y-m-d H:i:s'),
            'updated_at'=>date('Y-m-d H:i:s')
        ]);

        //return response
        return new PostResource(true, 'Data Post Berhasil Ditambahkan', $post);
    }

    /**
     * show
     * 
     * @param mixed $post
     * @return void
     */

    public function show(Post $post)
    {
       //return single post as a resource
       return new PostResource(true, 'Data Post Ditemukan!', $post);
    }
    
    /**
     * update
     * 
     * @param mixed $request
     * @param mixed $post
     * @return void
     */
    public function update(Request $request, Post $post)
    {
        //define validation rules
        $validator = Validator::make($request->all(), [
            'title'     => 'required',
            'content'   => 'required',
            'date'      => 'required',
            'image'     => 'required',
            'source'    => 'required',
            'source_id' => 'required',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

            //update post with new image
            $post->update([
                'image'     => $request->image,
                'title'     => $request->title,
                'content'   => $request->content,
                'date'      => $request->date,
                'source'    => $request->source,
                'source_id' => $request->source_id,
                'updated_at'=>date('Y-m-d H:i:s')
            ]);

        //return response
        return new PostResource(true, 'Data Post Berhasil Diubah!', $post);
    }

    /**
     * destroy
     * 
     * @param mixed $post
     * @return void
     */
    public function destroy(Post $post) 
    {

        //delete post
        $post->delete();

        //return response
        return new PostResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}
