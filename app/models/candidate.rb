class Candidate < ActiveRecord::Base
  # Uploaders
  mount_uploader :resume, DocumentsUploader
  mount_uploader :history, DocumentsUploader

  # Validations
  validates :email, presence: true
  validates :phone, presence: true
  validates :name, presence: true
  validates :register, presence: true, length: { is: 6 }
  validates :resume, presence: true
  validates :history, presence: true
  validate  :valid_email

  # Callbacks
  after_save :send_confirmation_email

  def first_name
    name.split(' ').first
  end

private
  # Callback methods
  def send_confirmation_email
    CandidateMailer.confirm_inscription(self).deliver
  end

  # Validation methods
  def valid_email
    errors.add(:email, 'deve ser válido') if email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  end
end
