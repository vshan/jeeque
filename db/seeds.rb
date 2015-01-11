# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all
Question.create!(  question: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 1,
  stopiccode: 1
)
# . . .
Question.create!(  question: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 1,
  stopiccode: 1
)
Question.create!(  question: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  opa:   "1",
  opb:   "1",
  opc:   "1",
  opd:   "1",
  ro:   "1",
  year: DateTime.parse("2014-12-12"),
  examcode: 1,
  subjectcode: 1,
  topiccode: 1,
  stopiccode: 1
)