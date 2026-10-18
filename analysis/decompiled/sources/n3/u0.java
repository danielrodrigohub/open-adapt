package n3;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: compiled from: HeartRating.java */
/* JADX INFO: loaded from: classes.dex */
public final class u0 extends r1 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h.a<u0> f11729k = t0.f11722c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f11730i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f11731j;

    public u0() {
        this.f11730i = false;
        this.f11731j = false;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), 0);
        bundle.putBoolean(b(1), this.f11730i);
        bundle.putBoolean(b(2), this.f11731j);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof u0)) {
            return false;
        }
        u0 u0Var = (u0) obj;
        return this.f11731j == u0Var.f11731j && this.f11730i == u0Var.f11730i;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f11730i), Boolean.valueOf(this.f11731j)});
    }

    public u0(boolean z10) {
        this.f11730i = true;
        this.f11731j = z10;
    }
}
