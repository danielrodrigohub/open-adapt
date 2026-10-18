package m7;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: MessageSetSchema.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0<T> implements c1<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p0 f10777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i1<?, ?> f10778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f10779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p<?> f10780d;

    public t0(i1<?, ?> i1Var, p<?> pVar, p0 p0Var) {
        this.f10778b = i1Var;
        this.f10779c = pVar.e(p0Var);
        this.f10780d = pVar;
        this.f10777a = p0Var;
    }

    @Override // m7.c1
    public final void a(T t10, T t11) {
        i1<?, ?> i1Var = this.f10778b;
        Class<?> cls = d1.f10628a;
        i1Var.h(t10, i1Var.f(i1Var.b(t10), i1Var.b(t11)));
        if (this.f10779c) {
            d1.A(this.f10780d, t10, t11);
        }
    }

    @Override // m7.c1
    public final void b(T t10) {
        this.f10778b.e(t10);
        this.f10780d.f(t10);
    }

    @Override // m7.c1
    public final boolean c(T t10) {
        return this.f10780d.c(t10).i();
    }

    @Override // m7.c1
    public final boolean d(T t10, T t11) {
        if (!this.f10778b.b(t10).equals(this.f10778b.b(t11))) {
            return false;
        }
        if (this.f10779c) {
            return this.f10780d.c(t10).equals(this.f10780d.c(t11));
        }
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // m7.c1
    public final int e(T t10) {
        i1<?, ?> i1Var = this.f10778b;
        int iD = i1Var.d(i1Var.b(t10)) + 0;
        if (!this.f10779c) {
            return iD;
        }
        s<T> sVarC = this.f10780d.c(t10);
        int iG = 0;
        for (int i10 = 0; i10 < sVarC.f10750a.d(); i10++) {
            iG += sVarC.g(sVarC.f10750a.c(i10));
        }
        Iterator<T> it = sVarC.f10750a.e().iterator();
        while (it.hasNext()) {
            iG += sVarC.g((Map.Entry) it.next());
        }
        return iD + iG;
    }

    @Override // m7.c1
    public final T f() {
        return (T) ((w.a) this.f10777a.d()).i();
    }

    @Override // m7.c1
    public final int g(T t10) {
        int iHashCode = this.f10778b.b(t10).hashCode();
        return this.f10779c ? (iHashCode * 53) + this.f10780d.c(t10).hashCode() : iHashCode;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0088  */
    /* JADX WARN: Code duplicated, block: B:57:0x008d A[EDGE_INSN: B:57:0x008d->B:35:0x008d BREAK  A[LOOP:1: B:18:0x004c->B:62:0x004c], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // m7.c1
    public final void h(T t10, byte[] bArr, int i10, int i11, e.a aVar) throws IOException {
        w wVar = (w) t10;
        j1 j1Var = wVar.unknownFields;
        if (j1Var == j1.f10682f) {
            j1Var = new j1();
            wVar.unknownFields = j1Var;
        }
        ((w.c) t10).x();
        w.e eVar = null;
        while (i10 < i11) {
            int iT = e.t(bArr, i10, aVar);
            int i12 = aVar.f10632a;
            if (i12 == 11) {
                int i13 = 0;
                i iVar = null;
                while (iT < i11) {
                    iT = e.t(bArr, iT, aVar);
                    int i14 = aVar.f10632a;
                    int i15 = i14 >>> 3;
                    int i16 = i14 & 7;
                    if (i15 != 2) {
                        if (i15 == 3) {
                            if (eVar != null) {
                                z0 z0Var = z0.f10805c;
                                throw null;
                            }
                            if (i16 == 2) {
                                iT = e.a(bArr, iT, aVar);
                                iVar = (i) aVar.f10634c;
                            }
                        }
                        if (i14 == 12) {
                            break;
                        } else {
                            iT = e.w(i14, bArr, iT, i11, aVar);
                        }
                    } else if (i16 == 0) {
                        iT = e.t(bArr, iT, aVar);
                        i13 = aVar.f10632a;
                        eVar = (w.e) this.f10780d.b(aVar.f10635d, this.f10777a, i13);
                    } else {
                        if (i14 == 12) {
                            break;
                            break;
                        }
                        iT = e.w(i14, bArr, iT, i11, aVar);
                    }
                }
                if (iVar != null) {
                    j1Var.b((i13 << 3) | 2, iVar);
                }
                i10 = iT;
            } else if ((i12 & 7) == 2) {
                eVar = (w.e) this.f10780d.b(aVar.f10635d, this.f10777a, i12 >>> 3);
                if (eVar != null) {
                    z0 z0Var2 = z0.f10805c;
                    throw null;
                }
                i10 = e.r(i12, bArr, iT, i11, j1Var, aVar);
            } else {
                i10 = e.w(i12, bArr, iT, i11, aVar);
            }
        }
        if (i10 != i11) {
            throw z.d();
        }
    }

    @Override // m7.c1
    public final void i(T t10, q1 q1Var) throws IOException {
        Iterator itL = this.f10780d.c(t10).l();
        while (itL.hasNext()) {
            Map.Entry entry = (Map.Entry) itL.next();
            s.a aVar = (s.a) entry.getKey();
            if (aVar.e() != p1.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            aVar.c();
            aVar.f();
            if (entry instanceof b0.b) {
                aVar.a();
                ((l) q1Var).l(0, ((b0.b) entry).f10616h.getValue().b());
            } else {
                aVar.a();
                ((l) q1Var).l(0, entry.getValue());
            }
        }
        i1<?, ?> i1Var = this.f10778b;
        i1Var.i(i1Var.b(t10), q1Var);
    }
}
