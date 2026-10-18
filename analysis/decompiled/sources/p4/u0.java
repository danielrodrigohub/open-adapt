package p4;

import android.os.Bundle;
import n3.z0;

/* JADX INFO: compiled from: TrackGroupArray.java */
/* JADX INFO: loaded from: classes.dex */
public final class u0 implements n3.h {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final u0 f13233k = new u0(new t0[0]);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final n3.h.a<u0> f13234l = z0.f11845i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u6.v<t0> f13236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13237j;

    /* JADX WARN: Type inference failed for: r0v2, types: [u6.p0, u6.v<p4.t0>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [u6.p0, u6.v<p4.t0>] */
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
    public u0(t0... t0VarArr) {
        this.f13236i = (u6.p0) u6.v.t(t0VarArr);
        this.f13235h = t0VarArr.length;
        int i10 = 0;
        while (i10 < this.f13236i.f15969k) {
            int i11 = i10 + 1;
            int i12 = i11;
            while (true) {
                ?? r10 = this.f13236i;
                if (i12 < r10.f15969k) {
                    if (((t0) r10.get(i10)).equals(this.f13236i.get(i12))) {
                        m5.p.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                    }
                    i12++;
                }
            }
            i10 = i11;
        }
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(Integer.toString(0, 36), m5.b.b(this.f13236i));
        return bundle;
    }

    public final t0 b(int i10) {
        return this.f13236i.get(i10);
    }

    public final int c(t0 t0Var) {
        int iIndexOf = this.f13236i.indexOf(t0Var);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u0.class != obj.getClass()) {
            return false;
        }
        u0 u0Var = (u0) obj;
        return this.f13235h == u0Var.f13235h && this.f13236i.equals(u0Var.f13236i);
    }

    public final int hashCode() {
        if (this.f13237j == 0) {
            this.f13237j = this.f13236i.hashCode();
        }
        return this.f13237j;
    }
}
