<!-- 


    ADO Database Connection
Before a database can be accessed from a web page, a database connection has to be established.

Create a DSN-less Database Connection
The easiest way to connect to a database is to use a DSN-less connection. A DSN-less connection can be used against any Microsoft Access database on your web site.

If you have a database called "northwind.mdb" located in a web directory like "c:/webdata/", you can connect to the database with the following ASP code:

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open "c:/webdata/northwind.mdb"
%>
Note, from the example above, that you have to specify the Microsoft Access database driver (Provider) and the physical path to the database on your computer.

Create an ODBC Database Connection
If you have an ODBC database called "northwind" you can connect to the database with the following ASP code:

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Open "northwind"
%>
With an ODBC connection, you can connect to any database, on any computer in your network, as long as an ODBC connection is available.

An ODBC Connection to an MS Access Database
Here is how to create a connection to a MS Access Database: 

Open the ODBC icon in your Control Panel.
Choose the System DSN tab.
Click on Add in the System DSN tab.
Select the Microsoft Access Driver. Click Finish.
In the next screen, click Select to locate the database.
Give the database a Data Source Name (DSN).
Click OK.
Note that this configuration has to be done on the computer where your web site is located. If you are running Personal Web Server (PWS) or Internet Information Server (IIS) on your own computer, the instructions above will work, but if your web site is located on a remote server, you have to have physical access to that server, or ask your web host to do this for you. 

The ADO Connection Object
The ADO Connection object is used to create an open connection to a data source. Through this connection, you can access and manipulate a database.

View all methods and properties of the Connection object.

-->