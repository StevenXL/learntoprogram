line_width = 40

content = Array.new

content << "Table of Contents"
content << "Chapter 1: Getting Started"
content << "Page 1"
content << "Chapter 2: Also Getting Started"
content << "Page 9"
content << "Chapter 3: Still Getting Started"
content << "Page 13"

# pass in the index of the element, and print based on index
puts ""
content.each_index do |element|
  if element == 0
    puts content[element].center(line_width)
  elsif (element % 2 != 0)
    puts content[element].ljust(line_width) + content[element + 1].rjust(line_width / 2)
  end
end
puts ""
