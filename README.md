# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
	
	2.3.1

* System dependencies
	
	gem 'geokit-rails'
	
	gem 'acts_as_geocodable'
	
	gem 'mysql2'
	
	gem 'jdbc-mysql'

	gem 'thinking-sphinx'

* Prepare
	
	run below commands to create database and index file of sphinx search engin 

	`rake db:create db:migrate`
	
	`rake ts:index`
	
	`rake ts:start`

* How to run the test suite
	
	`rails console`
	
	- create location data and add them into database on `rails console` command line. 

		`location = Location.create(name: "Zürich", latitude: 47.3769, longitude: 8.54169)`
		
		`location.save`


		`location = Location.create(name: "Löwenstrasse", latitude: 47.377, longitude: 8.538)`

		`location.save`


		`location = Location.create(name: "Reitergasse 11", latitude: 47.3771, longitude: 8.53347)`

		`location.save`

		...


	- search data with keywords

		`Location.search`

		`Location.search "keyword"`


	- search location data with latitude, longitude, distance.

		`Location.within(5, :origin => [47.3769, 8.54169])`


* References

	https://github.com/pat/thinking-sphinx

	http://freelancing-gods.com/thinking-sphinx

	http://freelancing-gods.com/thinking-sphinx/geosearching.html

	https://github.com/geokit/geokit-rails

	https://github.com/collectiveidea/acts_as_geocodable

