# Setting up
This section will cover downloading this repository as a zip, and then also cover downloading the programming languages XAMPP and Processing

### Download this repository by clicking "Clone or Download" and then "Download ZIP" 
  1. This will download a zip file with all the contents of this repository. Unzip it anywhere, like the Desktop.

### Download XAMPP by going to https://www.apachefriends.org/download.html then clicking on the version corresponding to your Operating System.
  (If you have windows 64bit, just download the 32bit version)

  
 1. Keep clicking the OKs and the NEXTs until it is installed.
 2. Then open the "XAMPP Control Panel" and try running the Apache module. (Under Actions, click Start on Apache's row)
 3. If it fails to start, it's likely that you're having a port conflict. To confirm this, click on "netstat" a window will pop up with a bunch of numbers.
   If you see the number 80 in the port row, you're having a port conflict.
 4. To fix this conflict, click on "Config" (on Apache's row" and then on "Apache (httpd.conf)"
 5. Notepad will open, here you're going to edit two lines.
 6. Look for this line: "ServerName localhost:80" and replace the "80" with "8012" (so that the line looks like this: "ServerName localhost:8012")
 7. Then look for this line: "Listen 80" and replace the "80" with "8012" (so that the line looks lie this: "Listen 8012")
 8. Save the file and try starting Apache from the XAMPP Control Panel. It should work this time.
 9. Optionally, you can create a shortcut to XAMPP Control Panel and adding it to the folder "Forritsmál"

### Download Processing from https://processing.org/download/?processing by clicking on the link corresponding to your Operating System.
 1. This will download a zip file with Processing. unzip it into "Forritsmál"
    
# Getting the PHP examples to work.
This section will cover how to run the PHP examples. They require a bit more work than the other examples.

  1. Copy "PHP-programmer" from the folder called "Bogens exempler i filer"
  2. Open XAMPP Control Panel. Click on "Explorer". This will open up the xampp folder.
  3. Open the folder called "htdocs" and paste "PHP-programmer" into the folder.
  4. Start/Restart Apache.
  5. To check whether this worked, open up your preferred browser and go to "localhost:8012/PHP-programmer/1udvikling/metoder3.php"
