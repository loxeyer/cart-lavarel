<?php

namespace App\Http\Controllers;

use App\Models\CmsNews;

class Cms extends GeneralController
{

    public function __construct()
    {
        parent::__construct();

    }

/**
 * [news description]
 * @return [type] [description]
 */
    public function news()
    {
        return view($this->theme . '.cms_news',
            array(
                'title'       => 'Blogs',
                'description' => $this->configs_global['description'],
                'keyword'     => $this->configs_global['keyword'],
                'news'        => $this->news,
                'og_image'    => $this->logo,
            )
        );
    }

    public function news_detail($name, $id)
    {
        $news_currently = CmsNews::find($id);
        if ($news_currently) {
            $title = ($news_currently) ? $news_currently->title : 'Not found';
            return view($this->theme . '.cms_news_detail',
                array(
                    'title'          => $title,
                    'news_currently' => $news_currently,
                    'description'    => $this->configs_global['description'],
                    'keyword'        => $this->configs_global['keyword'],
                    'blogs'          => (new CmsNews)->getItemsNews($limit = 4),
                    'og_image'       => url($this->path_file . '/' . $news_currently->image),
                )
            );
        } else {
            return view($this->theme . '.notfound',
                array(
                    'title'       => 'Not found',
                    'description' => '',
                    'keyword'     => $this->configs_global['keyword'],
                )
            );
        }

    }
}
