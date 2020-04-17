<?php

namespace App\Admin\Controllers;

use App\Anli;
use App\Category;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class AnliController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('案例')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('详情')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('编辑')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('新增')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Anli);
        $grid->model()->orderBy('created_at', 'DESC');
        $grid->disableRowSelector();
        $grid->disableExport();

        $grid->actions(function ($actions) {
            // 去掉查看
            $actions->disableView();
        });

        $grid->category()->name('类别');
//        $grid->image('图片')->image();
        $grid->title('标题');
//        $grid->type('类别');
//        $grid->features('特点');
//        $grid->uri('地址');
        $grid->is_app('是否支持App')->switch();
//        $grid->video('视频');
//        $grid->content1('详情左边');
//        $grid->content2('详情右边');
        $grid->created_at('创建时间');
        $grid->updated_at('更新时间');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Anli::findOrFail($id));

        $show->category_id('分类');
        $show->title('标题');
        $show->image('主图');
        $show->type('类别');
        $show->features('特点');
        $show->uri('地址');
        $show->is_app('是否支持App');
        $show->video('视频');
        $show->content1('详情左边');
        $show->content2('详情右边');
        $show->created_at('创建时间');
        $show->updated_at('更新时间');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Anli);

        $categories = Category::pluck('name', 'id');
        $form->select('category_id', '分类')->options($categories)->required();
        $form->text('title', '标题')->required();
        $form->image('image', '主图');
        $form->text('type', '类别');
        $form->text('features', '特点');
        $form->text('uri', '地址');
        $form->switch('is_app', '是否支持App');
        $form->file('video', '视频');
        $form->editor('content1', '详情左边');
        $form->editor('content2', '详情右边');

        return $form;
    }
}
