# Dispatcher
Dispatching services based on loaded perl modules.

This will be a general class with underlying subclasses which will use it to dispatch certain actions.

My plan is as follows:
* Intercept.pm will work with a ServiceMapper class and subclasses which will use a CodeBuilder (to build coderefs) class, a File gathering class, etc. The intention being to launch certain types of instrumentation and diagnostics for a system under test (SUT). It will rely on forking in order to launch different sorts of instrumentation that may run on a test runner and the SUT. While it will gather certain logs at the end. Some forked processes may themselves output to files and these will need to be gathered as well. We'll see if I ever get to this one. I've only just begun tinkering with the ServiceMapper and the next step was PoC on the CodeBuilder which may require division due to needing to launch both remote and local processes.
