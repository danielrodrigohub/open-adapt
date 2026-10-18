package a4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import m5.w;

/* JADX INFO: compiled from: Atom.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f211a;

    /* JADX INFO: renamed from: a4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Atom.java */
    public static final class C0004a extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<b> f213c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<C0004a> f214d;

        public C0004a(int i10, long j10) {
            super(i10);
            this.f212b = j10;
            this.f213c = new ArrayList();
            this.f214d = new ArrayList();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
        public final C0004a b(int i10) {
            int size = this.f214d.size();
            for (int i11 = 0; i11 < size; i11++) {
                C0004a c0004a = (C0004a) this.f214d.get(i11);
                if (c0004a.f211a == i10) {
                    return c0004a;
                }
            }
            return null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
        public final b c(int i10) {
            int size = this.f213c.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = (b) this.f213c.get(i11);
                if (bVar.f211a == i10) {
                    return bVar;
                }
            }
            return null;
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList, java.util.List<a4.a$b>] */
        /* JADX WARN: Type inference failed for: r1v7, types: [java.util.ArrayList, java.util.List<a4.a$a>] */
        @Override // a4.a
        public final String toString() {
            return a.a(this.f211a) + " leaves: " + Arrays.toString(this.f213c.toArray()) + " containers: " + Arrays.toString(this.f214d.toArray());
        }
    }

    /* JADX INFO: compiled from: Atom.java */
    public static final class b extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final w f215b;

        public b(int i10, w wVar) {
            super(i10);
            this.f215b = wVar;
        }
    }

    public a(int i10) {
        this.f211a = i10;
    }

    public static String a(int i10) {
        StringBuilder sbC = a0.b.c("");
        sbC.append((char) ((i10 >> 24) & 255));
        sbC.append((char) ((i10 >> 16) & 255));
        sbC.append((char) ((i10 >> 8) & 255));
        sbC.append((char) (i10 & 255));
        return sbC.toString();
    }

    public String toString() {
        return a(this.f211a);
    }
}
