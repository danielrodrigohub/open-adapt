package m5;

import android.util.SparseBooleanArray;

/* JADX INFO: compiled from: FlagSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f10405a;

    /* JADX INFO: compiled from: FlagSet.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseBooleanArray f10406a = new SparseBooleanArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f10407b;

        public final a a(int i10) {
            m5.a.e(!this.f10407b);
            this.f10406a.append(i10, true);
            return this;
        }

        public final j b() {
            m5.a.e(!this.f10407b);
            this.f10407b = true;
            return new j(this.f10406a);
        }
    }

    public j(SparseBooleanArray sparseBooleanArray) {
        this.f10405a = sparseBooleanArray;
    }

    public final boolean a(int i10) {
        return this.f10405a.get(i10);
    }

    public final int b(int i10) {
        m5.a.c(i10, c());
        return this.f10405a.keyAt(i10);
    }

    public final int c() {
        return this.f10405a.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (g0.f10384a >= 24) {
            return this.f10405a.equals(jVar.f10405a);
        }
        if (c() != jVar.c()) {
            return false;
        }
        for (int i10 = 0; i10 < c(); i10++) {
            if (b(i10) != jVar.b(i10)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (g0.f10384a >= 24) {
            return this.f10405a.hashCode();
        }
        int iC = c();
        for (int i10 = 0; i10 < c(); i10++) {
            iC = (iC * 31) + b(i10);
        }
        return iC;
    }
}
