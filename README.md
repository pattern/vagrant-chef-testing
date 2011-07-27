Overview
========

This is my first github repo.  I'm using it to follow along with [ericholscher](http://ericholscher.com/)'s four-part walkthrough on building a Django server with Chef:

* http://ericholscher.com/blog/2010/nov/8/building-django-app-server-chef/

This will be a fun ride.  Just a test to see how Python syntax highlighting works:

```python
#!/usr/bin/env python
from django.core.management import execute_manager
import imp
try:
    imp.find_module('settings') # Assumed to be in the same directory.
except ImportError:
    import sys
    sys.stderr.write("Error: Can't find the file 'settings.py' in the directory containing %r. It appears you've customized things.\nYou'll have to run django-admin.py, passing it your settings module.\n" % __file__)
    sys.exit(1)

import settings

if __name__ == "__main__":
    execute_manager(settings)
```