# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
EventPlanner.destroy_all


user1 = User.create([{name: 'John Wells', picture: 'https://thembeforeus.com/wp-content/uploads/2019/10/brooke-cagle-wKOKidNT14w-unsplash-610x407.jpg'}])
user2 = User.create([{name: 'Felix Smith', picture: 'https://www.idcoexperiences.com/wp-content/uploads/2020/02/charles-etoroma-95UF6LXe-Lo-unsplash.jpg'}])
user3 = User.create([{name: 'David Lee', picture: 'https://images.unsplash.com/photo-1482235225574-c37692835cf3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80'}])
user4 = User.create([{name: 'Sarah Smith', picture: 'https://images.unsplash.com/photo-1526419107596-e76a3c4789c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'}])
user5 = User.create([{name: 'Maria Brown', picture: 'https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&w=1000&q=80'}])

event1 = Event.create([{location: 'Terminal 5', date: '2020-06-03', type: 'Office Party', user_id: User.all.sample.id, event_planner_id: EventPlanner.all.sample.id}])
event2 = Event.create([{location: 'Epic Events', date: '2020-12-30', type: 'Wedding', user_id: User.all.sample.id, event_planner_id: EventPlanner.all.sample.id}])
event3 = Event.create([{location: 'Blue Rose', date: '2021-01-15', type: 'Graduation Party', user_id: User.all.sample.id, event_planner_id: EventPlanner.all.sample.id}])
event4 = Event.create([{location: 'Grande Gallas', date: '2021-03-13', type: 'Wedding', user_id: User.all.sample.id, event_planner_id: EventPlanner.all.sample.id}])
event5 = Event.create([{location: 'Night Bar', date: '2021-03-21', type: 'Birthday', user_id: User.all.sample.id, event_planner_id: EventPlanner.all.sample.id}])

eventPlanner1 = EventPlanner.create([{name: 'Joseph', picture: 'https://agentdailydose.com/wp-content/uploads/2020/05/harps-joseph-tAvpDE7fXgY-unsplash-1.jpg', description: 'HelLo', star_rating: 4, specialty: 'General Events'}])
eventPlanner2 = EventPlanner.create([{name: 'Jessica', picture: 'https://www.titangroup.nyc/wp-content/uploads/2020/06/martin-guido-aYfyllIz-Xk-unsplash-scaled.jpg', description: 'Hello', star_rating: 3, specialty: 'Weddings'}])
eventPlanner3 = EventPlanner.create([{name: 'Mason', picture: 'https://agentdailydose.com/wp-content/uploads/2020/05/harps-joseph-tAvpDE7fXgY-unsplash-1.jpg', description: 'Hello', {star_rating: 5, specialty: 'Award Events'}])
eventPlanner4 = EventPlanner.create([{name: 'Michael', picture: 'https://images.unsplash.com/photo-1568880893176-fb2bdab44e41?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb', description: 'Hello', star_rating: 3, specialty: 'Birthdays'}])
eventPlanner5 = EventPlanner.create([{name: 'Ava', picture: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=60', description: 'Hello', star_rating: 4, specialty: 'Toddler Parties'}])
