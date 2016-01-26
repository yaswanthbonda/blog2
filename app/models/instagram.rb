class Instagram < ActiveRecord::Base
	
	validates :name, :post_id, :phone, :email, :textbox, :hashtags, :followers_count, :followed_by, :posted_from_city, :posted_at, presence: true
	validates :post_id, :phone, :email, uniqueness: true
	validates :phone, length: { is: 10 }
	validates :name, length: { in: 2..20, too_long: "allowed range for this entry is 2 to 20", too_short: "My own text=this is too short please see the range is 2 to 20" }
	
	
	
	#validates :posted_from_city, inclusion: { in: %w(kansas city, atlantic city, dallas, las vegas, chicago, istanbul, turkey, new york, seattle), message: "%{value} is not a valid city for this project" }
	#validates :posted_from_city, exclusion: { in: %w(delever, spring field, st.louis), message: "%{value} is a reserved city for this project" }
	#validates :posted_from_city, acceptance: true
	
	
	validates :email, format: { with: /\w+@\w+\.com/}
	validates :name, format: { without: /\d{1,}/ , message: "allows only alphabets" }
	
	
	# post_id, :phone, :email, :textbox, :hashtags, :followers_count, :followed_by :posted_from_city, :posted_at,
	#  :phone, :email,

end
