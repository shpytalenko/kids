class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :sex, :dob, :school_number, :school_type, :klass, :headshot_photo_id
  #belongs_to :headshot_photo
  has_many :headshot_photos, :as => :capturable
  has_and_belongs_to_many :variants
end
