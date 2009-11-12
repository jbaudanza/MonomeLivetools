inlets = 2;

var current_bit = 1;
var bitmask = 0;

// This will get called once for each clip_slot in a track.  We are assuming
// this gets called in the order from top clip to bottom clip. 
function msg_int(has_clip) {
  if( has_clip == 1 ) {
    bitmask |= current_bit;
  }
  current_bit <<= 1;

  outlet(0,bitmask);
}

// Rest the bitmask to zero
function bang() {
  bitmask = 0;
  current_bit = 1;
}

msg_int.immediate = 1;