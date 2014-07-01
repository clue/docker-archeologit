# docker-archeologit

[ArcheoloGit](https://github.com/marmelab/ArcheoloGit) is a data visualization tool
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
so there's no setup required.
Using this image for the first time will start a download.
Further runs will be immediate, as the image will be cached locally.

The recommended way to run this container looks like this:

```bash
$ docker run -it --rm -v $HOME/workspace/MyProject:/data:ro -p 8001:8000 clue/archeologit
```

You can now point your webbrowser to this URL:

```
http://localhost:8001
```

While this might seem complicated at first, it's a rather common setup following docker's conventions:

* `-it` will run an interactive session that can be terminated with CTRL+C
* `--rm` will run a temporary session that will make sure to remove the container on exit
* `-v {AnyGitRepo}:/data:ro` will mount your git repository as a read-only volume into the container for analyzing its contents
* `-p {OutsidePort}:8000` will bind the webserver to the given outside port
* `clue/archeologit` the name of this docker image
