# Random scripts for RHV management

## File rhvadduser:
RHEV4 or RHV4 has had problems with auto population of users from the aaa plugin. This bug is being patched in 4.1 but no mention about backport yet.

This is a script that preads users so the aaa plugin will not have to add user.
