// Search
function form_submit(form) {
  var q = window.encodeURIComponent(form["q"].value);
  var url = "http://www.google.com/search?q=site:bricolsud.fr ";
  url = url + q;
  window.location = url;
  return false;
}
