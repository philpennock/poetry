poetry
======

This repo holds some dummy data, which exists purely for workflow tests with
build systems.

The contents of the `poems` directory might have various things done with
them.

That's it.

---

We generate a Docker image.  This is silly for data this small.

Normally you use a Docker image to hold "something executable", to treat a
"userland contents" bundle like a program.  In this case, there's nothing to
execute.  Thus usually you'd use some kind of tarball/zipfile to hold this
data.

But for much larger data-sets, being able to use Docker image caching
caching pays off, as you just pull when there's a difference.  You can build
repeatedly and get proper caching across builds which otherwise don't share
content.

There are security model trade-offs involved, around private/sensitive data.
Think carefully before going this route.  But if you're going to, then here's
some trivial sample data, consisting of a very few poems, which can help you
test the workflows.

---
