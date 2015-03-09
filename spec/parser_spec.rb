require "spec_helper"

describe Parser do
  describe '#recipients' do
    it "parses recipients from a csv" do
      csv = <<-CSV.strip_heredoc
        email,name
        one@example.com,User One
        two@example.com,User Two
      CSV

      result = Parser.new(csv).recipients

      expect(result).to(eq([
        { 'name' => 'User One', 'email' => 'one@example.com'},
        { 'name' => 'User Two', 'email' => 'two@example.com'}
      ]))
    end
  end
end
