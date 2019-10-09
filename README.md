# README # mvp-task

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Explanation of Task

Assuming application will use multiple users

Created End point for users sign in

/api/v1/users/sign_in 

When user signin system will generate authentication token
and success message.


On every endpoint in headers need to pass the generated authentication token otherwise endpoints will not be able to access it will throw unauthorised error

/api/v1/users/sign_out

Using this api user can logout from the application

/api/v1/mvp/signal

Using this api user have to pass measure data and threshold so that system will calculate the signal data based on the threshold

Example

sample params have to pass as below

{"mvp": {"threshold": 3, "measure_data": [1,2,3,5,6,6,0.1,2.2]}}








