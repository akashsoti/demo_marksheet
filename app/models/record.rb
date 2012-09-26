class Record < ActiveRecord::Base
  attr_accessible :mark_1, :mark_2, :mark_3, :subject, :teacher
  validates :subject, :teacher, presence: true 
  validates :mark_1, :mark_2, :mark_3, presence: true, numericality: true

  before_create :check_marks
  
	def check_marks
		if self.mark_1 + self.mark_2 + self.mark_3 > 50
			self.save
		else
			redirect_to new_record_path
		end	
	end
end	