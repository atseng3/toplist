class Post < ActiveRecord::Base
	acts_as_votable
	acts_as_commentable
	acts_as_taggable

	# helper functions for fetching pending and approved
	def self.pending
		where(status: 'pending')
	end

	def self.approved
		where(status: 'approved')
	end
end
