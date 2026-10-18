package wd;

/* JADX INFO: compiled from: KTypeProjection.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f17605c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f17607b;

    /* JADX INFO: compiled from: KTypeProjection.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: KTypeProjection.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f17608a;

        static {
            int[] iArr = new int[q.g.b(3).length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[2] = 3;
            f17608a = iArr;
        }
    }

    static {
        new h(0, null);
    }

    public h(int i10, g gVar) {
        String string;
        this.f17606a = i10;
        this.f17607b = gVar;
        if ((i10 == 0) == (gVar == null)) {
            return;
        }
        if (i10 == 0) {
            string = "Star projection must have no type specified.";
        } else {
            StringBuilder sbC = a0.b.c("The projection variance ");
            sbC.append(com.nike.adapt.adk.model.a.g(i10));
            sbC.append(" requires type to be specified.");
            string = sbC.toString();
        }
        throw new IllegalArgumentException(string.toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f17606a == hVar.f17606a && p4.h.c(this.f17607b, hVar.f17607b);
    }

    public final int hashCode() {
        int i10 = this.f17606a;
        int iA = (i10 == 0 ? 0 : q.g.a(i10)) * 31;
        g gVar = this.f17607b;
        return iA + (gVar != null ? gVar.hashCode() : 0);
    }

    public final String toString() {
        int i10 = this.f17606a;
        int i11 = i10 == 0 ? -1 : b.f17608a[q.g.a(i10)];
        if (i11 == -1) {
            return "*";
        }
        if (i11 == 1) {
            return String.valueOf(this.f17607b);
        }
        if (i11 == 2) {
            StringBuilder sbC = a0.b.c("in ");
            sbC.append(this.f17607b);
            return sbC.toString();
        }
        if (i11 != 3) {
            throw new j2.a();
        }
        StringBuilder sbC2 = a0.b.c("out ");
        sbC2.append(this.f17607b);
        return sbC2.toString();
    }
}
