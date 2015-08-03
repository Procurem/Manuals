# Procurem Development Process

```sh
$ git pull origin master
$ git checkout -b new-feature-branch
```

Develop on local machine

```sh
$ git add .
$ git commit -m "commit message"
```

For each minor change

```sh
$ git push origin new-feature-branch
```

* Goto github.com
* Goto repository page
* click '# branches' where it is in line with commits, branch, releases, contributor
* click the button which says "New pull request" to the right
* wait for comments and code review

Another party must merge all branches you dev

Once this moves to master, Codeship.io will run all tests and environment checks.
If these checks pass, it will push to production, if not it will comment in pull request.
