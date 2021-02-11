# このリポジトリは何
blog.teslur.jpの中身。
勉強用リポジトリ。

# 諸情報
## バージョン類
```
ruby 2.7.2
node 14.13.0
yarn 1.22.5
rails 6.1.1
postgresql 12.5
```

# ローカル開発環境
* railsサーバーはdocker等使わず`rails s`で運用
* PostgreSQLはdocker
  ```
  $ docker run --rm -d \
    -p 5432:5432 \
    -v postgres-tmp:/var/lib/postgresql/data \
    -e POSTGRES_HOST_AUTH_METHOD=trust \
    postgres:12.5
  ```
