class Parser
  def initialize(csv)
    @csv = csv
  end

  def recipients
    CSV.parse(@csv, headers: true).map(&:to_hash)
  end
end
