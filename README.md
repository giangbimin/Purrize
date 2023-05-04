### initialize

```
mkdir purrize
cd purrize
rails new . --css tailwind --database=postgresql -T
bundle add importmap-rails
bundle add tailwindcss-rails
rails tailwindcss:install
rails importmap:install
rails stimulus:install
rails generate controller home index --no-helper --no-controller-specs
rails db:create
./bin/dev
```


### deployment

```
fly init
fly deploy
fly open
url: https://purrize.fly.dev/
```

