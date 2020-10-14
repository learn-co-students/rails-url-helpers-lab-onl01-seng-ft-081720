class Student < ActiveRecord::Base
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.active = false
  end

  def active?
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end