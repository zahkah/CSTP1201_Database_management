# GROUP 7

###  FOOTBALL DATABASE MANEGEMENT SYSTEM
### STATEMENT
`A college group that aims to revolutionalize sports industry through proper data managemet system for the footballing world` 

### OBJECTIVES
- Helps the fan to be able to follow their favorite players or teams
- Easily manage the team finanacial to avoid financial fraud
- Player stats can be tracked always in order to get awarded
- Matches can be arranged more properly and cost less time to do it
- The events will cost less time to operate and organize.
### ERD Image
![](images\ERD.png)


### Normalization Images
![](images\first-and-second-NF.png)
![](images\3rd-NF.png)

### A premliminary list of fields for every subject
### 1. Club (Zach)
|Field Name|Examples of Data|Comments|
|--|--|--|
|Club Name|Manchester United||
|city|London||
|email address|manchesterunited@gmail.com||
|points|20||
|financial|1000000000000||

### 2. Player (Zach)
|Field Name|Examples of Data|Comments|
|--|--|--|
|player ID|1||
|first name|Lionel||
|last name|Messi||
|position|ST||
|mobile number|123-233-3221||
|nationality|Argentina||
|club name|Manchester City||
|contract id|2|this is the foreign key for this player's contract|
|award id|5|

### 3. Coach (Zach)
|Field Name|Examples of Data|Comments|
|--|--|--|
|coach id|2|
|first name|Jose|
|last name|Mourinho|
|title|Head Coach|
|contract id|3|
|club name| Arsenal|

### 4. Facilitities (Zach)
|Field Name|Examples of Data|Comments|
|--|--|--|
|facilities id|5|
|gym room|3|
|recovery center|4|
|training ground name|1|

### 5. Matches (Bin)
|Field Name|Examples of Data|Comments|
|--|--|--|
|match id|2||
|start date| 10/4/2023|
|time|12:30pm|
|home team|Chelsea|
|away team|Arsenal|
|stadium|Stamford Bridge|
|result|2-0|
|referee id|3|

### 6. Referee (Bin)
|Field Name|Examples of Data|Comments|
|--|--|--|
|referee id| 2|
|first name|Mike|
|last name| James|
|dob|20/4/1980|
|contract id|3|
|nationality|USA|

### 7. Leaderboard(Bin)
|Field Name|Examples of Data|Comments|
|--|--|--|
|team rank|1st|
|team name| Arsenal

### 8. Player Stats(Bin)
|Field Name|Examples of Data|Comments|
|--|--|--|
|stats id|4|
|red card|0|
|yellow card|3|
|goals|4|
|assist|3|

### 9. Stadium (Terry)
|Field Name|Example of Data|Comments(Description)|
|--|--|--|
|stadium_name|Old Trafford|Stores the name of a stadium|
|city|Manchester|Stores the location of the stadium|||
|capacity|74.310|Store the capacity of the stadium|||



### 10.Transfer Market (Terry)
|Field Name|Example of Data|Comments(Description)|
|--|--|--|
|player_id|1|Stores the number of id of a player|
|transaction_id|2|Stores the number of id of trasaction|
|new_team|Manchester United|Stores the name of the team which a player come to|
|last_team|Manchester City|Stores the name of the old team which a player has played for||
|transfer_fee|100,000,000 euro|Stores the total fee of the transfer that the new team have to pay for the old team of the player they recruit||




### 11. Contract (Terry)
|Field Name|Example of Data|Comments(Description)
|--|--|--|
|contract_id|3|Stores the number of id of the contract|
|employer|Erik ten Hag|Stores the name of the employer||
|start_date|Jannuary 26, 2023| Stores the time when the contract start||
|end_date|Jannuary 26, 2024|Stores the time when the contract end||
|salary|10,000,000 euro|Store the salary of a player from the contract||





### 12. Events ( Terry)
|Field Name|Example of Data|Comments(Description)|
|--|--|--|
|event_name|Ballon d'Or|Stores the name of the event|
|sponsor|Socios|Store the name of the sponsor||
|award|Golden Ball|Stores the name of the award||
|prizes|Golden Ball trophy|Stores the prizes that a player will have from the award||


## 3rd Normalization Form
### 1. CLUB 
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|club_name|Club Name|Stores the name of the club|varchar(20)|PK|
|city|City|Stores the city where the club hosts|varchar(64)||
|email_address|email address|Stores email address of the club|varchar(64)|
|points|team points|stores the points the team has|int(3)|
|financial|club's money|stores how much does the club currently have|int(11)|


### 2. PLAYERS 
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|player_id|player ID|stores the id of a player|int(4)|PK|
|contract_id|contract id|stores the contract id of a player|int(4)||FK|
|team|Club name|stores the name of the club which this player is playing for|varchar(20)||FK|
|player_price|Price of the player|stores the money to be able to buy this player|int(11)||
|first_name|player's first name|stores the first name of the player|varchar(10)|||
|last_name|player's last name|stores the last name of the player|varchar(10)|
|position|player's position|stores the position that player plays|varchar(20)|||
|mobile_number|phone number|stores the phone number of a player|int(11)|
|nationality|Nationality|stores the nationality of this player||



### 3. COACH
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|coach_id|coach ID|stores the id of the coach|int(4)|PK|
|contract_id|contract ID|stores the id of coach's contract|int(4)||FK|
|coach_team|coach team|stores the team name that this coach is belong to|varchar(20)||FK|
|first_name|coach's first name|stores the first name of the coach|varchar(10)||
|last_name|coach's last name|stores the last name of the coach|varchar(10)||
|title|title|stores the title of the coach in a team|varchar(11)||



### 4. FACILITIES 
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|facilities_id|facilities or equipment id|stores an id of facilities or equipment of a team|int(3)|PK|
|gym_rooms|gym training rooms|stores number of training rooms that club has|int(2)||
|recovery_center|recovery center|stores number of recovery centers that club has|int(2)||
|training_ground_name|training field's name|stores a training fields of a club|varchar(20)||



### 5. Games / Matches

|Field Name|Canonical Name|Description|Data Type|Key|Source
|--|--|--|--|--|--|
|match_id|Match ID|Stores an ID of the match|int(4)|PK||
|game_start_date|date game starts|stores the date that game is occurred|date|
|time|time|stores the time the game starts|varchar(10)||||
|home_team|Home team|stores the name of the hosted team|varchar(20)||FK|
|away_team|Away team|stores the name of the guest team|varchar(20)||FK|
|stadium|Stadium|stores the name of the stadium|varchar(20)||FK
|referee_id|Referees id|stores the referee information for that match|int(3)||FK|
|result|Result|stores the scores of that game|varchar(5)|||



### 6. Referees
|Field Name|Canonical Name|Description|Data Type|Key|Source
|--|--|--|--|--|--|
|referee_id|Referees ID|stores an ID of that referee|int(3)|PK|
|contract_id||Contract ID|stores a contract ID of that referee|int(4)||FK|
|first_name|Referee's first name|stores referee's first name|varchar(15)|||
|last_name|Referee's last name|stores referee's last name|varchar(15)|||
|dob|Date of birth|Stores date of birth of referee|date|||
|nationality|Nationality|stores a nationality of that referee|varchar(64)||


### 7. Ranking Board / Leaderboard
|Field Name|Canonical Name|Description|Data Type|Key|Source
|--|--|--|--|--|--|
|team_rank|Team Rank|stores the rank of teams|varchar(4)||
|team_name|team name|stores the team name to be able to get that team's points|varchar(20)|FK||


### 8. Player Statistics
|Field Name|Canonical Name|Description|Data Type|Key|Source
|--|--|--|--|--|--|
|stats_id|Statistic ID|stores an id of this statistic|int(3)|PK||
|red_card|Red Card|numbers of red card that this player have received|int(2)||
|yellow_card|yellow Card|numbers of yellow card that this player have received|int(2)||
|goals|Goals|numbers of goals that this player have scored|int(4)|||
|assists|Assists|numbers of assists that this player have made|int(4)|

### 9. Goals
|Field Name|Canonical Name|Description|Data Type|Key|Source
|--|--|--|--|--|--|
|goal_id|goals ID|stores goal id|int(3)|PK|
|match_id|Match ID|stores match id|int(3)||FK|
|player_id|player ID|stores player id|int(3)||FK|
|time|minutes the goal happened in a match|stores the mins and secs the goal is scored|varchar(10)||

### 10. Stadium
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|stadium_name|stadium name|stores a name of the stadium|varchar(20)|PK||
|city|name of the city|stores the city where the stadium is placed|varchar(64)||
|capacity|Capacity of a stadium|stores how much people can the stadium be capable|int(7)||

### 11.Transfer Market
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|transaction_id|Transaction ID|stores an ID for the transaction|int(3)|PK|
|player_id|player ID|take an id of the player in the transfer market|int(3)||FK|
|last_team|player's team in the current season|take an id of this player's old team to get this team's information|varchar(20)||FK|
|new_team|player's desired team or team wants to get this player|take an id of this player's new team to get this team's information|varchar(20)||FK|


### 12. Contract
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|contract_id|contract ID|stores the |int(3)|PK||
|employer|Employer|stores the employer name for this contract|varchar(20)|||
|start_date|Starting hiring date|stores the day this contract signed|date||
|end_date|Ending hiring date|stores the day this contract finished|date||
|salary|Salary|sotres the base salary this person get for this contract|int(10)|||


### 13. Events
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|event_name|Event name|stores the name of the event|varchar(20)|PK||
|sponsor|Sponsor name|stores the name of the sponsor for this event|varchar(20)|||
|award|Award|stores the award name|varchar(128)|
|prizes|Prizes|this will stores how much money will a player receives for his prizes|int(10)|
|player_id|player ID|take an id of the player to get its information|int(3)||FK|

### 14. Stats Table
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|stats_id|Stattistic ID |takes an id of the statistic of a player|int(3)||FK|
|player_id|player ID|take an id of the player to get its information|int(3)||FK|

### 15. Training table
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|facilities_id|facilities or equipment id|takes an id of facilities or equipment of a team|int(3)||FK|
|club_name|Club Name|takes the name of the club|varchar(20)||FK|

### 16. Officiate table
|Field Name|Canonical Name|Description|Data Type|Key|Source|
|--|--|--|--|--|--|
|match_id|Match ID|Stores an ID of the match|int(4)||FK|
|referee1_id|Referees id|stores the referee information for that match|int(3)||FK|
|referee2_id|Referees id|stores the referee information for that match|int(3)||FK|
|referee3_id|Referees id|stores the referee information for that match|int(3)||FK|

# Reference
- premierleague (n.d). https://www.premierleague.com

- transfermarkt (n.d). https://www.transfermarkt.us

- Soccer: English Premier League Standings (n.d). Foxsports. https://www.foxsports.com/soccer/
premier-league/standings

- Schmahl, M. (2020). Five Attributes of Great Sports League Management Software. SquadFusion. https://squadfusion.com/five-attributes-great-sports-league-management-software/?fbclid=IwAR15eZnv0-EOavK2evwMM4c_Foo6E383vIO-YtsTcEkdFSCKRcy7r1fRhRk

- The Stadium Guide (n.d). Premier League Stadiums. https://www.stadiumguide.com/premier-league-stadiums/
