class Post < ActiveRecord::Base
	validates :title, presence: true,
                    length: { minimum: 5 }
    has_attached_file :photo, :styles => { :large => "700x700>", :medium => "500x500", :thumb => "100x100>" }
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
