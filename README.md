# Cricket-World-Cup-Management-System
A GUI based Cricket world cup management system which has admin and user access to support adding, deleting, updating and retrieving the world cup data.
README FILE FOR  GUI


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

Step 1: Download all files in this repo or clone the repo. 

Step 2 : Open Visual Studio.

Step 3: Click on Open folder.
![image](https://user-images.githubusercontent.com/59958031/173370580-4f672d31-d8b4-402b-a1ae-95540d7f4f96.png)

Step 4: Select the GUI folder inside the folder that you got after extracting downloaded zip file.
 ![image](https://user-images.githubusercontent.com/59958031/173370958-bf223267-3c62-436a-998f-84750cc56334.png)

 
Step 5: Search final2.py file and open it.
![image](https://user-images.githubusercontent.com/59958031/173370988-054e77cd-aec9-4a81-a796-aa415ed99271.png)

 
Step 6: Run the code (as shown below).
 ![image](https://user-images.githubusercontent.com/59958031/173371006-63d5ec87-d1f6-435b-bdbb-b6e82e187dac.png)


Step 7 : The following window will open. Icons may or may not be displayed.
 ![image](https://user-images.githubusercontent.com/59958031/173371037-c8010572-afb1-4156-86b6-bb07b49888bf.png)


1.USER (Get information about World cup teams, players, matches etc)

1.1 : To get Teams information go to Teams tab

•	If you are a normal user you can get all details about Worldcup in the USER tab. 
 ![image](https://user-images.githubusercontent.com/59958031/173371079-b95985ce-0482-49fc-b816-6c647bb42d33.png)

•	You can click on each team icon to get that particular team details.
 ![image](https://user-images.githubusercontent.com/59958031/173371210-9b1f3fd9-47a9-48d8-9d73-c2b7ec21f7b2.png)

•	You can click on All teams to get info of all teams.
 ![image](https://user-images.githubusercontent.com/59958031/173371244-e33dee15-2e5e-43a7-85c3-2391105cbeda.png)


1.2 : To get player info open Player tab

•	In player tab you can enter team Id and get all players by clicking All players,
Batsmen and Bowlers of a particular team.
 ![image](https://user-images.githubusercontent.com/59958031/173371267-7aa8b0d4-e8d3-4602-b0f2-c3677013fdf0.png)

![image](https://user-images.githubusercontent.com/59958031/173371299-a2bd32f3-c409-4a0a-b0ea-d136b1d8b39f.png)

 ![image](https://user-images.githubusercontent.com/59958031/173371323-9f24201e-c605-4f22-96d4-651f2e0fba3d.png)

 

•	Get details of your favourite player by searching his name .
 ![image](https://user-images.githubusercontent.com/59958031/173371370-24b259d9-5e0d-47a2-92ad-56d91cd702f2.png)

•	Get Top 10 batsmen of the tournament by clicking top 10 batsmen button.
 ![image](https://user-images.githubusercontent.com/59958031/173371395-4b4cb9d9-c814-4251-98bf-0809c6ddbe64.png)

•	Top 10 bowlers of the tournament by clicking top 10 batsmen button.
![image](https://user-images.githubusercontent.com/59958031/173371424-73fe65e2-3b10-4df8-a17c-8b201b6c77fa.png)

 

1.3 : To get info about matches open Matches tab

•	Get info of all matches by clicking display all matches.
 ![image](https://user-images.githubusercontent.com/59958031/173371459-2fe35204-351d-46f7-b0ac-1c2e931992f3.png)

•	Search your favorite team to check the information of matches and its result.
 ![image](https://user-images.githubusercontent.com/59958031/173371481-cfd39c60-3633-4640-82ac-a00ce96a4120.png)

•	Get match details of a specific date.
 ![image](https://user-images.githubusercontent.com/59958031/173371502-96e75e8b-b51a-4ff5-b02d-7f12a0c012f6.png)



1.4 :  To get captain, stadiums, coaches, umpires info open Other Info tab

•	click Display all captains  to get info of captains of all teams.
 ![image](https://user-images.githubusercontent.com/59958031/173371566-ea57e99a-de68-4355-8f54-5a6a28007ce0.png)

•	Click Display all coaches to get all coaches info.
 ![image](https://user-images.githubusercontent.com/59958031/173371587-e06e1c72-2135-4f97-8075-5c76d061832f.png)


•	Click Display umpire mapping to matches to get umpires allocated to all matches.
 ![image](https://user-images.githubusercontent.com/59958031/173371605-26d796e2-4af0-4279-8cdf-da23711aa7a0.png)

•	Click Display all umpires to get all umpire’s info.
 ![image](https://user-images.githubusercontent.com/59958031/173371645-24b8b681-7a1f-403a-b717-a9204f2b25f4.png)

•	Click Display all Stadiums to get all stadiums info where worldcup matches are going to occur.
 ![image](https://user-images.githubusercontent.com/59958031/173371664-455e2241-328f-497a-ad16-93c4a8ee7c68.png)



2.ADMIN

•	If you are admin enter your username(vikram) and password( vikky625 ) and click Login. 

•	Another window will open where all the admin activities can be done.
 ![image](https://user-images.githubusercontent.com/59958031/173371757-c9bf58f5-721b-42c4-85e9-17773857a864.png)


2.1 :  To schedule matches and update result go to SCHEDULE MATCHES tab

•	To schedule a match enter Team ids of both teams ,the date and time of match ,it’s venue(stadium) and 3 umpires who will umpire the matches

•	Then click schedule. A confirmation message is displayed with match number
Click ok.
 ![image](https://user-images.githubusercontent.com/59958031/173372033-2ae4c40c-e112-417b-9321-68104e29e925.png)

 
•	To reschedule a match enter Match ID and date and time and click reschedule.
 ![image](https://user-images.githubusercontent.com/59958031/173372082-3b2bbfc8-1fca-4238-b8e7-ba54fc9b36dd.png)

•	To cancel the match enter Match ID and click cancel. 
 ![image](https://user-images.githubusercontent.com/59958031/173372138-d4f47891-a0dc-4f0b-a710-e65c7918fdee.png)


•	To update the result of a match enter it’s match ID if it is draw click on update match draw button. Otherwise enter winner team ID . Select whether they won match by wickets or runs select respective button.

•	Enter number of wickets or runs in Won by wickets or runs.

•	Click update. The result will be updated.
![image](https://user-images.githubusercontent.com/59958031/173372204-c19e8332-400e-4a72-9c21-9b2a29dd982d.png)



 
2.2 : To disqualify a player or a team go to Go to DISQUALIFY tab

•	Enter Player ID and click Go (that player will be disqualified).
 ![image](https://user-images.githubusercontent.com/59958031/173372302-c365f7a9-f1a2-458e-8484-19243481ce7a.png)

•	Enter Team ID and click Go (that team will be disqualified).
 ![image](https://user-images.githubusercontent.com/59958031/173372340-8e3e19d9-5436-4919-9b7a-ede093b00f9f.png)




2.3 : To add, update or delete  teams or players go to MODIFYDATA1 tab

•	To add to, update or delete data from database.

•	Enter the new values of new record to be added and click insert.

•	A message box will be displayerd and your data will be saved.
![image](https://user-images.githubusercontent.com/59958031/173372426-68144040-e1bd-4037-9d7b-77e2271c857c.png)


•	You can also update any table data by entering updated values and click update.
![image](https://user-images.githubusercontent.com/59958031/173372476-28ca6654-0bf8-4b14-98e5-fc67afbc93ee.png)

 

•	To delete a team Enter a TeamID and click delete.


•	A message box will be displayed and your data will be deleted.
 ![image](https://user-images.githubusercontent.com/59958031/173372543-74de8588-60a3-47d2-96d9-a00809127d1e.png)

Like this batsmen,  bowlers data can also be added modified or deleted.

2.4 : To add, update or delete captains, coaches, umpire, stadium go to MODIFYDAT2 tab
•	Here captains, stadiums, coaches, umpire data can be added modified or deleted like same way you have done while adding, deleting, updating Team data in previous tab.
