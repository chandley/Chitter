Chitter Challenge
=================

We are going to write a little Twitter clone that will allow the users to post messages to a public stream.

Features:
---------

*In order to use chitter as a maker I want to sign up to the service
*In order to user chitter as a maker I want to log in
*In order to avoid others to use my account as a maker I want to log out
*In order to let people know what I am doing as a maker I want to post a message to chitter
*In order to see what people have to say as a maker I want to see all peeps in chronological order

User
----
*has email (unique)
*has unsername (unique)
*has many peeps (aka posts)

can only post if logged in
Doesn't have to be logged in to view tweets

Message
-------
*has text
*has a timestamp
*belongs to a user

*may be organised into conversation later