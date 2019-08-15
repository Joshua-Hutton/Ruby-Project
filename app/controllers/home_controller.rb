class HomeController < ApplicationController
    before_action :require_login
  def index
    @total = 0.0
    if params[:month] && params[:month] != ""
        @d = params[:month].split
        if !params[:year] || params[:year] == ""
            params[:year] = Date.today.year.to_s
        end
        @entry = Entry.where('cast(user_id as text) LIKE ? AND cast(date as text) >= ? And cast(date as text) <= ?', 
                            "%#{session[:user_id]}%", "%#{ params[:year] + "/" + @d[0]}%", "%#{ params[:year] + "/" + @d[1]}%")
    else
    @entry = Entry.where('cast(user_id as text) LIKE ?', "%#{session[:user_id]}%")
    end
  end

  def show 
      redirect_to home_path
  end 

  def new 
      @entry = Entry.new
  end 

  def create
     
      @entry = Entry.new(entry_params)
      @entry.user_id = session[:user_id]
      if(@entry.save)
          redirect_to root_url
      else
          render 'create'
      end
  end

  def edit 
      @entry = Entry.find(params[:id])
  end

  def update
      @entry = Entry.find(params[:id])
      if(@entry.update(entry_params))
          redirect_to root_url
      else
          render 'edit'
      end
  end

  def destroy
      @entry = Entry.find(params[:id])
      @entry.destroy
      redirect_to root_url
  end

  

  def logout
  end

  def search_params
      params.require(:entry).permit(:category)
  end

  private def entry_params
      params.require(:entry).permit(:category, :location, :amount, :date)
  end
end
