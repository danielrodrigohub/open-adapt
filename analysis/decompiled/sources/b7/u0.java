package b7;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: MessageSetSchema.java */
/* JADX INFO: loaded from: classes.dex */
public final class u0<T> implements e1<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0 f3541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l1<?, ?> f3542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q<?> f3544d;

    public u0(l1<?, ?> l1Var, q<?> qVar, q0 q0Var) {
        this.f3542b = l1Var;
        this.f3543c = qVar.e(q0Var);
        this.f3544d = qVar;
        this.f3541a = q0Var;
    }

    @Override // b7.e1
    public final void a(T t10, T t11) {
        l1<?, ?> l1Var = this.f3542b;
        Class<?> cls = f1.f3390a;
        l1Var.o(t10, l1Var.k(l1Var.g(t10), l1Var.g(t11)));
        if (this.f3543c) {
            f1.A(this.f3544d, t10, t11);
        }
    }

    @Override // b7.e1
    public final void b(T t10) {
        this.f3542b.j(t10);
        this.f3544d.f(t10);
    }

    @Override // b7.e1
    public final boolean c(T t10) {
        return this.f3544d.c(t10).i();
    }

    @Override // b7.e1
    public final boolean d(T t10, T t11) {
        if (!this.f3542b.g(t10).equals(this.f3542b.g(t11))) {
            return false;
        }
        if (this.f3543c) {
            return this.f3544d.c(t10).equals(this.f3544d.c(t11));
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
    @Override // b7.e1
    public final int e(T t10) {
        l1<?, ?> l1Var = this.f3542b;
        int i10 = l1Var.i(l1Var.g(t10)) + 0;
        if (!this.f3543c) {
            return i10;
        }
        t<T> tVarC = this.f3544d.c(t10);
        int iG = 0;
        for (int i11 = 0; i11 < tVarC.f3514a.d(); i11++) {
            iG += tVarC.g(tVarC.f3514a.c(i11));
        }
        Iterator<T> it = tVarC.f3514a.e().iterator();
        while (it.hasNext()) {
            iG += tVarC.g((Map.Entry) it.next());
        }
        return i10 + iG;
    }

    @Override // b7.e1
    public final T f() {
        return (T) ((x.a) this.f3541a.d()).i();
    }

    @Override // b7.e1
    public final int g(T t10) {
        int iHashCode = this.f3542b.g(t10).hashCode();
        return this.f3543c ? (iHashCode * 53) + this.f3544d.c(t10).hashCode() : iHashCode;
    }

    @Override // b7.e1
    public final void h(T t10, t1 t1Var) throws IOException {
        Iterator itK = this.f3544d.c(t10).k();
        while (itK.hasNext()) {
            Map.Entry entry = (Map.Entry) itK.next();
            t.a aVar = (t.a) entry.getKey();
            if (aVar.e() != s1.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            aVar.c();
            aVar.f();
            if (entry instanceof c0.b) {
                aVar.a();
                ((m) t1Var).l(0, ((c0.b) entry).f3373h.getValue().b());
            } else {
                aVar.a();
                ((m) t1Var).l(0, entry.getValue());
            }
        }
        l1<?, ?> l1Var = this.f3542b;
        l1Var.r(l1Var.g(t10), t1Var);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // b7.e1
    public final void i(T t10, d1 d1Var, p pVar) throws IOException {
        l1<?, ?> l1Var = this.f3542b;
        q<?> qVar = this.f3544d;
        Object objF = l1Var.f(t10);
        t tVarD = qVar.d(t10);
        while (d1Var.r() != Integer.MAX_VALUE && k(d1Var, pVar, qVar, tVarD, l1Var, objF)) {
            try {
            } finally {
                l1Var.n(t10, (Object) objF);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0088  */
    /* JADX WARN: Code duplicated, block: B:57:0x008d A[EDGE_INSN: B:57:0x008d->B:35:0x008d BREAK  A[LOOP:1: B:18:0x004c->B:62:0x004c], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // b7.e1
    public final void j(T t10, byte[] bArr, int i10, int i11, e.a aVar) throws IOException {
        x xVar = (x) t10;
        m1 m1Var = xVar.unknownFields;
        if (m1Var == m1.f3452f) {
            m1Var = new m1();
            xVar.unknownFields = m1Var;
        }
        ((x.c) t10).x();
        x.e eVar = null;
        while (i10 < i11) {
            int iT = e.t(bArr, i10, aVar);
            int i12 = aVar.f3383a;
            if (i12 == 11) {
                int i13 = 0;
                i iVar = null;
                while (iT < i11) {
                    iT = e.t(bArr, iT, aVar);
                    int i14 = aVar.f3383a;
                    int i15 = i14 >>> 3;
                    int i16 = i14 & 7;
                    if (i15 != 2) {
                        if (i15 == 3) {
                            if (eVar != null) {
                                a1 a1Var = a1.f3353c;
                                throw null;
                            }
                            if (i16 == 2) {
                                iT = e.a(bArr, iT, aVar);
                                iVar = (i) aVar.f3385c;
                            }
                        }
                        if (i14 == 12) {
                            break;
                        } else {
                            iT = e.w(i14, bArr, iT, i11, aVar);
                        }
                    } else if (i16 == 0) {
                        iT = e.t(bArr, iT, aVar);
                        i13 = aVar.f3383a;
                        eVar = (x.e) this.f3544d.b(aVar.f3386d, this.f3541a, i13);
                    } else {
                        if (i14 == 12) {
                            break;
                            break;
                        }
                        iT = e.w(i14, bArr, iT, i11, aVar);
                    }
                }
                if (iVar != null) {
                    m1Var.b((i13 << 3) | 2, iVar);
                }
                i10 = iT;
            } else if ((i12 & 7) == 2) {
                eVar = (x.e) this.f3544d.b(aVar.f3386d, this.f3541a, i12 >>> 3);
                if (eVar != null) {
                    a1 a1Var2 = a1.f3353c;
                    throw null;
                }
                i10 = e.r(i12, bArr, iT, i11, m1Var, aVar);
            } else {
                i10 = e.w(i12, bArr, iT, i11, aVar);
            }
        }
        if (i10 != i11) {
            throw a0.g();
        }
    }

    public final <UT, UB, ET extends t.a<ET>> boolean k(d1 d1Var, p pVar, q<ET> qVar, t<ET> tVar, l1<UT, UB> l1Var, UB ub2) throws IOException {
        int iA = d1Var.a();
        if (iA != 11) {
            if ((iA & 7) != 2) {
                return d1Var.B();
            }
            Object objB = qVar.b(pVar, this.f3541a, iA >>> 3);
            if (objB == null) {
                return l1Var.l(ub2, d1Var);
            }
            qVar.h(objB);
            return true;
        }
        int iY = 0;
        Object objB2 = null;
        i iVarW = null;
        while (d1Var.r() != Integer.MAX_VALUE) {
            int iA2 = d1Var.a();
            if (iA2 == 16) {
                iY = d1Var.y();
                objB2 = qVar.b(pVar, this.f3541a, iY);
            } else if (iA2 == 26) {
                if (objB2 != null) {
                    qVar.h(objB2);
                } else {
                    iVarW = d1Var.w();
                }
            } else if (!d1Var.B()) {
                break;
            }
        }
        if (d1Var.a() != 12) {
            throw a0.a();
        }
        if (iVarW != null) {
            if (objB2 != null) {
                qVar.i(objB2);
            } else {
                l1Var.d(ub2, iY, iVarW);
            }
        }
        return true;
    }
}
