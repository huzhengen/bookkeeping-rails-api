# bookkeeping-rails-api

创建 rails 项目
```bash
rails new bookkeeping-rails-api --database=postgresql --skip-action-mailbox --skip-action-text --skip-sprockets --skip-javascript --skip-turbolinks --skip-system-test --skip-test --api --skip-webpack-install
```
docker 开启数据库 PostgreSQL
```bash
docker run -v /ubuntu/bookkeeping-rails-api-data:/var/lib/postgresql/data -p 5001:5432 -e POSTGRES_USER=test -e POSTGRES_PASSWORD=123456 -d postgres:12.2
```
创建数据库
```bash
bin/rails db:create
```
启动项目
```bash
bin/rails s
```
创建 Model/Controller
```bash
bin/rails g model User
bin/rails g model User email:string password_digest:string
bin/rails g controller users
```
迁移数据
```bash
bin/rails db:migrate
```
安装依赖
```bash
bundle
bundle install
```