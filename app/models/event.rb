class Event < ApplicationRecord
  belongs_to :user

  has_many :attending_events, :dependent =>  :destroy #remove an events guests if the event is deleted

  validates :title, presence: true
  validates :date, presence: true

  # def join event
  #  attending_event.create(user_id: current_user.id, event_id: event.id)
  # end

end
