UDB (Unified Database) for CMaNGOS-WOTLK
========================================
A Content Database for [CMaNGOS-WOTLK][10], and *World of Warcraft Client Patch
3.3.5a* - It Is Compatible Only With Client 3.3.5a (build 12340)

**UDB** is released under the GPL v2.  The file (`LICENSE.mdown`)
**must** be a part of any re-distributable packages made from this software.  No
licenses should be removed from this software if you are making re-distributable
copies.

Compatibility
-------------
The *UDB* database is compatible with [CMaNGOS-WOTLK][10] core only.

Getting started
---------------
The basic principle behind this database repository is to have a single SQL file
holding every table in the database. When something is changed into the database
the modification is done by adding small SQL update files placed into the `updates` directory.
Every time a user (that would be you or UDB Developers) wishes to change something into the database, he/she
have to create and add the right SQL file. This helps tracking what changes are made, when and where.

Installation
------------
**UDB** is the main content database for: `mangos` where the world is defined
with creatures, items, objects, quests, etc.

It must be applied after creating the `mangos` database from your CMaNGOS core distribution [CMaNGOS-WOTLK][10] from [CMaNGOS Project][11].

For Easy Installation Edit The Following Windows Batch File `./Windows_Install_Script.bat` if you are a Windows User and configure
the Installation Options Setting Your MYSQL Database Names, Passwords and Source Folders.

It will provide you a Menu With Various Installation Options and Configurations That Have Greatly Simplified The Process.

For a full installation guide, please refer to [CMaNGOS installation instructions][14].

And if something goes wrong?
----------------------------
The best way to submit an issue is to use the [Issue Tracker:][1].


[1]: https://github.com/unified-db/Database/issues/ "Issue Tracker"
[10]: https://github.com/cmangos/mangos-wotlk "CMaNGOS-WOTLK"
[11]: http://cmangos.net/ "CMaNGOS Project"
[14]: https://github.com/cmangos/issues/wiki/Installation-Instructions "CMaNGOS installation instructions"