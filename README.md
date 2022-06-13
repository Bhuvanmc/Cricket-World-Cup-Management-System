# Cricket-World-Cup-Management-System
A GUI based Cricket world cup management system which has admin and user access to support adding, deleting, updating and retrieving the world cup data.
README FILE FOR  GUI
Team Number: 4		
USN	ROLL NO	NAME
01FE19BCS275	509	Bhuavn M C
01FE19BCS279	512	Shreehari T Alagawadi
01FE19BCS304	534	Raghavendra A Hallyal
01FE19BCS290	522	Supriya Khemalapure

PREREQUISITES :
1.	DB BROWSER(SQLITE) AND CREATE TABLES .
https://download.sqlitebrowser.org/DB.Browser.for.SQLite-3.12.2-win64.msi
2.	INSTALLED  PYTHON
3.	INSTALLED VSCODE EDITOR
4.	SQLITE PACKAGES CONNECTING VISUAL STUDIO (MY CASE)
https://www.sqlite.org/2021/sqlite-tools-win32-x86-3350500.zip
5.	QT5 DESIGNER (FOR DESIGNING GUI )	
https://build-system.fman.io/qt-designer-download

STEPS TO BE FOLLOWED:
Step 1: Extract the given zip folder. 
Step 2 : Open Visual Studio.
Step 3: Click on Open folder.
 
Step 4: Select the GUI folder inside the folder that you got after extracting given zip file.
 
Step 5: Search final2.py file and open it.

 
Step 6: Run the code (as shown below).
 

Step 7 : The following window will open. Icons may or may not be displayed.
 

1.USER (Get information about World cup teams, players, matches etc)
1.1 : To get Teams information go to Teams tab
•	If you are a normal user you can get all details about Worldcup in the USER tab. 
 
•	You can click on each team icon to get that particular team details.
 
•	You can click on All teams to get info of all teams.
 

1.2 : To get player info open Player tab
•	In player tab you can enter team Id and get all players by clicking All players,
Batsmen and Bowlers of a particular team.
 
 
 

•	Get details of your favourite player by searching his name .
 
•	Get Top 10 batsmen of the tournament by clicking top 10 batsmen button.
 
•	Top 10 bowlers of the tournament by clicking top 10 batsmen button.

 

1.3 : To get info about matches open Matches tab

•	Get info of all matches by clicking display all matches.
 
•	Search your favorite team to check the information of matches and its result.
 
•	Get match details of a specific date.
 


1.4 :  To get captain, stadiums, coaches, umpires info open Other Info tab

•	click Display all captains  to get info of captains of all teams.
 
•	Click Display all coaches to get all coaches info.
 

•	Click Display umpire mapping to matches to get umpires allocated to all matches.
 
•	Click Display all umpires to get all umpire’s info.
 
•	Click Display all Stadiums to get all stadiums info where worldcup matches are going to occur.
 


2.ADMIN
•	If you are admin enter your username(vikram) and password( vikky625 ) and click Login. 
•	Another window will open where all the admin activities can be done.
 

2.1 :  To schedule matches and update result go to SCHEDULE MATCHES tab
•	To schedule a match enter Team ids of both teams ,the date and time of match ,it’s venue(stadium) and 3 umpires who will umpire the matches
•	Then click schedule. A confirmation message is displayed with match number
Click ok.

 
•	To reschedule a match enter Match ID and date and time and click reschedule.
 
•	To cancel the match enter Match ID and click cancel. 
 

•	To update the result of a match enter it’s match ID if it is draw click on update match draw button. Otherwise enter winner team ID . Select whether they won match by wickets or runs select respective button.
•	Enter number of wickets or runs in Won by wickets or runs.
•	Click update. The result will be updated.


 
2.2 : To disqualify a player or a team go to Go to DISQUALIFY tab
•	Enter Player ID and click Go (that player will be disqualified).
 
•	Enter Team ID and click Go (that team will be disqualified).
 



2.3 : To add, update or delete  teams or players go to MODIFYDATA1 tab

•	To add to, update or delete data from database.
•	Enter the new values of new record to be added and click insert.
•	A message box will be displayerd and your data will be saved.

 
•	You can also update any table data by entering updated values and click update.

 

•	To delete a team Enter a TeamID and click delete.
•	A message box will be displayed and your data will be deleted.
 

Like this batsmen,  bowlers data can also be added modified or deleted.

2.4 : To add, update or delete captains, coaches, umpire, stadium go to MODIFYDAT2 tab
•	Here captains, stadiums, coaches, umpire data can be added modified or deleted like same way you have done while adding, deleting, updating Team data in previous tab.
