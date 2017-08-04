Wotlk-DB for CMaNGOS-WOTLK
========================================
A Content Database for [CMaNGOS-WOTLK][10], and *World of Warcraft Client Patch
3.3.5a* - It Is Compatible Only With Client 3.3.5a (build 12340)

**Wotlk-DB** is released under the GPLv3+.
The file (`LICENSE.mdown`) **must** be a part of any re-distributable packages made from this software.  
No licenses should be removed from this software if you are making re-distributable copies.

**GPLv3+** - GPL version 3 or any later version

Compatibility
-------------
The *Wotlk-DB* database is compatible with [CMaNGOS-WOTLK][10] core only.

Getting started
---------------
The basic principle behind this database repository is to have a single SQL file
holding every table in the database. When something is changed into the database
the modification is done by adding small SQL update files placed into the `updates` directory.
Every time a user (that would be you or Wotlk-DB Developers) wishes to change something into the database, he/she
have to create and add the right SQL file. This helps tracking what changes are made, when and where.

Installation
------------
**Wotlk-DB** is the main content database for: `mangos` where the world is defined
with creatures, items, objects, quests, etc.

It must be applied after creating the `mangos` database from your CMaNGOS core distribution [CMaNGOS-WOTLK][10] from [CMaNGOS Project][11].

If you used the default values when installing your mangos core, simply run into a bash compatible shell (like Bash Git for Windows) the following command  ./InstallFullDB.sh .

It will create a single file  InstallFullDB.config .

If you have modified the default values for connecting to the database, in order to use this database repository, you will have to open  InstallFullDB.config , and edit in the desired database, username and password according to how you have configured your MySQL server. Default values for mangos core are  username:mangos ,  password:mangos ,  database:mangos . For security reasons, it is strongly adviced to use different username and password.

Once you have the desired database user and rights configured in MySQL, you may run again the  ./InstallFullDB.sh  command to load the individual data tables into your database, populate them and apply all updates since the last milestone.


For a full installation guide, please refer to [CMaNGOS installation instructions][14].

And if something goes wrong?
----------------------------
To submit an issue for **ACID** or **Database**. Pls use: [Issue Tracker:][1].

To submit an issue for **Core** or **ScriptDev2**. Pls use: [Issue Tracker:][2].


[1]: https://github.com/cmangos/wotlk-db/issues/ "Issue Tracker"
[2]: https://github.com/cmangos/issues/issues/ "Issue Tracker"
[10]: https://github.com/cmangos/mangos-wotlk "CMaNGOS-WOTLK"
[11]: http://cmangos.net/ "CMaNGOS Project"
[14]: https://github.com/cmangos/issues/wiki/Installation-Instructions "CMaNGOS installation instructions"