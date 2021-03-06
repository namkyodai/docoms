![ASQ Vietnam Company Limited](https://github.com/namkyodai/docoms/blob/master/webroot/img/logo.png)

# DoCoMS
> Construction Correspondence Management System

**DEMO**: [ASQ Vietnam Company Limited](http://asq.vn)

Login Credentials (login:pass)
* User -> user:user
* Editor -> editor:editor
* Admin -> admin:admin

DoCoMS is a simple Document Management System designed specifically for the management of correspondence generated during the execution of a construction project. DoCoMS is targeted at document controllers and key staff of a construction project. The system can be used by the staff of the Contractor, the Engineer and / or the Employer.

Why DoCoMS came to life? Simply because I wanted to scratch an itch! I wanted to create a simple yet powerful web-based document management system specifically for the management of correspondence generated during the execution of a construction project. I needed a system that can be used by the construction team and has the ability to control the access to the data based on the role of each user. Also wanted the system to be easily and readily accessible (i.e. using just a WEB browser) and have the ability to export data in Microsoft Excel format for further analysis and presentation.

## Installing / Getting started

**DoCoMS** was built using the excellent [CakePHP](https://book.cakephp.org/3.0/en/installation.html) framework with the following plugins:
* [CakeDC](https://github.com/CakeDC/)
  * [auth](https://github.com/CakeDC/auth)
  * [mixer](https://github.com/CakeDC/mixer)
  * [users](https://github.com/CakeDC/users)
* [dakota](https://github.com/dakota)
  * [CakeExcel](https://github.com/dakota/CakeExcel)
* [Friends of Cake](https://github.com/friendsofcake)
  * [search](https://github.com/FriendsOfCake/search)
  * [cakephp-upload](https://github.com/FriendsOfCake/cakephp-upload)
* [Muffin](https://github.com/usemuffin)
  * [tags](https://github.com/UseMuffin/Tags)
* [PHPOffice](https://github.com/phpoffice)
  * [PHPExcel](https://github.com/PHPOffice/PHPExcel)

### Requirements ###

* [LAMP](https://en.wikipedia.org/wiki/LAMP_%28software_bundle%29) or [WAMP](https://en.wikipedia.org/wiki/LAMP_%28software_bundle%29#WAMP)
* HTTP Server. For example: Apache. Having `mod_rewrite` is preferred, but by no means required.
* PHP 5.6.0 or greater (including PHP 7.1).
* `mbstring` PHP extension
* `intl` PHP extension
* `simplexml` PHP extension
* MySQL (5.1.10 or greater)

### Installation ###

Before you start you will need the following installed on your system:
* [Composer](https://getcomposer.org/)
* [Git](https://git-scm.com/)

Step by step installation instructions:
* Clone the DoCoMS files from GitHub: `git clone http://github.com/chrmina/DoCoMS.git`
* Update composer: `composer selfupdate`
* Run composer to download all required dependencies: `composer update`
* Create a database named "DoCoMS" in MySQL
* Import the database dump in MySQL: `mysql -u username -p DoCoMS < DoCoMS-DB.sql`
* Rename `app.default.php` to `app.php`
* Edit `app.php` to match your system configuration.

Find the the security salt code in `app.php` and change it to a random alphanumerical string.
```php
<?php
'Security' => [
    'salt' => 'CHANGE_THIS_TO_A_RANDOM_ALPHANUMERIC_STRING',
],
```
Find the default datasources in `app.php` and change the username, password and database names to match your system's configuration.
```php
<?php
'Datasources' => [
    'default' => [
        'className' => 'Cake\Database\Connection',
        'driver' => 'Cake\Database\Driver\Mysql',
        'persistent' => false,
        'host' => 'localhost',
        // CHANGE username, password and database to match yours
        'username' => 'user',
        'password' => 'pass',
        'database' => 'DoCoMS',
        'encoding' => 'utf8',
        'timezone' => 'UTC',
        'cacheMetadata' => true,
        'log' => false,
```

Edit the file `users.php` in the `config` directory and enable user registration:
```php
<?php
$config = [
  'Registration' => [
    //determines if the register is enabled
    'active' => true,
```

Edit the `AppController.php` file in the `src/Controller` directory to make the default registered user an admin:
```php
<?php
$config['Auth']['authorize']['CakeDC/Users.SimpleRbac'] = [
  //default role, used in new users registered and also as role matcher when no role is available
  'default_role' => 'admin',
```

Access DoCoMS with your browser and go to `users/users/register` to register a new user. Fill the form and activate the user. Note that this user will be an admin. Use the user info to login and add other users through the Admin Menu. Once done edit the `users.php` to turn off user registration.
```php
<?php
$config = [
  'Registration' => [
    //determines if the register is enabled
    'active' => false,
```

Finally change the default role in `AppController.php` to user:
```php
<?php
$config['Auth']['authorize']['CakeDC/Users.SimpleRbac'] = [
  //default role, used in new users registered and also as role matcher when no role is available
  'default_role' => 'user',
```

For more information about user management please refer to the documentation of the CakeDC [users](https://github.com/CakeDC/users) plugin.

## Documentation
For documentation, as well as details about the system, see the [Docs](Docs/home.md).

## Support
For bugs and feature requests, please use the issues section of this repository.

Commercial support is also available; contact [ASQ Vietnam Company Limited](mailto://contact@asq.vn) for more information.

## Contributing

If you'd like to contribute new features, enhancements or bug fixes to DoCoMS, please read the [Contribution Guidelines](Docs/contributing.md) for detailed instructions.

## Disclaimer ##
DoCoMS is distributed in the hope that it will be useful, but without any warranty: without even the implied warranty of merchantability or fitness for a particular purpose. While every precaution has been taken in the creation of DoCoMS, in no event shall the creators and contributors of DoCoMS be liable to any party for direct, indirect, special, incidental, or consequential damages, including lost profits, arising out of the use of DoCoMS and/or of information contained in DoCoMS documents and/or from the use of programs and source code that may accompany it, even if the creators of DoCoMS have been advised of the possibility of such damage. DoCoMS is provided on as "as is" basis, and its creators have no obligations to provide maintenance, support, updates, enhancements, or modifications.

## License ##
Copyright [ASQ Vietnam Company Limited](https://asq.vn).

DoCoMS is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

DoCoMS is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html) for more details.
