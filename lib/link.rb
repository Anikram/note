require_relative 'note'

class Link < Note
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts "Link address?"
    @url = STDIN.gets.chomp

    puts "...add description below"
    @text = STDIN.gets.chomp
  end

  def to_lines
    time_string = "Created at: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S.txt")} \n\r\n\r"

    [@url, @text, time_string]
  end
end