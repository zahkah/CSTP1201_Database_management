DROP DATABASE IF EXISTS group7DDL;
CREATE DATABASE group7DDL;
use group7DDL;



CREATE TABLE stadium(
    stadium_name VARCHAR(20) PRIMARY KEY,
    capacity INT(6) NOT NULL,
    city VARCHAR(64) NOT NULL
);

-- we change the `club` table into `team` for consistency
CREATE TABLE teams(  
    team_name VARCHAR(20) PRIMARY KEY ,
    email_address VARCHAR(64) NOT NULL,
    points INT(3) NOT NULL,
    financial INT(10) NOT NULL,
    city VARCHAR(64) NOT NULL

);


CREATE TABLE contracts(
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    start_hiring_date date,
    end_hiring_date date,
    salary INT(6),
    employer VARCHAR(20) NOT NULL
);

CREATE TABLE referees(
    referee_id INT AUTO_INCREMENT PRIMARY KEY,
    contract_id INT NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    dob date NOT NULL,
    nationality VARCHAR(64) NOT NULL,

    FOREIGN KEY (contract_id) REFERENCES contracts(contract_id)
);

CREATE TABLE players(
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    player_price INT(6),
    dob date NOT NULL,
    nationality VARCHAR(64) NOT NULL,
    position VARCHAR(20) NOT NULL,
    mobile_number INT(11),
    contract_id INT NOT NULL,
    team_name VARCHAR(20) NOT NULL,

    FOREIGN KEY (contract_id) REFERENCES contracts(contract_id),
    FOREIGN KEY (team_name) REFERENCES teams(team_name)

);

 
CREATE TABLE transfer_market(
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT NOT NULL,
    -- We decided to get rid of the `old team` field from phase 1 
    new_team VARCHAR(20) NOT NULL,
    transfer_fee INT(6) NOT NULL,

    FOREIGN KEY (player_id) REFERENCES players(player_id),
    FOREIGN KEY (new_team) REFERENCES teams(team_name)
    
);




-- We change the name of `events` into `awards`
CREATE TABLE awards(
    award_name VARCHAR(64) PRIMARY KEY,
    sponsor VARCHAR(25) NOT NULL,
    prizes INT(5) NOT NULL,
    player_id INT NOT NULL,

    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

CREATE TABLE facilities( 
    facilities_id INT AUTO_INCREMENT PRIMARY KEY,
    gym_room INT(2),
    recovery_center INT(2),
    team_name VARCHAR(20) NOT NULL,

    FOREIGN KEY (team_name) REFERENCES teams(team_name)
    
);


CREATE TABLE coaches( 
    coach_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    roles VARCHAR(11) NOT NULL,
    contract_id INT NOT NULL,
    team_name VARCHAR(20) NOT NULL,
    nationality VARCHAR(64) NOT NULL,

    FOREIGN KEY (team_name) REFERENCES teams(team_name),
    FOREIGN KEY (contract_id) REFERENCES contracts(contract_id)

);


CREATE TABLE matches(
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    match_start_date date NOT NULL,
    -- we change the data type from varchar(10) from phase1 project to time
    match_time time NOT NULL,
    home_team VARCHAR(20) NOT NULL,
    away_team VARCHAR(20) NOT NULL,
    result VARCHAR(10),
    stadium VARCHAR(20) NOT NULL,
    referee1_id INT NOT NULL,
    referee2_id INT NOT NULL,
    referee3_id INT NOT NULL,

    FOREIGN KEY (stadium) REFERENCES stadium(stadium_name),

    FOREIGN KEY (home_team) REFERENCES teams(team_name),
    FOREIGN KEY (away_team) REFERENCES teams(team_name),

    FOREIGN KEY (referee1_id) REFERENCES referees(referee_id),
    FOREIGN KEY (referee2_id) REFERENCES referees(referee_id),
    FOREIGN KEY (referee3_id) REFERENCES referees(referee_id)
);

-- Player Statistic table based on the match they play
CREATE TABLE stats(
    -- match_id and player_id are the concatnated key for this table
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    red_card INT(2),
    yellow_card INT(2),
    penalty INT(3),
    normal_goals INT(3),
    assists INT(3),

    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);






