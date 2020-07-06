#Installation

####Resource personnel needed
1. Database Admin
2. System Administrator or Web Server Administrator


#### New Installation
1. Download the latest released from [http://10.15.10.151:3000/FLI/employee-tracking-system/releases](http://10.15.10.151:3000/FLI/employee-tracking-system/releases "http://10.15.10.151:3000/FLI/employee-tracking-system/releases")
2. Extract to file to Web root document (ex. [drive:]\xampp\htdocs)
3. Rename the folder from `employee-tracking-system` to `ets`
4. Create datbase ets_db
5. Edit file database.php in /application/config and change the following variables for database connection

   ```php
	'hostname' => 'localhost',  // datbase server
	'username' => 'root',       // db username
	'password' => '',           // db password
	'database' => 'ets_db',     // database name
   ```

6.    Go to the application URl (ex. http://localhost/ets/login)
