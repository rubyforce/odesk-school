class Standard < ActiveRecord::Base
  attr_accessible :name

  has_many :students, dependent: :destroy
end
