function compileURI(uri, options)
{
  if (options && options.params)
  {
    var parameters = [];
    for (key in options.params)
    {
      var value = options.params[key];
      if (value != null)
        parameters.push(encodeURIComponent(key) + "=" + encodeURIComponent(value));
    }
    parameters = parameters.join("&");
    if (parameters != "")
      uri += "?" + parameters
  }
  return uri;
}


function request(method, uri, options, data, f)
{
  var request = new XMLHttpRequest();

  request.onreadystatechange = function()
  {
    if (request.readyState == 4)
      f(request.status, request.responseText);
  };
  request.open(method, compileURI(uri, options), true);
  request.send(data);
}


function reverse(s)
{
  request("GET", "/api/v0/reverse", { params: { "w": s }}, null,
    function(status, text) { document.getElementById("reversed").innerHTML = text; });
}

