class ActorMovie < ApplicationRecord
  belongs_to :actor, :class_name => 'Person', :foreign_key => 'person_id'
  belongs_to :movie
end
