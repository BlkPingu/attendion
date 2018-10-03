class Event < ApplicationRecord
  belongs_to :user

  has_many :users, class_name: "attending_event",foreign_key: "attendee_id" , dependent: :destroy #remove an events guests if the event is deleted
end
