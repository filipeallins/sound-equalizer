public class Sound_Equalizer.Equalizer_GUI : Gtk.ApplicationWindow {
    
    public Equalizer_GUI (Equalizer app) {
        Object (
            application: app
        );
    }


    Gtk.Scale v_scale01;
    Gtk.Scale v_scale02;
    Gtk.Scale v_scale03;
    Gtk.Scale v_scale04;
    Gtk.Scale v_scale05;
    Gtk.Scale v_scale06;
    Gtk.Scale v_scale07;
    Gtk.Scale v_scale08;
    Gtk.Scale v_scale09;
    Gtk.Scale v_scale10;

    construct {
        title = "Sound Equalizer";
        set_default_size (600, 300);
        set_border_width (10);
        
        v_scale01 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale01.set_vexpand(true);
        v_scale01.set_inverted(true);
        v_scale02 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale02.set_vexpand(true);
        v_scale02.set_inverted(true);
        v_scale03 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale03.set_vexpand(true);
        v_scale03.set_inverted(true);
        v_scale04 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale04.set_vexpand(true);
        v_scale04.set_inverted(true);
        v_scale05 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale05.set_vexpand(true);
        v_scale05.set_inverted(true);
        v_scale06 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale06.set_vexpand(true);
        v_scale06.set_inverted(true);
        v_scale07 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale07.set_vexpand(true);
        v_scale07.set_inverted(true);
        v_scale08 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale08.set_vexpand(true);
        v_scale08.set_inverted(true);
        v_scale09 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale09.set_vexpand(true);
        v_scale09.set_inverted(true);
        v_scale10 = new Gtk.Scale (Gtk.Orientation.VERTICAL, new Gtk.Adjustment (6.0, 0.0, 12.0, 0.0, 0.0, 0.0));
        v_scale10.set_vexpand(true);
        v_scale10.set_inverted(true);

        Gtk.Grid grid = new Gtk.Grid ();
        grid.set_column_spacing (5); // space between columns
        grid.set_column_homogeneous (true); // all columns same width
        grid.attach (v_scale01, 0, 0, 1, 1);
        grid.attach_next_to (v_scale02, v_scale01, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale03, v_scale02, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale04, v_scale03, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale05, v_scale04, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale06, v_scale05, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale07, v_scale06, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale08, v_scale07, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale09, v_scale08, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach_next_to (v_scale10, v_scale09, Gtk.PositionType.RIGHT, 1, 1);

        add (grid);

        show_all ();
    }
}