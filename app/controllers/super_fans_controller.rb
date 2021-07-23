class SuperFansController < ApplicationController


  def destroy 
    fan  = SuperFan.find_by(id: params[:id])

    if fan 
      fan.destroy
      head :no_content
    else
      render json: {message: "Fan not found"}, status: :not_found 
    end 
  end 
end
