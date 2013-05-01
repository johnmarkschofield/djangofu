from distutils.core import setup

setup(
    name='django-utils',
    version='0.0.2',
    author="John Mark Schofield",
    author_email="jms@schof.org",
    packages=['django-utils', ],
    url="http://pypi.python.org/pypi/django-utils",
    license='LICENSE.txt',
    description="Django-related utilities",
    long_description=open('README.txt').read(),
)
