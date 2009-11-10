inlets = 2;

prefix = "/box";

function anything() {
  if(inlet != 0 )
    return;

  var a = arrayfromargs(arguments);
  a.unshift(prefix + "/" + messagename);
  outlet(0, a);
}

anything.immediate = 1;

function text(new_prefix) {
  this.prefix = new_prefix;
}
