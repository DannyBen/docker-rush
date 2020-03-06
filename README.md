Ubuntu docker with Rush
==================================================

[Source code on GitHub][github] | [Image on DockerHub][dockerhub]

---

This image is based on ubuntu and contains the [Rush] package manager.

It was designed to help in building docker images that need Rush packages.


Usage
--------------------------------------------------

In your Dockerfile, do this:

```dockerfile
FROM dannyben/rush

# Run any rush command normally, for example:
RUN rush snatch you your-package 

# ... rest of your dockerfile

```

Tags
--------------------------------------------------

You may request specific Rush versions, by specifing one of these [tags].

For example:

```dockerfile
FROM dannyben/rush:0.5.0
```


[tags]: https://github.com/DannyBen/docker-rush/releases
[github]: https://github.com/DannyBen/docker-rush
[dockerhub]: https://hub.docker.com/r/dannyben/rush
[Rush]: https://github.com/DannyBen/rush-cli

