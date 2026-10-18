package n3;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: compiled from: ThumbRating.java */
/* JADX INFO: loaded from: classes.dex */
public final class a2 extends r1 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h.a<a2> f11268k = y0.h.f18222e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f11269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f11270j;

    public a2() {
        this.f11269i = false;
        this.f11270j = false;
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), 3);
        bundle.putBoolean(b(1), this.f11269i);
        bundle.putBoolean(b(2), this.f11270j);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a2)) {
            return false;
        }
        a2 a2Var = (a2) obj;
        return this.f11270j == a2Var.f11270j && this.f11269i == a2Var.f11269i;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f11269i), Boolean.valueOf(this.f11270j)});
    }

    public a2(boolean z10) {
        this.f11269i = true;
        this.f11270j = z10;
    }
}
