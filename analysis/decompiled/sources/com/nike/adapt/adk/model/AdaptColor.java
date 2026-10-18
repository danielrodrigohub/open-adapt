package com.nike.adapt.adk.model;

import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import f7.b;

/* JADX INFO: compiled from: AdaptColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptColor {

    @b("blue")
    private final int blue;

    @b("brightness")
    private final int brightness;

    @b("green")
    private final int green;

    @b("red")
    private final int red;

    public AdaptColor(int i10, int i11, int i12, int i13) {
        this.red = i10;
        this.green = i11;
        this.blue = i12;
        this.brightness = i13;
    }

    public static /* synthetic */ AdaptColor copy$default(AdaptColor adaptColor, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = adaptColor.red;
        }
        if ((i14 & 2) != 0) {
            i11 = adaptColor.green;
        }
        if ((i14 & 4) != 0) {
            i12 = adaptColor.blue;
        }
        if ((i14 & 8) != 0) {
            i13 = adaptColor.brightness;
        }
        return adaptColor.copy(i10, i11, i12, i13);
    }

    public final int component1() {
        return this.red;
    }

    public final int component2() {
        return this.green;
    }

    public final int component3() {
        return this.blue;
    }

    public final int component4() {
        return this.brightness;
    }

    public final AdaptColor copy(int i10, int i11, int i12, int i13) {
        return new AdaptColor(i10, i11, i12, i13);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptColor)) {
            return false;
        }
        AdaptColor adaptColor = (AdaptColor) obj;
        return this.red == adaptColor.red && this.green == adaptColor.green && this.blue == adaptColor.blue && this.brightness == adaptColor.brightness;
    }

    public final int getBlue() {
        return this.blue;
    }

    public final int getBrightness() {
        return this.brightness;
    }

    public final int getGreen() {
        return this.green;
    }

    public final int getRed() {
        return this.red;
    }

    public int hashCode() {
        return Integer.hashCode(this.brightness) + r0.e(this.blue, r0.e(this.green, Integer.hashCode(this.red) * 31, 31), 31);
    }

    public String toString() {
        int i10 = this.red;
        int i11 = this.green;
        int i12 = this.blue;
        int i13 = this.brightness;
        StringBuilder sbB = s.b("AdaptColor(red=", i10, ", green=", i11, ", blue=");
        sbB.append(i12);
        sbB.append(", brightness=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }
}
