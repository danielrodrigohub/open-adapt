package com.nike.adapt.network.assets.model;

import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import f7.b;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShoeLightingColor {

    @b("blue")
    private final int blue;

    @b("brightness")
    private final int brightness;

    @b("green")
    private final int green;

    @b("red")
    private final int red;

    public ShoeLightingColor(int i10, int i11, int i12, int i13) {
        this.blue = i10;
        this.green = i11;
        this.red = i12;
        this.brightness = i13;
    }

    public static /* synthetic */ ShoeLightingColor copy$default(ShoeLightingColor shoeLightingColor, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = shoeLightingColor.blue;
        }
        if ((i14 & 2) != 0) {
            i11 = shoeLightingColor.green;
        }
        if ((i14 & 4) != 0) {
            i12 = shoeLightingColor.red;
        }
        if ((i14 & 8) != 0) {
            i13 = shoeLightingColor.brightness;
        }
        return shoeLightingColor.copy(i10, i11, i12, i13);
    }

    public final int component1() {
        return this.blue;
    }

    public final int component2() {
        return this.green;
    }

    public final int component3() {
        return this.red;
    }

    public final int component4() {
        return this.brightness;
    }

    public final ShoeLightingColor copy(int i10, int i11, int i12, int i13) {
        return new ShoeLightingColor(i10, i11, i12, i13);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShoeLightingColor)) {
            return false;
        }
        ShoeLightingColor shoeLightingColor = (ShoeLightingColor) obj;
        return this.blue == shoeLightingColor.blue && this.green == shoeLightingColor.green && this.red == shoeLightingColor.red && this.brightness == shoeLightingColor.brightness;
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
        return Integer.hashCode(this.brightness) + r0.e(this.red, r0.e(this.green, Integer.hashCode(this.blue) * 31, 31), 31);
    }

    public String toString() {
        int i10 = this.blue;
        int i11 = this.green;
        int i12 = this.red;
        int i13 = this.brightness;
        StringBuilder sbB = s.b("ShoeLightingColor(blue=", i10, ", green=", i11, ", red=");
        sbB.append(i12);
        sbB.append(", brightness=");
        sbB.append(i13);
        sbB.append(")");
        return sbB.toString();
    }
}
