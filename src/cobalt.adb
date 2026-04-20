with Sf.Graphics;
with Sf.Graphics.RenderWindow;
with Sf.Graphics.CircleShape;
with Sf.Graphics.Color;
with Sf.Window.Event;
with Sf.Window.VideoMode;

procedure Cobalt is

   use Sf.Graphics;
   use Sf.Graphics.RenderWindow;
   use Sf.Graphics.CircleShape;
   use Sf.Window.VideoMode;
   use Sf.Window.Event;

   Window : sfRenderWindow_Ptr :=
      create ((800, 600, 32), "We're gonna do it");

   Shape : sfCircleShape_Ptr := create;
   Event : sfEvent;

begin
   setRadius (Shape, 50.0);
   setFillColor (Shape, Sf.Graphics.Color.sfGreen);
   setPosition (Shape, (100.0, 100.0));

   while isOpen (Window) loop

      while pollEvent (Window, Event) loop
         if Event.eventType = sfEvtClosed then
            close (Window);
         end if;
      end loop;

      clear (Window, Sf.Graphics.Color.sfBlack);
      drawCircleShape (Window, Shape);
      display (Window);

   end loop;

   destroy (Shape);
   destroy (Window);

end Cobalt;