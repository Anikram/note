require_relative 'note'

class Link < Note
  def initialize
    super
    @url = ''
  end

  def read_from_console
  end

  def to_lines
  end
end