class Guest::GuestsController < ApplicationController
	skip_before_filter :require_login
	
	def new

	end
end
