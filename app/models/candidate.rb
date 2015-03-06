class Candidate < ActiveRecord::Base
  mount_uploader :resume, DocumentsUploader
end
