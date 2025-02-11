-- Drop tables if they exist (for testing purposes, remove if not needed)
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;

-- ####### Table creation exercises here!

-- teams table
CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL
);

-- players table
CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team_id INT,
    player_name VARCHAR(255) NOT NULL,
    jersey_number INT NOT NULL,
    position VARCHAR(255) NOT NULL,
    offensive_value INT DEFAULT NULL,
    defensive_value INT DEFAULT NULL,
    energy INT NOT NULL,
    injured BOOLEAN NOT NULL DEFAULT FALSE,
    injury_length INT DEFAULT 0,
    FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE CASCADE
);

-- ####### Data insertion query (DON'T TOUCH)
INSERT INTO teams (name, city)
VALUES 
    ('New York Rangers', 'New York'),
    ('Toronto Maple Leafs', 'Toronto'),
    ('Chicago Blackhawks', 'Chicago'),
    ('Los Angeles Kings', 'Los Angeles'),
    ('Montreal Canadiens', 'Montreal'),
    ('Boston Bruins', 'Boston'),
    ('Vancouver Canucks', 'Vancouver'),
    ('Detroit Red Wings', 'Detroit'),
    ('Dallas Stars', 'Dallas'),
    ('Minnesota Wild', 'Minneapolis'),
    ('Arizona Coyotes', 'Phoenix'),
    ('Las Vegas Golden Knights', 'Las Vegas'),
    ('Washington Capitals', 'Washington D.C.'),
    ('Philadelphia Flyers', 'Philadelphia'),
    ('Pittsburgh Penguins', 'Pittsburgh'),
    ('San Jose Sharks', 'San Jose'),
    ('Calgary Flames', 'Calgary'),
    ('Edmonton Oilers', 'Edmonton'),
    ('Tampa Bay Lightning', 'Tampa Bay'),
    ('St. Louis Blues', 'St. Louis');

-- ####### Data insertion query (DON'T TOUCH)
INSERT INTO players (team_id, player_name, jersey_number, position, offensive_value, defensive_value, energy)
VALUES
    (1, 'Alex Ovechkin', 8, 'Skater', 95, 85, 20),
    (1, 'Nicklas Backstrom', 19, 'Skater', 80, 75, 18),
    (1, 'Braden Holtby', 70, 'Goalie', NULL, NULL, 22),
    (2, 'Mitch Marner', 16, 'Skater', 85, 60, 19),
    (2, 'Auston Matthews', 34, 'Skater', 90, 65, 21),
    (2, 'Frederik Andersen', 31, 'Goalie', NULL, NULL, 24),
    (3, 'Jonathan Toews', 19, 'Skater', 80, 68, 20),
    (3, 'Patrick Kane', 88, 'Skater', 95, 72, 19),
    (3, 'Corey Crawford', 50, 'Goalie', NULL, NULL, 23),
    (4, 'Anze Kopitar', 11, 'Skater', 85, 67, 21),
    (4, 'Drew Doughty', 8, 'Skater', 80, 70, 20),
    (4, 'Jonathan Quick', 32, 'Goalie', NULL, NULL, 22),
    (5, 'Shea Weber', 6, 'Skater', 75, 68, 20),
    (5, 'Carey Price', 31, 'Goalie', NULL, NULL, 24),
    (6, 'Brad Marchand', 63, 'Skater', 85, 64, 19),
    (6, 'Patrice Bergeron', 37, 'Skater', 80, 67, 20),
    (6, 'Tuukka Rask', 40, 'Goalie', NULL, NULL, 22),
    (7, 'Bo Horvat', 53, 'Skater', 75, 65, 18),
    (7, 'Brock Boeser', 6, 'Skater', 80, 63, 19),
    (7, 'Jacob Markstrom', 25, 'Goalie', NULL, NULL, 23),
    (8, 'Dylan Larkin', 71, 'Skater', 85, 60, 19),
    (8, 'Anthony Mantha', 39, 'Skater', 80, 58, 20),
    (8, 'Jonathan Bernier', 45, 'Goalie', NULL, NULL, 21),
    (9, 'Tyler Seguin', 91, 'Skater', 90, 64, 20),
    (9, 'Jamie Benn', 14, 'Skater', 85, 67, 19),
    (9, 'Ben Bishop', 30, 'Goalie', NULL, NULL, 23),
    (10, 'Zach Parise', 11, 'Skater', 80, 66, 18),
    (10, 'Ryan Suter', 20, 'Skater', 75, 68, 19),
    (10, 'Devan Dubnyk', 40, 'Goalie', NULL, NULL, 22),
    (11, 'Oliver Ekman-Larsson', 23, 'Skater', 85, 63, 19),
    (11, 'Phil Kessel', 81, 'Skater', 80, 61, 18),
    (11, 'Antti Raanta', 32, 'Goalie', NULL, NULL, 21),
    (12, 'Marc-Andre Fleury', 29, 'Goalie', NULL, NULL, 24),
    (12, 'Mark Stone', 61, 'Skater', 85, 60, 19),
    (12, 'Max Pacioretty', 67, 'Skater', 80, 62, 20),
    (13, 'Alex Ovechkin', 8, 'Skater', 95, 68, 20),
    (13, 'Nicklas Backstrom', 19, 'Skater', 80, 66, 18),
    (13, 'Braden Holtby', 70, 'Goalie', NULL, NULL, 22),
    (14, 'Claude Giroux', 28, 'Skater', 85, 64, 19),
    (14, 'Sean Couturier', 14, 'Skater', 80, 62, 20),
    (14, 'Carter Hart', 79, 'Goalie', NULL, NULL, 23),
    (15, 'Sidney Crosby', 87, 'Skater', 95, 70, 21),
    (15, 'Evgeni Malkin', 71, 'Skater', 90, 68, 20),
    (15, 'Matt Murray', 30, 'Goalie', NULL, NULL, 22),
    (16, 'Erik Karlsson', 65, 'Skater', 85, 64, 19),
    (16, 'Brent Burns', 88, 'Skater', 80, 62, 20),
    (16, 'Martin Jones', 31, 'Goalie', NULL, NULL, 23),
    (17, 'Johnny Gaudreau', 13, 'Skater', 85, 60, 19),
    (17, 'Mark Giordano', 5, 'Skater', 80, 58, 20),
    (17, 'David Rittich', 33, 'Goalie', NULL, NULL, 22),
    (18, 'Connor McDavid', 97, 'Skater', 95, 70, 21),
    (18, 'Leon Draisaitl', 29, 'Skater', 90, 68, 20),
    (18, 'Mike Smith', 41, 'Goalie', NULL, NULL, 24),
    (19, 'Steven Stamkos', 91, 'Skater', 85, 64, 19),
    (19, 'Victor Hedman', 77, 'Skater', 80, 62, 20),
    (19, 'Andrei Vasilevskiy', 88, 'Goalie', NULL, NULL, 23),
    (20, 'Ryan O''Reilly', 90, 'Skater', 85, 63, 19),
    (20, 'Alex Pietrangelo', 27, 'Skater', 80, 60, 20),
    (20, 'Jordan Binnington', 50, 'Goalie', NULL, NULL, 22);

-- ####### Queries section (ADD BELOW DATA INSERTION)

-- a. Retrieve all players whose names start with 'A'
SELECT '=========== PLAYERS WHOSE NAMES START WITH "A" ===========' AS '';
SELECT * FROM players WHERE player_name LIKE 'A%';

-- b. Retrieve players whose jersey numbers are 31, 34, or 97
SELECT '=========== PLAYERS WITH JERSEY NUMBERS 31, 34, OR 97 ===========' AS '';
SELECT * FROM players WHERE jersey_number IN (31, 34, 97);

-- c. Retrieve all players with an offensive value between 85 and 95
SELECT '=========== PLAYERS WITH OFFENSIVE VALUE BETWEEN 85 AND 95 ===========' AS '';
SELECT * FROM players WHERE offensive_value BETWEEN 85 AND 95;

-- d. Retrieve teams where the average defensive value of players is lower than 70
SELECT '=========== TEAMS WHERE AVG DEFENSIVE VALUE < 70 ===========' AS '';
SELECT teams.name, AVG(players.defensive_value) AS avg_defensive_value
FROM players
JOIN teams ON players.team_id = teams.id
GROUP BY teams.name
HAVING AVG(players.defensive_value) < 70;

-- e. Retrieve players ordered by their defensive values in descending order
SELECT '=========== PLAYERS ORDERED BY DEFENSIVE VALUES (DESC) ===========' AS '';
SELECT * FROM players ORDER BY defensive_value DESC;

-- f. Calculate the average offensive value of players for each team
SELECT '=========== AVERAGE OFFENSIVE VALUE PER TEAM ===========' AS '';
SELECT teams.name, AVG(players.offensive_value) AS avg_offensive_value
FROM players
JOIN teams ON players.team_id = teams.id
GROUP BY teams.name;