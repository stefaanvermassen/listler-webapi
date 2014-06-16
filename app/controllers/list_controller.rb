class ListController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])

    if @list.valid?
      @list.save
      redirect_to :root
    else
      render :action => "new_user"
    end
  end
end