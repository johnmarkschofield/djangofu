============
djangofu
============

by John Mark Schofield (jms@schof.org)

Provides common utility functions for Django projects.

(It's django-fu as in Kung Fu, not as in F-U.)



Currently provides django-fu.djangoenvironment.get_env_variable().

Loads an environment variable into the current context, or raises an exception.

Usage:

>>> from djangofu.general import get_env_variable
>>> get_env_variable('SHELL')
'/bin/bash'
>>> get_env_variable('foobar')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Users/schof/.virtualenvs/dbfweb/lib/python2.7/site-packages/djangofu/general.py", line 12, in get_env_variable
    raise ImproperlyConfigured(error_msg)
django.core.exceptions.ImproperlyConfigured: Set the foobar environment variable
>>>


Thanks
------

get_env_variable was taken from the book "Two Scoops of Django," by Daniel Greenfield and Audrey Roy. [https://django.2scoops.org/]
