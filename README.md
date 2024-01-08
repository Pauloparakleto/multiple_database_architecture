# Multiple Database Architecture with GoodJob gem

Good Job is a queue scheduler designed to play in a single database.

As the application grows, soon or later, the single database will be stressed by both insertions in the cron
scheduler and in the main models per si.

This repository is here to answer this question:
> How to configure GoodJob to play with a secondary database while leaving the main database 
> with the data the user needs to consult?

