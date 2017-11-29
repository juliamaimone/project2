class RatingsController < ApplicationController

	def new
		@rating = Rating.new
	end

	def create

        @rating = Rating.new
        @rating.stars = params[:rating][:stars]
        @rating.song = params[:rating][:song]
        render 'show'
	end

	def show
		@ratings = Rating.all

		
	end

    def rating_params
        params.require(:rating).permit(:song).permit(:stars)
    end

end
