class Score < ActiveRecord::Base
	belongs_to :user
	belongs_to :issue
	belongs_to :article
end
