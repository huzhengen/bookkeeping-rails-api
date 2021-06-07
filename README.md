```bash
rails new bookkeeping-rails-api --database=postgresql --skip-action-mailbox --skip-action-text --skip-sprockets --skip-javascript --skip-turbolinks --skip-system-test --skip-test --api --skip-webpack-install
```

```bash
docker run -v /ubuntu/bookkeeping-rails-api-data:/var/lib/postgresql/data -p 5001:5432 -e POSTGRES_USER=test -e POSTGRES_PASSWORD=123456  -d postgres:12.2
```