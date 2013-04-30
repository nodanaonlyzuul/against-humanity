require 'json'

cards = JSON.parse(File.read(File.join(".", "source", "cards.json")))

questions, answers = cards.partition{ |card| card["cardType"] == "Q"}

File.open("questions.txt", "w") do |f|
  questions.each do |question|
    f << "#{question["text"]}\n"
  end
end

File.open("answers.txt", "w") do |f|
  answers.each do |answer|
    f << "#{answer["text"]}\n"
  end
end
