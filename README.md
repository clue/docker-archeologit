# docker-archeologit

[ArcheoloGit](https://github.com/marmelab/ArcheoloGit) is data visualization tool
to show the age and dev activity for git repositories.
This is a [docker](https://www.docker.io) image that eases setup.

## About ArcheoloGit

> *From [the official readme](https://github.com/marmelab/ArcheoloGit#readme):*

Where should you focus the maintenance efforts?
ArcheoloGit is a visualization of age and dev activity for software, powered by d3.js.

ArcheoloGit displays all files of a given application as rectangles.
The size of each rectangle is proportional to the number of commits,
the color is green if the file was recently modified,
red if it hasn't been modified for a long time.

![](http://marmelab.com/images/blog/nav.gif)

[Introductory blog post to ArcheoloGit](http://marmelab.com/blog/2014/05/15/archeologit.html)

## Usage

This docker image is available as a [trusted build on the docker index](https://index.docker.io/u/clue/archeologit/),
so using it is as simple as running:

```bash
$ docker run clue/archeologit
```

Running this command for the first time will download the image automatically.
Further runs will be immediate, as the image will be cached locally.
