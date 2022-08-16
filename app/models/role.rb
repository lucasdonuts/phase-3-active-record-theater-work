class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |audition|
      audition.actor
    end

    # Or self.auditions.pluck(:actor)
  end

  def locations
    self.auditions.pluck(:location)
  end

  def lead
    self.auditions.find_by(hired: true) ? self.auditions.find_by(hired: true) : "no actor has been hired for this role"
  end

  def understudy
    self.auditions.where(hired: true).second ? self.auditions.where(hired: true).second : "no actor has been hired for understudy for this role"
  end

end