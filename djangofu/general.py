
import os
from django.core.exceptions import ImproperlyConfigured


def get_env_variable(var_name):
    try:
        return os.environ[var_name]
    except KeyError:
        msg = "Set the %s environment variable"
        error_msg = msg % var_name
        raise ImproperlyConfigured(error_msg)
