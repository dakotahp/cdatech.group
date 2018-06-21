# cdatech.group

This is the repo for the group website. It is built in Jekyll and can run on
Docker.

## Running the website locally

### Without Docker

You can run it using Jekyll if it is installed on your machine:

```
jekyll serve
```

### With Docker

First build the container:

```
./bin/build
```

and then run it:

```
./bin/start
```

See individual scripts for Docker commands that have been abstracted out.

### See it

http://localhost:4000

## Composing Blog Posts

The project has [jekyll-compose](https://github.com/jekyll/jekyll-compose) which
allows creation of blog posts using:

```
jekyll post "My New Post"
```

## Contributing

Feel free to submit a PR or issue if you have a question, suggestion or fix.
