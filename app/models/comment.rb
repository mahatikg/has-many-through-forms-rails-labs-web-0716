class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

# reject_if: proc { |attributes| attributes['title'].blank? }
  accepts_nested_attributes_for :user,reject_if: proc { |attributes| attributes[:username].blank?}
end
