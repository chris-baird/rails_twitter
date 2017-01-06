class Tweet < ActiveRecord::Base
  validates :handle, presence: true
  validates :content, presence: true
end
