package com.nike.adapt.adk.model;

import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: InvalidShoeLEDColorDetectedADK.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InvalidShoeLEDColorDetectedADK extends Exception {
    private final int blue;
    private final int green;
    private final int red;

    public InvalidShoeLEDColorDetectedADK(int i10, int i11, int i12) {
        super(s.a(s.b("The shoe reported an invalid color(", i10, ",", i11, ","), i12, ")"));
        this.red = i10;
        this.green = i11;
        this.blue = i12;
    }

    public static /* synthetic */ InvalidShoeLEDColorDetectedADK copy$default(InvalidShoeLEDColorDetectedADK invalidShoeLEDColorDetectedADK, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = invalidShoeLEDColorDetectedADK.red;
        }
        if ((i13 & 2) != 0) {
            i11 = invalidShoeLEDColorDetectedADK.green;
        }
        if ((i13 & 4) != 0) {
            i12 = invalidShoeLEDColorDetectedADK.blue;
        }
        return invalidShoeLEDColorDetectedADK.copy(i10, i11, i12);
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

    public final InvalidShoeLEDColorDetectedADK copy(int i10, int i11, int i12) {
        return new InvalidShoeLEDColorDetectedADK(i10, i11, i12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InvalidShoeLEDColorDetectedADK)) {
            return false;
        }
        InvalidShoeLEDColorDetectedADK invalidShoeLEDColorDetectedADK = (InvalidShoeLEDColorDetectedADK) obj;
        return this.red == invalidShoeLEDColorDetectedADK.red && this.green == invalidShoeLEDColorDetectedADK.green && this.blue == invalidShoeLEDColorDetectedADK.blue;
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

    public int hashCode() {
        return Integer.hashCode(this.blue) + r0.e(this.green, Integer.hashCode(this.red) * 31, 31);
    }

    @Override // java.lang.Throwable
    public String toString() {
        int i10 = this.red;
        int i11 = this.green;
        return s.a(s.b("InvalidShoeLEDColorDetectedADK(red=", i10, ", green=", i11, ", blue="), this.blue, ")");
    }
}
