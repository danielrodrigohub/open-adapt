package com.nike.adapt.adk.model;

import a1.d;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import p4.h;

/* JADX INFO: compiled from: AdaptAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptAnimation {
    private final AdaptDeviceColor color;
    private final int duration;
    private final int enter;
    private final int exit;
    private final int off;
    private final int on;
    private final int prequel;

    public AdaptAnimation(AdaptDeviceColor adaptDeviceColor, int i10, int i11, int i12, int i13, int i14, int i15) {
        h.j(adaptDeviceColor, "color");
        this.color = adaptDeviceColor;
        this.prequel = i10;
        this.enter = i11;
        this.on = i12;
        this.exit = i13;
        this.off = i14;
        this.duration = i15;
    }

    public static /* synthetic */ AdaptAnimation copy$default(AdaptAnimation adaptAnimation, AdaptDeviceColor adaptDeviceColor, int i10, int i11, int i12, int i13, int i14, int i15, int i16, Object obj) {
        if ((i16 & 1) != 0) {
            adaptDeviceColor = adaptAnimation.color;
        }
        if ((i16 & 2) != 0) {
            i10 = adaptAnimation.prequel;
        }
        int i17 = i10;
        if ((i16 & 4) != 0) {
            i11 = adaptAnimation.enter;
        }
        int i18 = i11;
        if ((i16 & 8) != 0) {
            i12 = adaptAnimation.on;
        }
        int i19 = i12;
        if ((i16 & 16) != 0) {
            i13 = adaptAnimation.exit;
        }
        int i20 = i13;
        if ((i16 & 32) != 0) {
            i14 = adaptAnimation.off;
        }
        int i21 = i14;
        if ((i16 & 64) != 0) {
            i15 = adaptAnimation.duration;
        }
        return adaptAnimation.copy(adaptDeviceColor, i17, i18, i19, i20, i21, i15);
    }

    public final AdaptDeviceColor component1() {
        return this.color;
    }

    public final int component2() {
        return this.prequel;
    }

    public final int component3() {
        return this.enter;
    }

    public final int component4() {
        return this.on;
    }

    public final int component5() {
        return this.exit;
    }

    public final int component6() {
        return this.off;
    }

    public final int component7() {
        return this.duration;
    }

    public final AdaptAnimation copy(AdaptDeviceColor adaptDeviceColor, int i10, int i11, int i12, int i13, int i14, int i15) {
        h.j(adaptDeviceColor, "color");
        return new AdaptAnimation(adaptDeviceColor, i10, i11, i12, i13, i14, i15);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptAnimation)) {
            return false;
        }
        AdaptAnimation adaptAnimation = (AdaptAnimation) obj;
        return h.c(this.color, adaptAnimation.color) && this.prequel == adaptAnimation.prequel && this.enter == adaptAnimation.enter && this.on == adaptAnimation.on && this.exit == adaptAnimation.exit && this.off == adaptAnimation.off && this.duration == adaptAnimation.duration;
    }

    public final AdaptDeviceColor getColor() {
        return this.color;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final int getEnter() {
        return this.enter;
    }

    public final int getExit() {
        return this.exit;
    }

    public final int getOff() {
        return this.off;
    }

    public final int getOn() {
        return this.on;
    }

    public final int getPrequel() {
        return this.prequel;
    }

    public int hashCode() {
        return Integer.hashCode(this.duration) + r0.e(this.off, r0.e(this.exit, r0.e(this.on, r0.e(this.enter, r0.e(this.prequel, this.color.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public String toString() {
        AdaptDeviceColor adaptDeviceColor = this.color;
        int i10 = this.prequel;
        int i11 = this.enter;
        int i12 = this.on;
        int i13 = this.exit;
        int i14 = this.off;
        int i15 = this.duration;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptAnimation(color=");
        sb2.append(adaptDeviceColor);
        sb2.append(", prequel=");
        sb2.append(i10);
        sb2.append(", enter=");
        d.e(sb2, i11, ", on=", i12, ", exit=");
        d.e(sb2, i13, ", off=", i14, ", duration=");
        return s.a(sb2, i15, ")");
    }
}
