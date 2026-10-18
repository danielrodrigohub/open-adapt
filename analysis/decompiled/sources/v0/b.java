package v0;

import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import androidx.lifecycle.v;
import androidx.lifecycle.w;
import java.io.PrintWriter;
import java.util.Objects;
import p.h;

/* JADX INFO: compiled from: LoaderManagerImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends v0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f16100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0281b f16101b;

    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    public static class a<D> extends v<D> {
        @Override // androidx.lifecycle.LiveData
        public final void e() {
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        public final void f() {
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public final void g(w<? super D> wVar) {
            super.g(wVar);
        }

        @Override // androidx.lifecycle.v, androidx.lifecycle.LiveData
        public final void h(D d10) {
            super.h(d10);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("LoaderInfo{");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" #");
            sb2.append(0);
            sb2.append(" : ");
            i0.b.e(null, sb2);
            sb2.append("}}");
            return sb2.toString();
        }
    }

    /* JADX INFO: renamed from: v0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    public static class C0281b extends j0 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f16102d = new a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public h<a> f16103c = new h<>();

        /* JADX INFO: renamed from: v0.b$b$a */
        /* JADX INFO: compiled from: LoaderManagerImpl.java */
        public static class a implements l0.a {
            @Override // androidx.lifecycle.l0.a
            public final <T extends j0> T a(Class<T> cls) {
                return new C0281b();
            }
        }

        @Override // androidx.lifecycle.j0
        public final void a() {
            h<a> hVar = this.f16103c;
            int i10 = hVar.f12618j;
            if (i10 > 0) {
                Objects.requireNonNull((a) hVar.f12617i[0]);
                throw null;
            }
            Object[] objArr = hVar.f12617i;
            for (int i11 = 0; i11 < i10; i11++) {
                objArr[i11] = null;
            }
            hVar.f12618j = 0;
        }
    }

    public b(q qVar, n0 n0Var) {
        this.f16100a = qVar;
        C0281b.a aVar = C0281b.f16102d;
        p4.h.j(n0Var, "store");
        p4.h.j(aVar, "factory");
        this.f16101b = (C0281b) new l0(n0Var, aVar, u0.a.C0269a.f15615b).a(C0281b.class);
    }

    @Override // v0.a
    @Deprecated
    public final void a(String str, PrintWriter printWriter) {
        C0281b c0281b = this.f16101b;
        if (c0281b.f16103c.f12618j > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            h<a> hVar = c0281b.f16103c;
            if (hVar.f12618j <= 0) {
                return;
            }
            a aVar = (a) hVar.f12617i[0];
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(c0281b.f16103c.f12616h[0]);
            printWriter.print(": ");
            printWriter.println(aVar.toString());
            printWriter.print(str2);
            printWriter.print("mId=");
            printWriter.print(0);
            printWriter.print(" mArgs=");
            printWriter.println((Object) null);
            printWriter.print(str2);
            printWriter.print("mLoader=");
            printWriter.println((Object) null);
            throw null;
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("LoaderManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        i0.b.e(this.f16100a, sb2);
        sb2.append("}}");
        return sb2.toString();
    }
}
