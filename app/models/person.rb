class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :sex, :dob, :age, :school_number, :school_type, :klass, :headshot_photo_id
  #belongs_to :headshot_photo
  has_many :headshot_photos, :as => :capturable, :dependent => :destroy
  has_and_belongs_to_many :variants
  after_create :clear

  def clear
    Person.where(["created_at < ?", 2.days.ago]).delete_all 
  end
end
