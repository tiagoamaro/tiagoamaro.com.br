class Post < ActiveRecord::Base
  SEARCH_MAX_LENGTH = 30

  belongs_to :user
  attr_accessible :body, :title, :user
end
