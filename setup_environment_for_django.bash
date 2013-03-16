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

echo "This program will set up your environment for django development."
echo "We will run several commands with 'sudo,' which will require you to type in your password.'"
echo "Hit CTRL-C at any time to quit."

sudo easy_install pip
if [ $? -ne 0 ]; then
    echo "ERROR: 'easy_install' failed. Aborting setup..."
    exit 100
fi

sudo pip install virtualenvwrapper --upgrade
if [ $? -ne 0 ]; then
    echo "ERROR: 'pip install virtualenv' failed. Aborting setup..."
    exit 100
fi

echo "YOU MUST DO THIS MANUALLY:"
echo "Edit your .profile or your .bashrc and put in a line to source virtualenvwrapper.sh."
echo "To find virtualenvwrapper.sh, use this command:"
echo "     find / -name virtualenvwrapper.sh 2>/dev/null"
echo ""
echo "Two likely locations follow:"
echo "     /usr/local/bin/virtualenvwrapper.sh"
echo "     /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh"
echo ""
echo "Wherever it is, the line in your .profile or .bashrc line should be something like this:"
echo "     source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh"
