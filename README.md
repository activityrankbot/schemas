<div align="center">

![ActivityRank Wordmark](https://raw.githubusercontent.com/activityrankbot/assets/main/banners/wordmark.png)

# ActivityRank Schemas

**The database schemas powering ActivityRank**

[![License](https://img.shields.io/github/license/activityrankbot/website?style=for-the-badge)](https://github.com/activityrankbot/schemas/blob/main/LICENSE.txt)
[![Support Server](https://img.shields.io/discord/534598374985302027?style=for-the-badge&logo=discord&label=support%20server&link=https%3A%2F%2Factivityrank.me/support)](https://activityrank.me/support)

</div>

---

## Description

ActivityRank is a Discord bot focusing on flexible statistics and ranking.
This repository hosts the database schemas required to run the bot and its manager.

## Contributors

Thank you for deciding to contribute! Pull requests are welcome.
For major changes, please open an issue first to discuss what you would like to change.

The format of migration files is loosely based upon the
[golang-migrate standard](https://github.com/golang-migrate/migrate/blob/master/MIGRATIONS.md).
Filenames should have the formats:

```
{version}_{title}.up.sql
{version}_{title}.down.sql
```

where `{version}` is of the form `{year}{month}{day}`, f.e. `20240320`. `{title}` should be written in snake_case.
