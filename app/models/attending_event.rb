# frozen_string_literal: true

# Attending Event
class AttendingEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, uniqueness: { scope: :event_id }
end
