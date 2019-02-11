**`Technologies`**: Java 8, Spring (MVC, Data), Hibernate, Bootstrap, Javascript, Junit

**Import project:**
-choose folder where project will be
-cd ~/folderZprojektami/ // use your own localization <br>
-open terminal<br>
- git init <br>
- git clone <br>

Open IntelliJ <br>
->File->New->Project from existing sources<br>

Find folder with project, choose and click **"OK"**<br>

Choose Maven project option

If you succesfully import project you have to setup Tomcat

<b>In main window</b>

Run->Edit configurations->click "+"->Tomcat->Local->Fix->projectname:war exploded

Then change Application Context field to only "/".
 
 Go to "Server" and change both "On 'Update' action" and "On frame deactivation" to -> Update classes and resources
 
 And click "OK"
 
 Now you can run whole project
 
 <b>Now you have to add Database</b>
 
 In the right side of main window click "Database" ->"+"->Data Source->MySQL->and select file Checkout.sql 
 
 <b>Short description</b>
 
I'm using Javascript to change quantity of product. Client can input number of product in field. 
I hope I predict every option. I just blocked possibility to input letters, special signs etc
 so customer can only input numbers from 0 to 9.
 
 If customer input 0, then we only have position in basket but 0 quantity.
 
 Then I write simple script that changes link behind "Dodaj do koszyka" button according to input from quantity field.
 
 In basket we can add one item of each product by clicking "Dodaj", or delete position by clicking "Delete"
 
 I add some test, but I can't resolve why "mvn -q test" send me an error. If you run test manually everything is okay.
 
 
 Total price, number of positions and number of products in basket are changing dynamically-thats how I resolve the problem "Close basket at any time and return the total price of a number of items."
 
 <b>The most important files in this project:</b>
 
 -persistence.xml - configuration of connect with database
 
 -AppConfig-configuration file
 
 -AppInitializer- initialization file of our project
 
 -pom.xml - here we have all dependencies for maven
 
 
 