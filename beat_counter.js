var value = 0;

var bpm = 90;

var task = new Task(next, this);

var inlets = 4;

var output_enabled = true;

function next() {
  value = (value += 1) % 8;
  if(this.output_enabled) {
      output_value();
  }
}

function output_value() {
  output_bitmask(1 << value);
}

function output_bitmask(bitmask) {
  outlet(0, ["/mlr/led_row", jsarguments[1], bitmask]);
}

function msg_float(new_value) {
  if(inlet == 0) {
    this.value = new_value;
    bang();
  } else if(inlet == 1) {
    this.clip_slot = new_value;
  } else if( inlet == 2 ) {
    this.playing_clip_slot = new_value;
  } else if( inlet == 3 ) {
    this.transport_playing = new_value;
  }

  if( inlet == 2 || inlet == 3 ) {
    if(this.output_enabled) {
      if( this.playing_clip_slot != this.clip_slot || this.transport_playing != 1 ) {
        this.output_enabled = false;
        output_bitmask(0);  
      }
    } else {
      if( this.playing_clip_slot == this.clip_slot && this.transport_playing == 1 ) {
        this.output_enabled = true;
      }
    }
  }
}

msg_float.immediate = 1;

msg_int = msg_float;

function bang() {
  i = 60/bpm * 1000;
  task.interval = i;
  task.repeat(99, i);
  this.output_enabled = true;
  output_value();
}

function stop() {
  task.cancel();
  output_bitmask(0);
}
