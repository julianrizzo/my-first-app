module DateHelper

	def self.days_since_upload(date)
		
		days = (DateTime.now - date).to_i

		if days == 0
			return "Today"
		else
			return "#{days} day#{days > 1 ? "s" : ""} ago"
		end
	end

end