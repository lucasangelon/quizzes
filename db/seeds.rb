# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seeds must be in CamelCase format and the underlines must be removed for the class name.

Role.create(name: 'Student')
User.create(first_name: 'Lucas', last_name: 'Angelon', username: 'lucasa', password: 'test12', role_id: '1')
Role.create(name: 'Lecturer')
User.create(first_name: 'Lucas', last_name: 'Angelon', username: 'lucasa2', password: 'test12', role_id: '2')


Unit.create(name: 'ICAPRG502A Manage a project using software management tools')
Unit.create(name: 'ICAICT403A Apply software development methodologies')
Unit.create(name: 'ICAPRG509A Build using rapid application development')

Cluster.create(name: 'Manage a Project using software management tools')
Cluster.create(name: 'Rapid Application Development')

ClusterUnit.create(unit_id: 1, cluster_id: 1)
ClusterUnit.create(unit_id: 2, cluster_id: 2)
ClusterUnit.create(unit_id: 3, cluster_id: 2)

Course.create(name: 'Diploma of Software Development')
Course.create(name: 'Certificate IV in Programming')

CourseCluster.create(cluster_id: 1, course_id: 1)
CourseCluster.create(cluster_id: 2, course_id: 1)
CourseCluster.create(cluster_id: 2, course_id: 2)

CourseUser.create(user_id: 1, course_id: 1)
CourseUser.create(user_id: 1, course_id: 2)

Quiz.create(title: 'BLAHSHAGKJDFKJHFKJHFHKJFHKJHKJFLHKJFHKJFFHKJFHKJFFHKJFFHKJ', due_date: DateTime.parse('20150822235959'),user_id:2,unit_id:1,language_id:1,specific_id:1)
Quiz.create(title: 'BLAHSHAGKJDFKJHFKJHFHKJFHKJHKJFLHKJFHKJFFHKJFHKJFFHKJFFHKJ', due_date: DateTime.parse('20150822235959'),user_id:2,unit_id:1,language_id:1,specific_id:1)
Quiz.create(title: 'BLAHSHAGKJDFKJHFKJHFHKJFHKJHKJFLHKJFHKJFFHKJFHKJFFHKJFFHKJ', due_date: DateTime.parse('20150822235959'),user_id:2,unit_id:2,language_id:1,specific_id:1)
Quiz.create(title: 'BLAHSHAGKJDFKJHFKJHFHKJFHKJHKJFLHKJFHKJFFHKJFHKJFFHKJFFHKJ', due_date: DateTime.parse('20150822235959'),user_id:2,unit_id:2,language_id:1,specific_id:1)
Quiz.create(title: 'BLAHSHAGKJDFKJHFKJHFHKJFHKJHKJFLHKJFHKJFFHKJFHKJFFHKJFFHKJ', due_date: DateTime.parse('20150822235959'),user_id:2,unit_id:3,language_id:1,specific_id:1)
Question.create(content:'This is a test True or false question', quiz_id:1,user_id:1,type_id:1,language_id:1,specific_id:1,correct_answer:'true')
Question.create(content:'This is a "ABCD" question quiz',quiz_id:1,user_id:1,type_id:1,language_id:1,specific_id:1,correct_answer:'1')

QuestionExtra.create(content: 'Test Answer Number 1', question_id:2)
QuestionExtra.create(content: 'Test Answer Number 2', question_id:2)
QuestionExtra.create(content: 'Test Answer Number 3', question_id:2)
QuestionExtra.create(content: 'Test Answer Number 4', question_id:2)