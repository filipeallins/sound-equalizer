using vapi_alsa;

public class Equalizer : Gtk.Application {

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
    //Gtk.Label label;

    protected override void activate () {
        Gtk.ApplicationWindow window = new Gtk.ApplicationWindow (this);
        window.title = "Sound Equalizer";
        window.set_default_size (600, 300);
        window.set_border_width (10);
        
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

        /*  v_scale01.value_changed.connect (scale_moved);
        v_scale02.value_changed.connect (scale_moved);
        v_scale03.value_changed.connect (scale_moved);
        v_scale04.value_changed.connect (scale_moved);
        v_scale05.value_changed.connect (scale_moved);
        v_scale06.value_changed.connect (scale_moved);
        v_scale07.value_changed.connect (scale_moved);
        v_scale08.value_changed.connect (scale_moved);
        v_scale09.value_changed.connect (scale_moved);
        v_scale10.value_changed.connect (scale_moved);  */

        window.add (grid);

        window.show_all ();
    }

    /* Callback function for "value-changed" signal.
    * The parameter refers to the scale witch emited the signal.
    */
    //void scale_moved (Gtk.Range range) {
    //    label.set_text ("Value is %.1f".printf (v_scale.get_value ()));
    //}
}// creates and run application
public int main (string[] args) {
    return new Equalizer ().run (args);
}