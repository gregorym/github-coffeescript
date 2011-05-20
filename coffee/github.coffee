class Github
  @API_URL = 'https://api.github.com/'
  
  @JSONP: (url, callback, params = {}) ->
    params << {per_page: 100}
    JSONP.get(@API_URL + url, params, callback)
		
class Github.v2 extends Github
  @API_URL = 'http://github.com/api/v2/json/'
	
class Github.v3 extends Github
  @API_URL = 'https://api.github.com/'