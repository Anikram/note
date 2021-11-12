class Note
  def initialize
    @text = nil
    @created_at = Time.now
    @options = [0,1,2]
  end

  def self.note_types
    [Memo, Link, Task]
  end

  def self.options
    [0,1,2]
  end

  def self.create(type_index)
    return note_types[type_index].new
  end

  def read_from_console
    # todo
  end

  def to_lines
    # todo
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_lines
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    current_path + '/../data/' + file_name
  end
end