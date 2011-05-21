class Repository
  constructor: (@login, @repo = "") ->
    @has_repo = -> if @repo == "" then false else true

  show: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}", callback)
    else
      "Repo required"   

  all: (callback) ->
    Github.v2.JSONP("repos/show/#{@login}", callback)

  collaborators: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/collaborators", callback)
    else
      "Repo required"

  contributors: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/contributors/anon", callback)
    else
      "Repo required"
      
  github_contributors: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/contributors", callback)
    else
      "Repo required"
      
  watchers: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/watchers", callback)
    else
      "Repo required"
      
  detailed_watchers: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/watchers", callback, {full: 1})
    else
      "Repo required"
      
  forks: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/network", callback)
    else
      "Repo required"
      
  tags: (callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/tags", callback)
    else
      "Repo required"
      
  languages: (login, repo, callback) ->
    if do @has_repo
      Github.v2.JSONP("repos/show/#{@login}/#{@repo}/languages", callback)
    else
      "Repo required"
      
  @search: (term, callback) ->
    Github.v2.JSONP("repos/search/#{term}", callback)