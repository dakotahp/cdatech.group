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

First build the container and then run it:

```
docker build -t cdatech:latest
docker up
```

## Contributing

Feel free to submit a PR or issue if you have a question, suggestion or fix.
