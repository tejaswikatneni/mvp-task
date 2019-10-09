# README # mvp-task

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Explanation of Task

Assuming application will use multiple users

Created End point for users sign in

**  /api/v1/users/sign_in 

Http method: post

When user signin system will generate authentication token
and success message.


On every endpoint in headers need to pass the generated authentication token otherwise endpoints will not be able to access it will throw unauthorised error

** /api/v1/users/sign_out
http method: get

Using this api user can logout from the application

** /api/v1/mvp/signal

http method: Post

Using this api user have to pass measure data and threshold so that system will calculate the signal data based on the threshold

Example

sample params have to pass as below

{"mvp": {"threshold": 3, "measure_data": [1,2,3,5,6,6,0.1,2.2]}}

Output

{
  "status": "Success",
  "mvp": {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }
}

** /api/v1/mvp/signal_search
http method: post

Example params:

{"start_date": "1-10-2019", "end_date": "20-10-2019"}


Sample output:

{
  "signal_output": [{
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }, {
    "measure_data": [1, 2, 3, 5, 6, 6, 0.1, 2.2],
    "signal_data": [0, 0, 1, 1, 1, 1, 0, 1]
  }]
}








