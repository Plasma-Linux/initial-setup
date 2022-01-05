// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/*-
 * Copyright (c) 2016 elementary LLC. (https://elementary.io)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Authored by: Corentin Noël <corentin@elementary.io>
 */

namespace Granite {
    public const string STYLE_CLASS_WARNING = "warning";
    public const string STYLE_CLASS_VIEW = "view";

    public class HeaderLabel : Gtk.Box {
        public HeaderLabel (string label) {
            var label_widget = new Gtk.Label (label);
            label_widget.add_css_class (Granite.STYLE_CLASS_H4_LABEL);

            append (label_widget);
            halign = Gtk.Align.START;
        }
    }
}

public class Installer.App : Gtk.Application {
    construct {
        application_id = "io.elementary.installer";
        flags = ApplicationFlags.FLAGS_NONE;
        Intl.setlocale (LocaleCategory.ALL, "");
    }

    public override void activate () {
        var window = new MainWindow ();
        window.present ();

        this.add_window (window);
    }
}

public static int main (string[] args) {
    var application = new Installer.App ();
    return application.run (args);
}
