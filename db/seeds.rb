# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   DATETIME.parse("yyyymmddhhmmss")
Role.create(name: 'Student')
User.create(first_name: 'Lucas', last_name: 'Angelon', username: 'lucasa', password: 'test12', role_id: '1')
Type.create(name: 'TrueFalse')
Type.create(name: 'RadioButton')
Type.create(name: 'CheckBox')
Type.create(name: 'SingleText')
Type.create(name: 'MultipleText')
Quiz.create(title: 'Test Quizz', user_id: 1, unit_id: 1, language_id: 1, specific_id: 1, due_date: DateTime.parse("20150415235959"))
Unit.create(name: 'Test Unit')
Question.create(content: 'Has James stuffed this code up???', quiz_id: 1, user_id:1, type_id:1, language_id:1, specific_id:1, correct_answer: 1)
Specific.create(name: 'General testing')
Language.create(name: 'English')





