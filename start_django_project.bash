#!/bin/bash

# License and Copyright
# ---------------------

# Copyright (c) 2013, John Mark Schofield
# All rights reserved.

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:

# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

if [ ! -d .git ]; then
  echo "ERROR: You should run this command inside an initialized .git repository."
  exit 10
fi

PROJECTNAME=$1

if [ -z $PROJECTNAME ]; then
    echo "ERROR: You didn't specify a project name."
    echo "You should call start_django_project.bash like this:"
    echo "  start_django_project.bash PROJECTNAME"
    exit 10
fi

source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

mkvirtualenv $PROJECTNAME
pip install django

django-admin.py startproject \
    --template=https://github.com/twoscoops/django-twoscoops-project/zipball/master \
    --extension=py,rst,html $PROJECTNAME



