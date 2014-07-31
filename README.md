# mini/base

A minimal, busybox-like container based on [Alpine Linux](http://alpinelinux.org/),
that contains [apk](http://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management)
package manager to ease installation of extra packages and help you build
smaller development containers.

This is possible thanks to the work from [uggedal](https://github.com/uggedal)
on packaging [Alpine Linux for Docker](https://github.com/uggedal/docker-alpine).

## Usage

Use this as base for your own containers:

```dockerfile
FROM mini/base
RUN apk-install <pakckagename>

CMD ["/bin/sh"]
```

And install or extend with packages as you please.

You can find a list of packages you can install on Alpine Linux [Packages](http://alpinelinux.org/packages)
section.

### Included packages

To get you started, a set of packages have been integrated:

- curl
- wget
- ca-certificates

Without those, installation of remote packages over HTTPS connections was
not possible.

## License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.
