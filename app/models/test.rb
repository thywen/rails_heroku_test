class Test < ActiveRecord::Base
  validates :test, presence: true, length: { in: 6..20 }
end
