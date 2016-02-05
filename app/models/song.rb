class Song < ActiveRecord::Base
	attr_accessor :value 
	has_many :lists

end
