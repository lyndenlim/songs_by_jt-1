class SongsController < ApplicationController
  def index 
    songs = Song.all 

    render json: songs
  end 


  def show 
    song = Song.find_by(id: params[:id])
    # song = Song.find(params[:id])

    if song 
      # render json: song.with_reviews
      # render json: song, serializer: SongReviewSerializer
      render json: song
    else 
      render json: {error: "song not found"}, status: :not_found
    end 
  end 

  def top_charts
    top_song = Song.most_popular

    render json: top_song.json_obj
  end 
end
