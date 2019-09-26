class BloggersController < ApplicationController

  def show
    @blogger = Blogger.find(params[:id])
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(params.require(:blogger).permit(:name, :age, :bio))
    # is it valid tho?
    if @blogger.valid?
      redirect_to blogger_path(@blogger)
    else
      redirect_to "somewhere else"
    end
  end

end
