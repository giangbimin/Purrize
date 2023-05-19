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

```
rails zeitwerk:check
```

### deployment

```
fly init
fly deploy
fly open
url: https://purrize.fly.dev/
```

#### Test

```
rails g rspec:install
```

### Authentication

```
rails g migration EnableUUID
class EnableUuid < ActiveRecord::Migration[7.0]
  def change
    enable_extension "pgcrypto"
  end
end
rails db:migrate
```

```
rails g devise:install
rails g devise user
rails g devise:controllers users
rails g devise:views users
rails g model identity user_id:uuid provider:string uid:string image:string full_name:string
```

### ViewComponent

```
  rails g component omniauthForm --stimulus
``` 