class Email < ActiveRecord::Base
  enum newsletter: ["Cardiology Weekly", "Junior Doctor Weekly", "Medical Student Weekly"]
  has_many :sections
  accepts_nested_attributes_for :sections, allow_destroy: true
end
