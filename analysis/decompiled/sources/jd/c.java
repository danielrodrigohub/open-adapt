package jd;

import java.io.Serializable;
import java.util.Objects;
import qd.p;
import rd.o;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements f, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f9506h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f.a f9507i;

    /* JADX INFO: compiled from: CoroutineContextImpl.kt */
    public static final class a extends o implements p<String, f.a, String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f9508h = new a();

        public a() {
            super(2);
        }

        @Override // qd.p
        public final String invoke(String str, f.a aVar) {
            String str2 = str;
            f.a aVar2 = aVar;
            p4.h.j(str2, "acc");
            p4.h.j(aVar2, "element");
            if (str2.length() == 0) {
                return aVar2.toString();
            }
            return str2 + ", " + aVar2;
        }
    }

    public c(f fVar, f.a aVar) {
        p4.h.j(fVar, "left");
        p4.h.j(aVar, "element");
        this.f9506h = fVar;
        this.f9507i = aVar;
    }

    public final boolean equals(Object obj) {
        boolean zC;
        if (this != obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            Objects.requireNonNull(cVar);
            int i10 = 2;
            c cVar2 = cVar;
            int i11 = 2;
            while (true) {
                f fVar = cVar2.f9506h;
                cVar2 = fVar instanceof c ? (c) fVar : null;
                if (cVar2 == null) {
                    break;
                }
                i11++;
            }
            c cVar3 = this;
            while (true) {
                f fVar2 = cVar3.f9506h;
                cVar3 = fVar2 instanceof c ? (c) fVar2 : null;
                if (cVar3 == null) {
                    break;
                }
                i10++;
            }
            if (i11 != i10) {
                return false;
            }
            Objects.requireNonNull(cVar);
            c cVar4 = this;
            while (true) {
                f.a aVar = cVar4.f9507i;
                if (!p4.h.c(cVar.get(aVar.getKey()), aVar)) {
                    zC = false;
                    break;
                }
                f fVar3 = cVar4.f9506h;
                if (!(fVar3 instanceof c)) {
                    p4.h.h(fVar3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    f.a aVar2 = (f.a) fVar3;
                    zC = p4.h.c(cVar.get(aVar2.getKey()), aVar2);
                    break;
                }
                cVar4 = (c) fVar3;
            }
            if (!zC) {
                return false;
            }
        }
        return true;
    }

    @Override // jd.f
    public final <R> R fold(R r10, p<? super R, ? super f.a, ? extends R> pVar) {
        p4.h.j(pVar, "operation");
        return pVar.invoke((Object) this.f9506h.fold(r10, pVar), this.f9507i);
    }

    @Override // jd.f
    public final <E extends f.a> E get(f.b<E> bVar) {
        p4.h.j(bVar, "key");
        c cVar = this;
        while (true) {
            E e10 = (E) cVar.f9507i.get(bVar);
            if (e10 != null) {
                return e10;
            }
            f fVar = cVar.f9506h;
            if (!(fVar instanceof c)) {
                return (E) fVar.get(bVar);
            }
            cVar = (c) fVar;
        }
    }

    public final int hashCode() {
        return this.f9507i.hashCode() + this.f9506h.hashCode();
    }

    @Override // jd.f
    public final f minusKey(f.b<?> bVar) {
        p4.h.j(bVar, "key");
        if (this.f9507i.get(bVar) != null) {
            return this.f9506h;
        }
        f fVarMinusKey = this.f9506h.minusKey(bVar);
        if (fVarMinusKey == this.f9506h) {
            return this;
        }
        return fVarMinusKey == h.f9512h ? this.f9507i : new c(fVarMinusKey, this.f9507i);
    }

    @Override // jd.f
    public final f plus(f fVar) {
        p4.h.j(fVar, "context");
        return fVar == h.f9512h ? this : (f) fVar.fold(this, g.f9511h);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        return a0.d.d(sb2, (String) fold("", a.f9508h), ']');
    }
}
