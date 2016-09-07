class LinksController < ApplicationController
  def index
    @links = Link.order('score DESC')
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path
    else
      render :new
    end

    def edit
      @link = Link.find(params[:id])
    end

    def update
      @link = Link.find(params[:id])
    end
  end

  def add_one
    @link = Link.find(params[:link_id])
    @link.score += 1
    @link.save
    redirect_to(links_path)
  end

  private
  def link_params
    params.require(:link).permit(:title, :url, :score)
  end
end
