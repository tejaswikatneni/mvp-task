class Api::V1::MvpController < ApplicationController
	before_action :check_authentication

	# saves measured data and threshold then calculate the signal data based on threshold
	def signal
		mvp = current_user.mvps.new(signal_params)
		if mvp.save
			render json: {status: "Success", mvp: mvp.as_json}
		else
			render json: {status: "Failure", errors: mvp.errors.full_messages.to_sentence}
		end
	end

	def signal_search
		errors = []
		if params[:start_date].present?
			start_date = params[:start_date].to_datetime
		else
			errors << "Please enter start date"
		end
		if params[:end_date].present?
			end_date = params[:end_date].to_datetime
		else
			errors << "Please enter end date"
		end
		if errors.present?
			render json: {status: "Failure", errors: errors.to_sentence}
		else
			all_signals = current_user.mvps.where(updated_at: start_date..end_date)
			render json: {signal_output: all_signals.as_json}
		end
	end


	private

	def signal_params
		params.require(:mvp).permit(:threshold, measure_data: [])
	end

end