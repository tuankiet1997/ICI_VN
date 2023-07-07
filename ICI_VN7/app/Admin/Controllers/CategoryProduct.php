<?php

namespace App\Admin\Controllers;

use App\CategoryProduct as Category;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CategoryProduct extends AdminController
{
    protected $title ='Category Product';

    protected function grid()
    {
        $grid = new Grid(new Category());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('status', __('Status'));
        $grid->column('category_desc', __('Category describtion'));
        $grid->column('category_parents', __('Category Parents'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    protected function detail($id)
    {
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('status', __('Status'));
        $show->field('category_desc', __('Category describtion'));
        $show->field('category_parents', __('Category Parents'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    protected function form()
    {
        $form = new Form(new Category());

        $form->select('status', __('Status'))->options([0 => 'No', 1 => 'Yes']);
        $form->text('name', __('Name'));
        $form->textarea('category_desc', __('Category describtion'));
        $form->text('category_parents', __('Category Parents'));

        return $form;
    }
}