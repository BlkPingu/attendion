class Event < ApplicationRecord
  belongs_to :user

  has_many :users, class_name: "attending_event", foreign_key: "user_id" , dependent: :destroy #remove an events guests if the event is deleted

  # def join event
  #  attending_event.create(user_id: current_user.id, event_id: event.id)
  # end

end
