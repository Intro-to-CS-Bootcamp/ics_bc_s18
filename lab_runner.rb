require "rubygems"
require "json"

def expect(answer, correct_msg='OK!')
	answer = answer.downcase
	input = $stdin.gets.chomp.downcase
	while answer != input
		puts 'Not quite. Please try again.'
		input = $stdin.gets.chomp.downcase
	end
	puts correct_msg
end

def expect_exact(answer, correct_msg='OK!')
	input = $stdin.gets.chomp
	while answer != input
		puts 'Not quite. Please try again.'
		input = $stdin.gets.chomp
	end
	puts correct_msg
end

puts 'For each of the following questions, type the output
displayed by the interactive Ruby interpreter when the
expression is evaluated.'
puts 'Type Error if you think there is an error.'
puts 'For multiple choice, type the answer you think is correct.'
puts 'If you get stuck, try out in the interpreter.'
puts 'Type OK to continue.'
expect('ok', '')
puts ''

Dir.chdir(ARGV[0])
File.open(ARGV[0] + ".json", "r") do |f|
	progress_file = "." + ARGV[0] + "_progress.txt"
	progress = File.exist?(progress_file) ? File.read(progress_file).chomp.to_i : 0
	offset = chapter_index = 0

	trap("INT") do
		File.open(progress_file, "w") { |pf| pf.write(progress.to_s + "\n") }
		puts "\nWe'll save your progress for next time!"
		exit
	end

	JSON.parse(f.read).each do |chapter|
		puts '***** ' + chapter['chapter'].upcase + ' *****'
		puts ''
		offset += chapter_index
		chapter_index = 0

		chapter['questions'].each do |question|
			chapter_index += 1
			puts '----------Question ' + chapter_index.to_s + '-----------'
			question['question'].each { |line| puts line }
			if (chapter_index + offset) <= progress
				puts question['answer']
			else
				question['type'] == 'exact' ? expect_exact(question['answer']) : expect(question['answer'])
				progress += 1
			end
			puts ''
		end
		puts ''
	end

	File.open(progress_file, "w") { |pf| pf.write(progress.to_s + "\n") }
end
