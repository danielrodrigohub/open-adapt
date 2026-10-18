package e3;

import android.content.Context;
import android.util.Log;
import androidx.fragment.app.x;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: SupportRequestManagerFragment.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class q extends androidx.fragment.app.m implements TraceFieldInterface {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final e3.a f6351a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final a f6352b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final Set<q> f6353c0;
    public q d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public com.bumptech.glide.j f6354e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public androidx.fragment.app.m f6355f0;

    /* JADX INFO: compiled from: SupportRequestManagerFragment.java */
    public class a implements m {
        public a() {
        }

        public final String toString() {
            return super.toString() + "{fragment=" + q.this + "}";
        }
    }

    public q() {
        e3.a aVar = new e3.a();
        this.f6352b0 = new a();
        this.f6353c0 = new HashSet();
        this.f6351a0 = aVar;
    }

    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        super.G(context);
        androidx.fragment.app.m mVar = this;
        while (true) {
            androidx.fragment.app.m mVar2 = mVar.C;
            if (mVar2 == null) {
                break;
            } else {
                mVar = mVar2;
            }
        }
        x xVar = mVar.f1983z;
        if (xVar == null) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
            }
        } else {
            try {
                q0(l(), xVar);
            } catch (IllegalStateException e10) {
                if (Log.isLoggable("SupportRMFragment", 5)) {
                    Log.w("SupportRMFragment", "Unable to register fragment with root", e10);
                }
            }
        }
    }

    @Override // androidx.fragment.app.m
    public final void J() {
        this.K = true;
        this.f6351a0.a();
        r0();
    }

    @Override // androidx.fragment.app.m
    public final void L() {
        this.K = true;
        this.f6355f0 = null;
        r0();
    }

    @Override // androidx.fragment.app.m
    public final void S() {
        this.K = true;
        this.f6351a0.d();
    }

    @Override // androidx.fragment.app.m
    public final void T() {
        this.K = true;
        this.f6351a0.e();
    }

    public final androidx.fragment.app.m p0() {
        androidx.fragment.app.m mVar = this.C;
        return mVar != null ? mVar : this.f6355f0;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to e3.q for r0v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final void q0(android.content.Context r1, androidx.fragment.app.x r2) {
        /*
            r0 = this;
            r0.r0()
            com.bumptech.glide.c r1 = com.bumptech.glide.c.b(r1)
            e3.l r1 = r1.f4425m
            e3.q r1 = r1.e(r2)
            r0.d0 = r1
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L1c
            e3.q r1 = r0.d0
            java.util.Set<e3.q> r1 = r1.f6353c0
            r1.add(r0)
        L1c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.q.q0(android.content.Context, androidx.fragment.app.x):void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashSet, java.util.Set<e3.q>] */
    public final void r0() {
        q qVar = this.d0;
        if (qVar != null) {
            qVar.f6353c0.remove(this);
            this.d0 = null;
        }
    }

    @Override // androidx.fragment.app.m
    public final String toString() {
        return super.toString() + "{parent=" + p0() + "}";
    }
}
