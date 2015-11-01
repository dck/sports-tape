class Sopcast < ActiveRecord::Base
  validates :url, presence: true, format: /\Asop:\/\/.+\z/
end
