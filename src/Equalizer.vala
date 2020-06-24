public class Equalizer : Gtk.Application {

    public Equalizer () {
        Object (
            application_id: "com.github.filipeallcode.sound-equalizer",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var window = new Sound_Equalizer.Equalizer_GUI (this);

        add_window (window);
    }

}