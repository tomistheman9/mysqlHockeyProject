# Hockey Database Project

This project contains SQL scripts to set up and query a hockey database. It includes table creation commands for teams and players, data insertion scripts, and sample queries for data retrieval and analysis.

## Project Structure

The repository includes the following files:
- **schema.sql**: Contains SQL commands to drop existing tables (for testing purposes), create new tables (`teams` and `players`), and insert sample data.
- **queries.sql**: Contains various query exercises to retrieve and analyze data from the database.
- **README.md**: This file.
- **.gitignore**: A file to ignore unwanted files such as temporary SQL dumps or log files.

## Files Overview

### schema.sql
This file performs the following tasks:
- Drops existing tables (`games`, `players`, and `teams`) if they exist.
- Creates the `teams` table with columns for `id`, `name`, and `city`.
- Creates the `players` table with columns for `id`, `team_id`, `player_name`, `jersey_number`, `position`, `offensive_value`, `defensive_value`, `energy`, `injured`, and `injury_length`. It also sets up a foreign key relationship to the `teams` table.
- Inserts sample data into the `teams` and `players` tables.

### queries.sql
This file includes sample queries such as:
- Retrieving all players whose names start with 'A'.
- Retrieving players with specific jersey numbers.
- Retrieving players with offensive values between 85 and 95.
- Retrieving teams where the average defensive value of players is lower than 70.
- Retrieving players ordered by their defensive values in descending order.
- Calculating the average offensive value of players for each team.

## Getting Started

1. **Set Up the Database:**
   - Open your MySQL or MariaDB client.
   - Execute the `schema.sql` file to create the database schema and insert the sample data.
     ```sql
     source path/to/schema.sql;
     ```
2. **Run the Sample Queries:**
   - Execute the `queries.sql` file to run the sample queries and view the results.
     ```sql
     source path/to/queries.sql;
     ```

## Requirements

- MySQL or MariaDB database server.
- A SQL client or command-line interface to execute the scripts.

## .gitignore

A sample `.gitignore` file is included to ignore temporary files such as SQL dumps and log files. (See the provided `.gitignore` file in the repository.)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- Thanks to the instructors and mentors for their guidance.
- Special thanks to all contributors who helped improve this project.
