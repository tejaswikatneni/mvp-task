class Mvp < ApplicationRecord

	belongs_to :user
	
	serialize :measure_data, Array
	serialize :signal_data, Array

	validates :measure_data, :threshold, presence: true
	validates :threshold, numericality: {only_integer: true}


	before_save :calculate_signal_data

	def calculate_signal_data
		threshold = self.threshold
		measure_data = self.measure_data
		signal_data = self.signal_data
		measure_data.each do |input_data|
			if input_data.ceil >= threshold
				signal_data << 1
			else
				signal_data << 0
			end
		end
		self.signal_data = signal_data
	end

	def as_json(options={})
	    if options.present?
	      super(options)
	    else
	      super(:only => [:measure_data, :signal_data])
	    end
	end

end
