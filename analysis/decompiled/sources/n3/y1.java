package n3;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: compiled from: StarRating.java */
/* JADX INFO: loaded from: classes.dex */
public final class y1 extends r1 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h.a<y1> f11834k = y0.i.f18232d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f11836j;

    public y1(int i10) {
        m5.a.b(i10 > 0, "maxStars must be a positive integer");
        this.f11835i = i10;
        this.f11836j = -1.0f;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), 2);
        bundle.putInt(b(1), this.f11835i);
        bundle.putFloat(b(2), this.f11836j);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof y1)) {
            return false;
        }
        y1 y1Var = (y1) obj;
        return this.f11835i == y1Var.f11835i && this.f11836j == y1Var.f11836j;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f11835i), Float.valueOf(this.f11836j)});
    }

    public y1(int i10, float f10) {
        m5.a.b(i10 > 0, "maxStars must be a positive integer");
        m5.a.b(f10 >= 0.0f && f10 <= ((float) i10), "starRating is out of range [0, maxStars]");
        this.f11835i = i10;
        this.f11836j = f10;
    }
}
