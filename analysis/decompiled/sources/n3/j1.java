package n3;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: compiled from: PercentageRating.java */
/* JADX INFO: loaded from: classes.dex */
public final class j1 extends r1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final h.a<j1> f11450j = y0.l.f18242e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f11451i;

    public j1() {
        this.f11451i = -1.0f;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), 1);
        bundle.putFloat(b(1), this.f11451i);
        return bundle;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j1) && this.f11451i == ((j1) obj).f11451i;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11451i)});
    }

    public j1(float f10) {
        m5.a.b(f10 >= 0.0f && f10 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f11451i = f10;
    }
}
