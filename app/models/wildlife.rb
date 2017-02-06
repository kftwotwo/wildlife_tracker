class Wildlife < ActiveRecord::Base
  validates :name, :presence => true
end
