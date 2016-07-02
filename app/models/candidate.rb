class Candidate < ActiveRecord::Base
  # Uploaders
  mount_uploader :resume, DocumentsUploader
  mount_uploader :history, DocumentsUploader

  # Validations
  validates :email, :presence => true
  validates :phone, :presence => true
  validates :name, :presence => true
  validates :register, :presence => true
  validates :resume, :presence => true
  validates :history, :presence => true

  # Callbacks
  after_save :send_confirmation_email

  scope :novatos, -> { select { register[0..1].to_i == Time.now.year - 1978 } }

  def first_name
    name.split(' ').first
  end

private
  def send_confirmation_email
    CandidateMailer.confirm_inscription(self).deliver
  end
end
