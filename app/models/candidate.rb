class Candidate < ActiveRecord::Base
  mount_uploader :resume, DocumentsUploader
  mount_uploader :history, DocumentsUploader
end
