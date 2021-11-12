#encoding: utf-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative './lib/link.rb'
require_relative './lib/task.rb'
require_relative './lib/memo.rb'
require_relative './lib/note.rb'

puts ''
puts ''

choices = Note.note_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "#{index}. #{type}"
  end

  choice = gets.to_i
end

entry = Note.create(choice)

entry.read_from_console

entry.save

puts "Note is saved."


