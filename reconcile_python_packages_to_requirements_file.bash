#!/bin/bash

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


if [ -z $VIRTUAL_ENV ]; then
    echo "ERROR: You should run this command from within a virtualenv."
    echo "Enter 'workon ENV_NAME' to pick the right virtualenv, then try this"
    echo "command again."
    exit 10
fi

if [ ! -f manage.py ]; then
    echo "ERROR: You should run this command from within the Django root dir."
    echo "This is the same directory that contains manage.py."
    exit 10
fi

if [ -e "$1" ]; then
    FREEZEFILE=$1
elif [ -e "requirements/project.txt" ]; then
    FREEZEFILE="requirements/project.txt"
elif [ -e "../requirements.txt" ]; then
    FREEZEFILE="../requirements.txt"
else
    echo "ERROR: Couldn't find your freezefile in any of the standard places"
    echo "and you didn't include it on the command-line (or you included it"
    echo "but it was wrong)."
    exit 10
fi

pip install -r $FREEZEFILE
if [ $? -ne 0 ]; then
    echo "ERROR: pip install failed with an error. You should probably do"
    echo "something about that. Exiting..."
    exit 10
fi
