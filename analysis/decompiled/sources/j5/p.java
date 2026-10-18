package j5;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import p4.t0;
import u6.v;

/* JADX INFO: compiled from: TrackSelectionOverride.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements n3.h {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final n3.h.a<p> f9387j = n3.p.f11617g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t0 f9388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v<Integer> f9389i;

    public p(t0 t0Var, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= t0Var.f13221h)) {
            throw new IndexOutOfBoundsException();
        }
        this.f9388h = t0Var;
        this.f9389i = v.s(list);
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putBundle(b(0), this.f9388h.a());
        bundle.putIntArray(b(1), w6.a.d(this.f9389i));
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.f9388h.equals(pVar.f9388h) && this.f9389i.equals(pVar.f9389i);
    }

    public final int hashCode() {
        return (this.f9389i.hashCode() * 31) + this.f9388h.hashCode();
    }
}
