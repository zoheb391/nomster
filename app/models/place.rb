class Place < ActiveRecord::Base
belongs_to :user
has_many :comments

geocoded_by :address
after_validation :geocode

validates :name, :length => { minimum:4 },:presence => true
validates :address, :length => { minimum:4 },:presence => true
validates :description, :presence => true
end
