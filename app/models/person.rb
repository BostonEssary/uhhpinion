class Person < ApplicationRecord
    has_many :actor_movies
    has_many :performances, through: :actor_movies, source: :movie
end
