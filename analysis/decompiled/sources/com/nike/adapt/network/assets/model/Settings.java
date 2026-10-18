package com.nike.adapt.network.assets.model;

import f7.b;
import p4.h;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Settings {

    @b("colorway_v1")
    private final ColorwayV1 colorwayV1;

    public Settings(ColorwayV1 colorwayV1) {
        h.j(colorwayV1, "colorwayV1");
        this.colorwayV1 = colorwayV1;
    }

    public static /* synthetic */ Settings copy$default(Settings settings, ColorwayV1 colorwayV1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            colorwayV1 = settings.colorwayV1;
        }
        return settings.copy(colorwayV1);
    }

    public final ColorwayV1 component1() {
        return this.colorwayV1;
    }

    public final Settings copy(ColorwayV1 colorwayV1) {
        h.j(colorwayV1, "colorwayV1");
        return new Settings(colorwayV1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Settings) && h.c(this.colorwayV1, ((Settings) obj).colorwayV1);
    }

    public final ColorwayV1 getColorwayV1() {
        return this.colorwayV1;
    }

    public int hashCode() {
        return this.colorwayV1.hashCode();
    }

    public String toString() {
        return "Settings(colorwayV1=" + this.colorwayV1 + ")";
    }
}
