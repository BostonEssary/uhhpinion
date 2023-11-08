class Movie < ApplicationRecord
  has_one_attached :box_art
  belongs_to :director, :class_name => 'Person', :foreign_key => 'person_id'
  has_many :actor_movies
  has_many :actors, through: :actor_movies, source: :actor
end
