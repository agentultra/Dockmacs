Dockmacs
========

An elisp web server in a docker container.

Running
-------

This is still a work in progress. You'll have to build the image and
run it locally:

    $ cd Dockmacs/
    $ docker build -t agentultra/dockmacs .
    $ docker run -it --name dockmacs -p 127.0.0.1:8080:8080 -d agentultra/dockmacs

If Docker didn't give you any errors you should be able to:

    $ curl -X GET http://localhost:8080/hello-world/foo
    Hello, foo

Why?
----

Why not? Not everything has to have a purpose. I was just curious if
it was possible and what could be done with it.

Future Work
-----------

I'd like to render org files to HTML/PDF/etc on-the-fly. Cache the
results. Re-render based on the mtime of the source files.
