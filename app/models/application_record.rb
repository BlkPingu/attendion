# frozen_string_literal: true

# Top level Model for others to inherit from
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
