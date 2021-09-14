![Labelf](https://github.com/AdamBallard/labelf.ai/blob/master/Images/Labelf_logo_horizontal_dark.png)


# 				Quick guide för Group 1 Project

##	 				Innehållsförteckning 


* Dokumentation: Vad finns vart?
* Testmiljö
* Sätta upp CI med Jenkins
* Robot Framework + Selenium
* GitHub





### 				Dokumentation: Vad finns vart?

I GitHub finner ni våra automatiserade Robot Framework test tillsammans med Jenkinsfile. Robot_WIP har varit dit all kod pushats oavsett om den anses färdig eller inte. När koden gått grönt i Jenkins och blivit checkad av kollega har den pushats till Master. 

De utforskande testfallen finns i excel-dokumentet på länken: [Testfall Grupp 1](https://ithogskolan-my.sharepoint.com/:x:/r/personal/jonna_hagberg_iths_se/_layouts/15/Doc.aspx?sourcedoc=%7B03dbe5f4-9c40-44e8-8cf0-08b4a3dabb2f%7D&action=edit&activeCell=%27Lista%20%C3%B6ver%20tester%27!K43&wdinitialsession=69a1aaa7-1edf-4e75-a1c9-d7d4442b8cbc&wdrldsc=5&wdrldc=1&wdrldr=AccessTokenExpiredWarning%2CRefreshingExpiredAccessT) De finns även här på Github i mappen Utforskande tester.

Samtliga buggar/ärenden finns dokumenterade i sin helhet på Jira: [Jira](https://jofr.atlassian.net/jira/software/projects/LT1/boards/3/roadmap)

Samtliga buggar finns dokumenterade i korthet i excel-dokumentet på länken: [Samlings dokument för buggar](https://docs.google.com/spreadsheets/d/17-tFI6LilWOn7rt_VXN7V-F64qXNBCl6ifn6tzZ0KCc/edit#gid=0)




###					Testmiljö

Samtliga testfall är utförda på staging miljön: [Stage miljö](https://stag.labelf.ai/)

Skapandet av konton sker via länken: [Registrerings länk](https://stag.labelf.ai/register/it-hogskolan)
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

#####				Skapa din pipeline - settings 


1. När du loggat in väljer du att Skapa nytt item. Namnge den, välj "Pipeline" i alternativen under och tryck OK.

2. Konfigurera pipelinen genom att checka följande boxar: 
	* GitHub Project
	* GitHub hook trigger for GITScm polling

3. Fyll i github länken under Project URL

4. Under pipeline välj definitionen - Pipeline script from SCM

5. Fyll in github repots URL igen.

6. Fyll i "Branch Specifier", vilken branch du vill bygga ifrån. I vårt fall är detta Robot_WIP. 
   Kontrollera att Script Path är Jenkinsfile - viktigt att den har samma namn som filen på github repot. 

7. Tyck på Spara.



### 				Robot Framework + Selenium

####				Installation
#####				PyCharm
* Ladda ner installationsfilen här: https://www.jetbrains.com/pycharm/download/
* Kör installeraren och följ stegen.
* Öppna programmet, klicka på Configure.
* Klicka på Plugins och skriv in IntelliBot i sökrutan.
* Välj den plugin som heter IntelliBot @SeleniumLibrary Patched och klicka på Install.
* Installera även de plugins som heter Robot Framework Support och Run Robot FrameWork TestCase.
* Starta om PyCharm.
#####				Python

* OBS! Det finns inte längre support för Python 2, du ska därför använda Python 3.
* Om du redan har Python 3 installerat på datorn kan du hoppa över dessa steg.
* Om du inte redan har Python 3 ska du börja med att skapa en mapp som heter Python i din hemmapp:
  exempel C:\Users\user\Python\
* Ladda ner senaste versionen av Python 3 här: https://www.python.org/downloads/
* Kör installeraren och följ stegen. Ange den nyligen skapade Python-mappen när du under
  installationen (Advanced Options) får frågan var du vill spara programmet.
* Lägg till sökvägen till mappen och till undermappen Scripts som miljövariabler i din PATH:
  exempel C:\Users\user\Python\
  exempel C:\Users\user\Python\Scripts\
* Öppna en kommandotolk och kör följande kommando:
  python --version
* Om programmet har installerats korrekt får du ett resultat som liknar detta (beroende på
  vilken version du installerade):
  Python 3.8.1
  Robot Framework
* Ladda ner Robot Framework via kommandotolken med följande kommando:
  pip install robotframework
* Om du får felmeddelandet “‘pip’ is not recognized as an internal or external command” finns
  en manual här. Annars går du vidare till nästa steg.
* Robot Framework kommer nu installeras på samma plats som Python. Du behöver därför
  inte lägga till någon miljövariabel eftersom du redan lagt till de sökvägar som behövs när du
  installerade Python.
* Kontrollera att programmet har installerats med hjälp av följande kommando:
  robot --version
* Om programmet har installerats korrekt får du ett resultat som liknar detta (beroende på
  vilken version du installerade):
  Robot Framework 3.1.2 (Python 3.8.1 on win32)
* Installera Seleniumbiblioteket för Robot Framework. OBS! Installera INTE biblioteket med
  namnet Selenium2Library då det har fasats ut. Använd följande kommando i
  kommandotolken:
  pip install robotframework-seleniumlibrary
  
  
#####				Webdriver
* Skapa en mapp som heter Webdriver i din hemmapp:
  exempel C:\Users\user\Webdriver\
* Öppna Chrome och kontrollera din version genom att gå till följande sida:
  chrome://settings/help
* Ladda ner webdriver till den Chrome-version du använder på följande webbsida:
  https://chromedriver.chromium.org/downloads
* OBS! Du måste först packa upp filen och sedan spara den i Webdriver-mappen.
* Lägg till sökvägen till mappen som miljövariabel i din PATH:
  exempel C:\Users\user\Webdriver\

####				Setup PyCharm Continuous Integration

* Starta ett nytt project 
* Klicka på VCS i navigationsraden högst upp och välja "Get from Version Control"
* Fyll i Repository URL
* Välj Lokal plats & klicka "Clone"


### 				GitHub


####				Branches

Syftet med Master branchen är slutstation för samtliga filer. Filer som blivit granskade och anses vara förtillfället färdiga. 

Robot_WIP har fungerat som ett mellan stop för icke-kontrollerad eller pågående arbete. Där alla kan tillgå varandras aktuella arbetsuppgifter.



####				Filer & Mappar

* Robot
	Innehåller samtliga filer relevanta för automatiserade tester.
	1) Tests     - Testfallen
	2) Resourses - Keywords filer

* Utforskande tester 
	Innehåller information om samtliga testfall & mer detailerad information om utförda utforskande tester.

* Jenkinsfile
	Script för pipeline till Jenkins

* .gitignore
	Filer som vår git inte ska klona ifrån våra commits. 
	Vi har valt Results filen som skapas vid PyCharm exkivering

* README.md 
	Samtlig relevant information för någon som ska ta över projektet.




