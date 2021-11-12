require_relative 'note'

class Task
  def initialize
    super
    @due_date = Time.now
  end
  def read_from_console
  end

  def to_lines
  end
end