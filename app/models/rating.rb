class Rating < ApplicationRecord
  belongs_to :store
  validate_presence_of :value, :review, :user_name
end
