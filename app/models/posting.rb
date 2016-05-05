class Posting < ActiveRecord::Base
	validates :job_title, presence:true
	validates :company_name, presence:true
	validates :description, presence:true
	validates :location, presence:true
	validates :how_to_apply, presence:true

end
