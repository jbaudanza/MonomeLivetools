inlets = 2;

prefix = "/box";

function anything() {
  if(inlet != 0 )
    return;

  var matcher = prefix + "/";
  var i = messagename.indexOf(matcher);

  if( i == 0 ) {
    var a = arrayfromargs(arguments);
    a.unshift(messagename.substring(matcher.length));
    outlet(0, a);
  }
}
anything.immediate = 1;

function text(new_prefix) {
  this.prefix = new_prefix;
}
