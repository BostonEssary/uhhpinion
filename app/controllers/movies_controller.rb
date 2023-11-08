class MoviesController < ApplicationController
  def index
    @movies = Movie.all()
  end

  def show
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @movie = Movie.new
    @people = Person.all()
  end

  def delete
  end

  def update
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end

end
