package com.nike.adapt.migration.oldbigfoot;

import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: BigfootColorPreset.kt */
/* JADX INFO: loaded from: classes.dex */
public enum BigfootColorPreset {
    AURORA_GREEN(0, 255, 255),
    HERO_BLUE(0, 60, 255),
    RACER_BLUE(0, 0, 255),
    VIVID_PURPLE(100, 0, HttpStatusCodesKt.HTTP_OK),
    PINK_BLAST(255, 10, 80),
    RED_ORBIT(240, 0, 8),
    BRIGHT_CRIMSON(255, 16, 3),
    TOTAL_ORANGE(255, 40, 0),
    OPTIC_YELLOW(255, 255, 0),
    ELECTRIC_GREEN(120, 240, 0),
    GREEN_SPARK(20, 240, 0),
    WHITE(255, 255, 255),
    LIGHT_OFF(0, 0, 0);

    private final int blue;
    private final int green;
    private final int red;

    BigfootColorPreset(int i10, int i11, int i12) {
        this.red = i10;
        this.green = i11;
        this.blue = i12;
    }

    public final int getBlue() {
        return this.blue;
    }

    public final int getGreen() {
        return this.green;
    }

    public final int getRed() {
        return this.red;
    }
}
