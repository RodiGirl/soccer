class Issue < ActiveRecord::Base
	has_many :articles
	has_many :quizzes
	has_many :scores 

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
