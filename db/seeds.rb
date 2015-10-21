# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@p = Post.new(title: '2 Best Distraction Videos While At Work', user_id: 1)
@p.save

@p = Post.new(title: '3 Most Motivational Quotes To Get You Excited About Work', user_id: 1)
@p.save

@p = Post.new(title: '3 Tips To Help You Burn More Fat During Workout', user_id: 1)
@p.save