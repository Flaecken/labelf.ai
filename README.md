# 				Quick guide för Group 1 Project

##	 				Innehållsförteckning 


* Dokumentation: Vad finns vart?
* Testmiljö
* Sätta upp CI med Jenkins
* Robot Framework + Selenium
* GitHub





### 				Dokumentation: Vad finns vart?

I GitHub finner ni våra automatiserade Robot Framework test tillsammans med Jenkinsfile. Robot_WIP har varit dit all kod pushats oavsett om den anses färdig eller inte. När koden gått grönt i Jenkins och blivit checkad av kollega har den pushats till Master. 

De utforskande testfallen finns i excel-dokumentet på länken:[Testfall Grupp 1](https://ithogskolan-my.sharepoint.com/:x:/r/personal/jonna_hagberg_iths_se/_layouts/15/Doc.aspx?sourcedoc=%7B03dbe5f4-9c40-44e8-8cf0-08b4a3dabb2f%7D&action=edit&activeCell=%27Lista%20%C3%B6ver%20tester%27!K43&wdinitialsession=69a1aaa7-1edf-4e75-a1c9-d7d4442b8cbc&wdrldsc=5&wdrldc=1&wdrldr=AccessTokenExpiredWarning%2CRefreshingExpiredAccessT)

Samtliga buggar/ärenden finns dokumenterade i sin helhet på Jira:[Jira](https://jofr.atlassian.net/jira/software/projects/LT1/boards/3/roadmap)

Samtliga buggar finns dokumenterade i korthet i excel-dokumentet på länken: [Samlings dokument för buggar](https://docs.google.com/spreadsheets/d/17-tFI6LilWOn7rt_VXN7V-F64qXNBCl6ifn6tzZ0KCc/edit#gid=0)




###					Testmiljö

Samtliga testfall är utförda på staging miljön:[Stage miljö](https://stag.labelf.ai/)

Skapandet av konton sker via länken:[Registrerings länk](https://stag.labelf.ai/register/it-hogskolan)
Länken angavs av Labelf - Kontakta kund för åtkomst. 



### 				Sätta upp CI med Jenkins

Med hjälp av Jenkins kan man köra samtliga testfall vid varje commit till ex. gitHub. 


#### 				Jenkins installation 


Det finns flera sätt att köra Jenkins. Nedan redgörs för hur man startar systemet genom att som
vanlig användare köra en så kallad WAR-fil. WAR står för Web application archive och en fil av den
typen innehåller de kompilerade javaklasser som utgör en webapplikation. I filen finns förutom själva
Jenkins också en så kallad servlet container och därmed allt som behövs för att köra systemet.
1. Ladda ner filen jenkins.war från https://jenkins.io/download/ (klicka inte på Download utan
leta efter Generic Java Package under LTS)
2. Starta ett skal eller en kommandotolk och ställ dig i samma katalog som filen jenkins.war
ligger i
3. Starta Jenkins med kommandot java –jar jenkins.war --httpPort=8080
(i) Siffran 8080 är den port som servern i vilken Jenkins kör skall lyssna på. Modifiera
kommandot efter eget tycke om du redan har en server som lyssnar på port 8080
eller av någon annan anledning vill bruka en annan port.
4. Starta en webläsare och navigera till adressen 127.0.0.1:8080
(i) Ersätt 8080 med rätt port om du startade Jenkins på någon annan port.
(ii) 127.0.0.1 är den så kallade loopback-adressen som alltid avser den lokala datorn.
Den lokala datorn är också åtkomlig genom namnet localhost.
5. Följ instruktionerna som visas
(i) Första gången Jenkins startas kommer den be om ett lösenord. Detta lösenord finns
sparat i en fil på den lokala datorn och Jenkins talar om dess sökväg.
(ii) Tacka ja till att installera föreslagna plugins
6. Notera att Jenkins skapar en katalog, .jenkins, i vilken systemet sparar konfiguration av sig
själv och jobb, plugins samt resultat av varje bygge.


När du loggat in väljer du att Skapa nytt item. Namnge den och välj Pipeline och tryck OK.

Konfigurera pipelinen genom att checka följande boxar: 
* GitHub Project
* GitHub hook trigger for GITScm polling

Fyll i github länken under Project URL

Under pipeline välj definitionen - Pipeline script from SCM

Fyll in github repots URL igen.

Fyll i "Branch Specifier", vilken branch du vill bygga ifrån. I vårt fall är detta Robot_WIP. 

Kontrollera att Script Path är Jenkinsfile - viktigt att den har samma namn som filen på github repot. 

Tyck på Spara.

Nu är din Pipeline färdig. 



### 				Robot Framework + Selenium



### 				GitHub

