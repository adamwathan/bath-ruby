class ApplicationController
  def params
    csv = <<-CSV.strip_heredoc
      email,name
      one@example.com,User One
      two@example.com,User Two
    CSV

    {
      csv_file: StringIO.new(csv),
      message: "hey"
    }
  end
end
