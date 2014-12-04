class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, default_url: "http://placehold.it/700x700&text=Whoops!+No+Image" 
  # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, default_url: "http://placehold.it/300x300&text=Whoops!+No+Image"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :image, presence: true
  	validates :description, presence: true
end