package n3;

import android.os.Bundle;

/* JADX INFO: compiled from: PlaybackParameters.java */
/* JADX INFO: loaded from: classes.dex */
public final class m1 implements h {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final m1 f11538k = new m1(1.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f11539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f11540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11541j;

    static {
        r0 r0Var = r0.f11666d;
    }

    public m1(float f10) {
        this(f10, 1.0f);
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putFloat(b(0), this.f11539h);
        bundle.putFloat(b(1), this.f11540i);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m1.class != obj.getClass()) {
            return false;
        }
        m1 m1Var = (m1) obj;
        return this.f11539h == m1Var.f11539h && this.f11540i == m1Var.f11540i;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f11540i) + ((Float.floatToRawIntBits(this.f11539h) + 527) * 31);
    }

    public final String toString() {
        return m5.g0.m("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f11539h), Float.valueOf(this.f11540i));
    }

    public m1(float f10, float f11) {
        m5.a.a(f10 > 0.0f);
        m5.a.a(f11 > 0.0f);
        this.f11539h = f10;
        this.f11540i = f11;
        this.f11541j = Math.round(f10 * 1000.0f);
    }
}
