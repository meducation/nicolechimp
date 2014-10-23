class Email < ActiveRecord::Base
  enum newsletter: [
    "Cardiology Weekly",
    "Junior Doctor Weekly",
    "Medical Student Weekly",
    "Pediatrics Weekly",
    "Radiology Weekly",
    "Nurses Weekly"
  ]

  has_many :sections
  accepts_nested_attributes_for :sections, allow_destroy: true

  before_create do
    self.introduction = "" unless self.introduction
    self.conclusion = "" unless self.conclusion
  end
end
