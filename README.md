# Movie Theater

**A Rails app for a movie theater to handle ticket sales**

Plan:

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


Schema

![schema](schema.png) 


*Notes:*

Math to find the end time:

show.end_time =  show.start_time + (60 * 102)

research best practices in admin system - decided to use the Restful routes and permissions for handling the viewing

need to add bootstrap

Add validations to models

This is how time is formatted:  DateTime.new(2016, 2, 15,20,30) 

http://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html

I need to get everything functioning before styling and adding details. 


Should the user be able to purchase multiple tickets?


