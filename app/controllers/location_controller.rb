class LocationController < ApplicationController
    def index
        if params[:location] && params[:location] != ""
            if params[:month] && params[:month] != "" 
                @d = params[:month].split
                if !params[:year]
                    params[:year] = Date.today.year
                end
                @entry = Entry.where('location LIKE ? AND cast(user_id as text) LIKE ? AND cast(date as text) >= ? And cast(date as text) <= ?', 
                "%#{params[:location]}%", "%#{session[:user_id]}%", "%#{ params[:year] + "/" + @d[0]}%", "%#{ params[:year] + "/" + @d[1]}%")   
            else 
                @entry = Entry.where('location LIKE ? AND cast(user_id as text) LIKE ?', "%#{params[:location]}%", "%#{session[:user_id]}%") 
            end
        else
         @entry = Entry.where('cast(user_id as text) LIKE ?', "%#{session[:user_id]}%")
        end
 
     end 
    
    def locatoin_params
        params.require(:entry).permit(:location)
    end
end
