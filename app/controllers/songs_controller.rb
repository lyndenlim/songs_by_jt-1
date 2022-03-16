class SongsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    songs = Song.all
    render json: songs
  end

  def show
    if params[:id]
      render json: find_song
    end
  end

  def top_charts
    song = Song.most_popular
    render json: song, serializer: TopChartSerializer
  end

  private

  def find_song
    Song.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Song not found" }, status: :not_found
  end
end
