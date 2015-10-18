class Sopcast < ActiveRecord::Base
  validates :url, presence: true
end
