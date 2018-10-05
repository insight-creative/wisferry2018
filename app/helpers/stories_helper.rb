module StoriesHelper

  def story_params
    params.require(:story).permit(:title, :body, :image, :name, :city)
  end

end
