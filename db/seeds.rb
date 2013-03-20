# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = ["Ernest Hemingway", "Zadie Smith", "JK Rowling",
    "Charles Dickens", "Philip Roth", "Samuel Beckett",
    "JR Tolkien", "David Foster Wallace"] #8 authors

books = ["The Sun Also Rises", "On Beauty", "Infinite Jest", "Harry Potter", "Waiting for Godot",
		"The Human Stain", "Lord of the Rings", "A Tale of Two Cities"] #8 books

comments = ["woooooah", "this book was awesome!", "i really didn't like the author's writing style",
			"too much sex", "boring. dry. terrible", "this book, like, totally changed my life, man"]
			#6 comments



User.destroy_all
Author.destroy_all
Book.destroy_all
Comment.destroy_all

authors.each do |user_name|
    User.create :name => user_name, :password => "123test" 
    Author.create :name => user_name
end

books.each do |book|
	Book.create :title => book, :author_id => rand(8)+1
end

 10.times do 
 	comments.each do |comment|
 		Comment.create :book_id => rand(8)+1, :user_id => rand(8)+1, :body => comment
 	end
 end
