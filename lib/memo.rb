class Memo < Post

  def read_from_console
    puts "Enter text. End with ':wq'"
    @text = []

    while line != ":wq" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_lines
    time_string = "Created at: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S.txt")} \n\r\n\r"

    @text.unshift(time_string)
  end
end