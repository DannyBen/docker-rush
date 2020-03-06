Ubuntu with Rush
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

RUN rush clone your-repo --default && \
    rush get any-package

# ... rest of your dockerfile

```


[github]: https://github.com/DannyBen/docker-rush
[dockerhub]: https://hub.docker.com/r/dannyben/rush
[Rush]: https://github.com/DannyBen/rush-cli/