package com.nike.adapt.network.assets.model;

import f7.b;
import p4.h;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Configuration {

    @b("settings")
    private final Settings settings;

    @b("version")
    private final String version;

    public Configuration(Settings settings, String str) {
        h.j(settings, "settings");
        h.j(str, "version");
        this.settings = settings;
        this.version = str;
    }

    public static /* synthetic */ Configuration copy$default(Configuration configuration, Settings settings, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            settings = configuration.settings;
        }
        if ((i10 & 2) != 0) {
            str = configuration.version;
        }
        return configuration.copy(settings, str);
    }

    public final Settings component1() {
        return this.settings;
    }

    public final String component2() {
        return this.version;
    }

    public final Configuration copy(Settings settings, String str) {
        h.j(settings, "settings");
        h.j(str, "version");
        return new Configuration(settings, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Configuration)) {
            return false;
        }
        Configuration configuration = (Configuration) obj;
        return h.c(this.settings, configuration.settings) && h.c(this.version, configuration.version);
    }

    public final Settings getSettings() {
        return this.settings;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return this.version.hashCode() + (this.settings.hashCode() * 31);
    }

    public String toString() {
        return "Configuration(settings=" + this.settings + ", version=" + this.version + ")";
    }
}
