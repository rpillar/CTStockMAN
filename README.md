# CTStockMAN

A multi-channel store-front management application.

Currently only being developed for Ebay shops but the intention is that it will provide the means to integrate / aggregate data from different storefront providers (Ebay / Amazon / Shopify / Etsy ...). 

Load the following packages :-

```
Metacello new
 baseline:'Seaside3';
 repository: 'github://SeasideSt/Seaside:master/repository';
 load
```
```
Metacello new 
    smalltalkhubUser: 'TorstenBergmann' project: 'UDBC2';
    configuration: 'UDBC';
    version: #bleedingEdge;
    load.
```
```
Metacello new
	baseline: 'XMLParser';
	repository: 'github://pharo-contributions/XML-XMLParser/src';
	load.
```
```
Metacello new 
    repository: 'github://pharo-contributions/Scheduler/src';
    baseline: 'Scheduler';
    load
```
```
Gofer it
   smalltalkhubUser: 'SvenVanCaekenberghe' project: 'Neo';
   configurationOf: 'NeoJSON';
   loadStable.
```
Add the `CTDBx` / `CTPlotly` / `CTeBayAPI` packages from Git using the Monticello Browser.

Having added the UDBC2 library you will need to update the Pharo settings -> Database / SQLite / <path to the sqlite shared lib>. Note that on MacOS the path will look something like :-
```
/Users/<username>/Documents/Pharo/images/<pharo image name/libsqlite3
```
where `libsqlite3` is a soft link to the sqlite3 shared library.

Also update the `CTStockMANSession>>initialize` method so that the `dbConnection` variable points to your database file.

Finally as the Materialize library makes use of the `italic` tag you will need to add the apporpriate brush - see this page for details :- http://developontheweb.co.uk/seaside.html
						
Create the SQLite database using `db.sql` and -> 
- add a user -> `insert into users (userName, password) values('testuser', 'password');`
- add a default channel -> `insert into channel (channelName,status,userName) values('EBay','Active','testuser');`

Initialize the CTStockMAN / CTPlotly applications :-
```
CTPlotlyDemo initialize.
```
```
CTStockMANRootTask initialize.
```
Then update the app Session class to `CTSockMANSession` - in config.

## Windows install

I have had issues when installing Seaside into an image running on Windows 10. After searching for possible solutions this seemed to work - when you create your Pharo image from the Launcher make sure that the image name has no spaces - for example `pharo_test_1` rather than `pharo test 1`. 

### Update

Following some testing (in addition to the above) I found that a simple solution was to load the Boardwalk package (extensions on top of Seaside) - this pulled in a compatible version of Seaside.
```
Metacello new
	baseline: 'Boardwalk';
	repository: 'github://ba-st/Boardwalk:v6/source';
	load.
```

