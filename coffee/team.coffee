class Team
	constructor: (@team) ->
	
	show: (callback) ->
		Github.v2.JSONP("teams/#{@team}", callback)

	members: (callback) ->
		Github.v2.JSONP("teams/#{@team}/members", callback)

	repositories: (callback) ->
		Github.v2.JSONP("teams/#{@team}/repositories", callback)