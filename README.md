🎬 IMDB Movies SQL Analysis Project

📌 Project Overview

This project focuses on analyzing an IMDB-style Movies database using SQL. The objective is to explore movie and director data, perform meaningful queries, and extract insights related to movie performance, popularity, revenue, ratings, and director contributions. The project is part of the DataMites Internship program and demonstrates practical SQL skills applied to a real-world dataset.

🗂 Database Information

Database Name: project_movie_database

DBMS: SQL Server

Language Used: SQL

Domain: projects.datamites.com

The database consists of two relational tables:

Movies

Directors

These tables are connected through a one-to-many relationship, where one director can direct multiple movies.

📊 Dataset Description
Movies Table

Contains detailed information about movies, including:

Movie titles (original and initial)

Budget and revenue

Popularity score

Release date

Vote average and vote count

Movie overview and tagline

Director reference ID

Directors Table

Contains director-related information such as:

Director name

Gender (0/2 = Male, 1 = Female)

Department

Unique director ID

🔗 Table Relationship

The Directors ID acts as the primary key, and the Director ID in the Movies table acts as the foreign key.
Both tables are joined using this key to perform combined analysis across movies and directors.

❓ Queries Performed

The project answers several analytical questions, including:

Retrieving all movie and director data

Counting total movies and female directors

Finding specific directors and name-based patterns

Identifying the most popular and most bankable movies

Analyzing highest-rated movies after a specific date

Finding movies by a particular director

Identifying the most productive and most bankable director

🛠 Skills Demonstrated

SQL SELECT statements

Filtering using WHERE and LIKE

Aggregate functions (COUNT, SUM, AVG)

JOIN operations

GROUP BY and ORDER BY clauses

LIMIT and OFFSET for ranking and pagination

Real-world analytical thinking

🎯 Learning Outcome

This project strengthens the ability to:

Explore and understand relational databases

Write efficient SQL queries

Perform data-driven analysis

Translate business questions into SQL solutions

✅ Conclusion

The IMDB Movies SQL Analysis project provides hands-on experience with real-world data analysis using SQL. It enhances both technical SQL proficiency and analytical thinking, making it a strong portfolio project for data analytics and database-related roles.
