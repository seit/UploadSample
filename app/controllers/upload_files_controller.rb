class UploadFilesController < ApplicationController
  def index
    @file = UploadFile.new
  end

  def create
    file = params['upload_file']['file']
    path = "ファイル保存先ファイルパス"

    # ファイルの情報取得
    file_name = file.original_filename
    file_size = file.size

    # ファイルの書き込み 
    of = File.open(path << file_name, 'w')
    of.write(file.read)
    of.close

    UploadFile.create(:filename => file_name, :filesize => file_size, :filepath => path)
  end
end
