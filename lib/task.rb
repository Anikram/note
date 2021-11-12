require_relative 'note'
require 'date'

class Task < Note
  def initialize
    super
    @due_date = Time.now
  end
  def read_from_console
    puts "What is your task?"
    @text = STDIN.gets.chomp

    puts "... what is due date"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_lines
    time_string = "Created at: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S.txt")} \n\r\n\r"

    dead_line = "Due date: #{@due_date}"

    [dead_line, @text, time_string]
  end
end