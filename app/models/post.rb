class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	acts_as_taggable
	# acts_as_taggable_on :tags
end
