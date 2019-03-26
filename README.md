HELMS is employee clocking system it has follwing features

1) you can sign up and log in
2) once employee log in he can clock in. If he is already cloked in then he cant clockin again.
3) once employee is clocked in he can clock out. if he is already clocked out then he cant clock out.
4) only admin can edit and delete clock event
5) To make user as admin , create a user and go to rails console and set that user's admin field to 'true'


Installation instructions:

1) clone the repo
2) Install rails environment
3) run bundle install
4) run rails db:create
5) run rails db:migrate
6) run rails s


Future changes
1) will use bootstrap for better user expereince and UI
2) more test case coverage
