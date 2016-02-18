# Movie Theater

**A Rails app for a movie theater to handle ticket sales**

Test credit card number: 5303765013600904

DO NOT USE YOUR CREDIT CARD - SO UNSECURE!!!

First Plan:

1. Design schema for database
2. Setup mvc for users seeing movie listing
3. Setup mvc for ticket purchasing
4. Setup mailing system for receipt
Wireframing!!!!!
3. Setup mvc for administrative
4. Style front-end for mobile first
5. Check testing
6. Expand seed data
7. Check user story

List of items to complete ('X' means done):

* X add validations to all models
* X check credit card for being valid
* X check email address for being valid
* X make mailer work
* X Make sure shows is unique for screen, start_time and duration of movie
* X Find way to check that all the tickets to a show aren't sold out
* X Create header
* X style movie index
* X style ticket new
* X style ticket show
* X add validations to ticket new
* X check age of customer in new ticket form
* X check age against rating
* Update language and format of emails
* ~~Find way for user to edit emails ~~ not part of the user story
* X Remove comments from admin section







Schema - First Version

![schema](schema.png) 


*Notes:*

* Math to find the end time:

* show.end_time =  show.start_time + (60 * 102)

* research best practices in admin system - ~~decided to use the Restful routes and permissions for handling the viewing~~ Was advised to try ActiveAdmin after I tried a few other gems (the Thoughtbot gem is not complete yet and I learned that the hard way)

*  need to add bootstrap

* Add validations to models

* This is how time is formatted:  DateTime.new(2016, 2, 15,20,30) Why was datetime so hards? http://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html

* I need to get everything functioning before styling and adding details. 

* Should the user be able to purchase multiple tickets? Nope







