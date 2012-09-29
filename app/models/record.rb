class Record < ActiveRecord::Base
  attr_accessible :mark_1, :mark_2, :mark_3, :subject, :teacher

  VALID_NAME = /[a-z]/
  validates :subject, :teacher, presence: true, format: { with: VALID_NAME }
  validates :mark_1, :mark_2, :mark_3, presence: true, numericality: true

  
  before_save :check_marks

	def check_marks
		if self.mark_1 + self.mark_2 + self.mark_3 < 50 
			false
		end	
	end
end	