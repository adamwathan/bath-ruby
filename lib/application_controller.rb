class ApplicationController
  def params
    {
      csv_file: StringIO.new("file contents"),
      message: "hey"
    }
  end
end
