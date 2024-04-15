class WebsitesController < ApplicationController
  def new
    @website = Website.new
  end

  def show
    @website = Website.find params[:id]
  end

  def index
    @websites = Website.all
  end

  def create
    @website = Website.new website_params
    @website.content = get_content
    if @website.save
      redirect_to @website
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def website_params
    params.require(:website).permit(:name, :description)
  end

  def get_content
    "<h1>Some content</h1>"
  end
end
