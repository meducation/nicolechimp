class Section < ActiveRecord::Base
  belongs_to :email
  validates :title, :url, :site, :content, :section_heading, presence: true

  default_scope -> { order('order_value ASC') }

  before_save do
    if order_value.to_i == 0
      if email.sections.size == 0
        self.order_value = 1
      else
        self.order_value = self.email.sections.last.order_value + 1
      end
    end
  end
end
