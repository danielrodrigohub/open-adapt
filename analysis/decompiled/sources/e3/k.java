package e3;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: RequestManagerFragment.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
@Deprecated
public final class k extends Fragment implements TraceFieldInterface {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e3.a f6321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f6322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Set<k> f6323j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.bumptech.glide.j f6324k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public k f6325l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Fragment f6326m;

    /* JADX INFO: compiled from: RequestManagerFragment.java */
    public class a implements m {
        public a() {
        }

        public final String toString() {
            return super.toString() + "{fragment=" + k.this + "}";
        }
    }

    public k() {
        e3.a aVar = new e3.a();
        this.f6322i = new a();
        this.f6323j = new HashSet();
        this.f6321h = aVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to e3.k for r1v1 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final void a(android.app.Activity r2) {
        /*
            r1 = this;
            r1.b()
            com.bumptech.glide.c r0 = com.bumptech.glide.c.b(r2)
            e3.l r0 = r0.f4425m
            java.util.Objects.requireNonNull(r0)
            android.app.FragmentManager r2 = r2.getFragmentManager()
            e3.k r2 = r0.d(r2)
            r1.f6325l = r2
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L23
            e3.k r2 = r1.f6325l
            java.util.Set<e3.k> r2 = r2.f6323j
            r2.add(r1)
        L23:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.k.a(android.app.Activity):void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashSet, java.util.Set<e3.k>] */
    public final void b() {
        k kVar = this.f6325l;
        if (kVar != null) {
            kVar.f6323j.remove(this);
            this.f6325l = null;
        }
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException e10) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e10);
            }
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f6321h.a();
        b();
    }

    @Override // android.app.Fragment
    public final void onDetach() {
        super.onDetach();
        b();
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f6321h.d();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f6321h.e();
    }

    @Override // android.app.Fragment
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.f6326m;
        }
        sb2.append(parentFragment);
        sb2.append("}");
        return sb2.toString();
    }
}
