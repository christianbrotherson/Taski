class Project < ApplicationRecord
  after_initialize :set_defaults

  scope :almost_completed, -> { where('percent_complete > 75.0') }
  scope :still_needs_some_work, -> { where('percent_complete < 75.0') }

  def set_defaults
    self.percent_complete ||= 0.0
  end
end
