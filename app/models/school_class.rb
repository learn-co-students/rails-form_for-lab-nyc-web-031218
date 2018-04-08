class SchoolClass < ActiveRecord::Base
  def full
    self.title + " " + self.room_number.to_s
  end
end
