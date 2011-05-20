class User
  constructor: (@login) ->    

  show: (callback) ->
    Github.JSONP("users/#{@login}", callback)
    
  followers: (callback) ->
    Github.JSONP("users/#{@login}/followers", callback)

  following: (callback) ->
    Github.JSONP("users/#{@login}/following", callback)

  watched_repos: (callback) ->
    Github.v2.JSONP("repos/watched/#{@login}", callback)

  @search: (term, callback) ->
    Github.v2.JSONP("user/search/#{term}", callback)