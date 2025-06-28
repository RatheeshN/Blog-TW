## Laravel Blog Rest API

This is a blog rest API project including blog features like users, posts, comments, tags , authentication using PHP Laravel 12 framework & MySQL database.

## How to use ?

Follow these steps to get this project live

```
git clone https://github.com/RatheeshN/Blog-TW.git
cd Blog-TW
composer install

```

## Configure your .env file

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_name
DB_USERNAME=db_username
DB_PASSWORD=db_password

```

## Final steps

```
composer require laravel/sanctum
php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"
php artisan migrate
php artisan db:seed
php artisan key:generate

http://localhost:8000

```

To test this API project you can use [Postman](https://www.postman.com/) application.For authorization purpose you need to add below headers

```
headers => [
    'Accept' => application/json',
    Authorization' => Bearer .$accessToken,
]
```

## Thanks
