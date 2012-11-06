class UploadFile < ActiveRecord::Base
  attr_accessible :filename, :filepath, :filesize
end
