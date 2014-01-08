# file path: DSimons/WDI/01 07 2013/wdi_sf_6_lab_2/game.rb

pages_with_questions = {}

lines_grabbed = ""
key = ""

File.open("story.txt", "r") do |infile|
  while (line = infile.gets)
    if line.index("~p")
    	key = line
    	lines_grabbed = ""
    else
    	lines_grabbed += line
    end
    pages_with_questions[key] = lines_grabbed
  end
end

p1 = pages_with_questions.select do |key, value|
	key.index("~p1")
end

p1.each do |key, value|
 puts value
end

error = true

while error
	puts "Please enter 1, 2 or 3 for your choice:"
	choice = gets.to_i
	if choice == 1
		pages_with_questions.each { |key, value| puts value if key == "~p2\n" }
		error = false
	elsif choice == 2
		pages_with_questions.each { |key, value| puts value if key == "~p3\n" }
		error = false
	elsif choice == 3
		pages_with_questions.each { |key, value| puts value if key == "~p4\n" }
		error = false
	else
		puts "Error! I did not understand your choice."
	end
end


# puts pages_with_questions