<?php

namespace App\Admin\Controllers;

use App\Post;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class PostController extends Controller
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
            ->header('新闻资讯')
            ->description(' ')
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
            ->description(' ')
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
            ->description(' ')
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
            ->header('新建')
            ->description(' ')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Post);

        $grid->id('序号');
        $grid->title('标题');
        $grid->type('类型')->display(function ($type){
            $data = ['1' => '平台动态', '2'=> '行业动态', '3'=>'帮助中心'];

            return $data[$type];
        });
        $grid->author('作者');
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
        $show = new Show(Post::findOrFail($id));

        $show->id('序号');
        $show->title('标题');
        $show->describe('描述');
        $show->content('详情');
        $show->type('类型')->as(function ($type){
            $data = ['1' => '平台动态', '2'=> '行业动态', '3'=>'帮助中心'];

            return $data[$type];
        });
        $show->author('作者');
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
        $form = new Form(new Post);

        $form->text('title', '标题')->rules('required', ['标题不能为空']);
        $form->textarea('describe', '描述')->rules('required', ['描述不能为空']);
        $form->editor('content', '详情')->rules('required', ['详情不能为空']);
        $form->select('type', '类型')->options(['1' => '平台动态', '2'=> '行业动态', '3'=>'帮助中心'])->rules('required', ['类型不能为空']);
        $form->text('author', '作者')->default('admin')->rules('required', ['作者不能为空']);

        return $form;
    }
}
