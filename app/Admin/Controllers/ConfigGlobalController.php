<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ConfigGlobal;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

class ConfigGlobalController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Config global for site');
            $content->description('description');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Edit config');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    // public function create()
    // {
    //     return Admin::content(function (Content $content) {

    //         $content->header('header');
    //         $content->description('description');

    //         $content->body($this->form());
    //     });
    // }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(ConfigGlobal::class, function (Grid $grid) {

            $grid->html('&nbsp;');

            $grid->logo('Logo')->image('', 50);
            $grid->watermark('watermark')->image('', 50);
            $grid->template('Template');
            $grid->title('Title')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->description('Description')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->keyword('Keywords')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->phone('Phone');
            $grid->long_phone('Long phone')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->address('Address')->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->status('Status website')->switch();
            $grid->disableCreation();
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->disableFilter();
            $grid->actions(function ($actions) {
                $actions->disableView();
                $actions->disableDelete();
            });

        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(ConfigGlobal::class, function (Form $form) {

            $form->image('logo', 'Logo')->removable();
            $form->image('watermark', 'watermark')->removable();
            $form->text('template', 'Template');
            $form->text('title', 'Title');
            $form->textarea('description', 'Description');
            $form->text('keyword', 'Keywords');
            $form->text('phone', 'Phone');
            $form->text('long_phone', 'Long phone');
            $form->text('address', 'Address');
            $form->switch('status', 'Status website');
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
                $tools->disableDelete();
            });

        });
    }

    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('');
            $content->description('');
            $content->body(Admin::show(ShopCategory::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }

}
