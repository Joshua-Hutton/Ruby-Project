class CategoryController < ApplicationController
    def index
        @total = 0.0
        
        if params[:category]
            if params[:month] && params[:month] != "" 
                @d = params[:month].split
                if !params[:year]
                    params[:year] = Date.today.year
                end
                @entry = Entry.where('category LIKE ? AND cast(user_id as text) LIKE ? AND cast(date as text) >= ? And cast(date as text) <= ?', 
                "%#{params[:category]}%", "%#{session[:user_id]}%", "%#{ params[:year] + "/" + @d[0]}%", "%#{ params[:year] + "/" + @d[1]}%")   
            else 
                @entry = Entry.where('category LIKE ? AND cast(user_id as text) LIKE ?', "%#{params[:category]}%", "%#{session[:user_id]}%") 
            end
        else
         @entry = Entry.where('cast(user_id as text) LIKE ?', "%#{session[:user_id]}%")
        end
 
     end 
    
    def category_params
        params.require(:entry).permit(:category)
    end
end
