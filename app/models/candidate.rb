class Candidate < ActiveRecord::Base
  mount_uploader :resume, DocumentsUploader
  mount_uploader :history, DocumentsUploader


  validates :email, :presence => true
  validates :phone, :presence => true
  validates :name, :presence => true
  validates :register, :presence => true
  validates :resume, :presence => true
  validates :history, :presence => true
end
