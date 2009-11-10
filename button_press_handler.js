outlets = 2;

function list(x,y,position)
{
  // Pay attention to when the button is pressed.  Ignore when it is released
  if(position != 1 )
      return;

   // The first outlet is for normal fire events.  The second outlet is for stop events
   if( y == 7 ) {
     outlet(1, x);
   } else {
     outlet(0, [x,y]);
   }
}
list.immediate = 1;
