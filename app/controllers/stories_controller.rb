class StoriesController < ApplicationController

  invisible_captcha only: [:create, :update]

  before_filter :require_login, except: [:new, :create, :index, :show]

  include StoriesHelper

  def index
    @stories = Story.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.save
    @message = Message.new(story_params)
    MessageMailer.new_message(@message).deliver
    flash.notice = "Thank you for submitting your story!"
    redirect_to stories_path
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    flash.notice = "Story '#{@story.title}' deleted."
    redirect_to stories_path
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
    flash.notice = "Story '#{@story.title}' updated!"
    redirect_to story_path(@story)
  end

end
