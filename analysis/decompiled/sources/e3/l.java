package e3;

import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.fragment.app.x;
import androidx.lifecycle.k0;
import androidx.lifecycle.m0;
import b7.j1;
import java.util.HashMap;
import java.util.Map;
import y2.s;

/* JADX INFO: compiled from: RequestManagerRetriever.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Handler.Callback {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f6328n = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile com.bumptech.glide.j f6329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map<FragmentManager, k> f6330i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map<x, q> f6331j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Handler f6332k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b f6333l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final g f6334m;

    /* JADX INFO: compiled from: RequestManagerRetriever.java */
    public class a implements b {
        @Override // e3.l.b
        public final com.bumptech.glide.j a(com.bumptech.glide.c cVar, h hVar, m mVar, Context context) {
            return new com.bumptech.glide.j(cVar, hVar, mVar, context);
        }
    }

    /* JADX INFO: compiled from: RequestManagerRetriever.java */
    public interface b {
        com.bumptech.glide.j a(com.bumptech.glide.c cVar, h hVar, m mVar, Context context);
    }

    public l(b bVar, com.bumptech.glide.f fVar) {
        new Bundle();
        this.f6333l = bVar == null ? f6328n : bVar;
        this.f6332k = new Handler(Looper.getMainLooper(), this);
        this.f6334m = (s.f18481h && s.f18480g) ? fVar.a(com.bumptech.glide.d.e.class) ? new f() : new j1() : new m6.e();
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public final com.bumptech.glide.j b(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (l3.l.i() && !(context instanceof Application)) {
            if (context instanceof androidx.fragment.app.p) {
                return c((androidx.fragment.app.p) context);
            }
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (l3.l.h()) {
                    return b(activity.getApplicationContext());
                }
                if (activity instanceof androidx.fragment.app.p) {
                    return c((androidx.fragment.app.p) activity);
                }
                if (activity.isDestroyed()) {
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                }
                this.f6334m.a();
                FragmentManager fragmentManager = activity.getFragmentManager();
                Activity activityA = a(activity);
                boolean z10 = activityA == null || !activityA.isFinishing();
                k kVarD = d(fragmentManager);
                com.bumptech.glide.j jVar = kVarD.f6324k;
                if (jVar != null) {
                    return jVar;
                }
                com.bumptech.glide.j jVarA = this.f6333l.a(com.bumptech.glide.c.b(activity), kVarD.f6321h, kVarD.f6322i, activity);
                if (z10) {
                    jVarA.g();
                }
                kVarD.f6324k = jVarA;
                return jVarA;
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f6329h == null) {
            synchronized (this) {
                if (this.f6329h == null) {
                    this.f6329h = this.f6333l.a(com.bumptech.glide.c.b(context.getApplicationContext()), new k0(), new m0(), context.getApplicationContext());
                }
            }
        }
        return this.f6329h;
    }

    public final com.bumptech.glide.j c(androidx.fragment.app.p pVar) {
        if (l3.l.h()) {
            return b(pVar.getApplicationContext());
        }
        if (pVar.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
        this.f6334m.a();
        x xVarD0 = pVar.d0();
        Activity activityA = a(pVar);
        boolean z10 = activityA == null || !activityA.isFinishing();
        q qVarE = e(xVarD0);
        com.bumptech.glide.j jVarA = qVarE.f6354e0;
        if (jVarA == null) {
            jVarA = this.f6333l.a(com.bumptech.glide.c.b(pVar), qVarE.f6351a0, qVarE.f6352b0, pVar);
            if (z10) {
                jVarA.g();
            }
            qVarE.f6354e0 = jVarA;
        }
        return jVarA;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<android.app.FragmentManager, e3.k>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<android.app.FragmentManager, e3.k>] */
    public final k d(FragmentManager fragmentManager) {
        k kVar = (k) this.f6330i.get(fragmentManager);
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = (k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (kVar2 == null) {
            kVar2 = new k();
            kVar2.f6326m = null;
            this.f6330i.put(fragmentManager, kVar2);
            fragmentManager.beginTransaction().add(kVar2, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f6332k.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return kVar2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashMap, java.util.Map<androidx.fragment.app.x, e3.q>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<androidx.fragment.app.x, e3.q>] */
    public final q e(x xVar) {
        q qVar = (q) this.f6331j.get(xVar);
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = (q) xVar.F("com.bumptech.glide.manager");
        if (qVar2 == null) {
            qVar2 = new q();
            qVar2.f6355f0 = null;
            this.f6331j.put(xVar, qVar2);
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(xVar);
            aVar.e(0, qVar2, "com.bumptech.glide.manager", 1);
            aVar.j(true);
            this.f6332k.obtainMessage(2, xVar).sendToTarget();
        }
        return qVar2;
    }

    /* JADX WARN: Type inference failed for: r2v26, types: [java.util.HashMap, java.util.Map<androidx.fragment.app.x, e3.q>] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.HashMap, java.util.Map<android.app.FragmentManager, e3.k>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.HashMap, java.util.Map<android.app.FragmentManager, e3.k>] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.HashMap, java.util.Map<androidx.fragment.app.x, e3.q>] */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z10;
        Object objRemove;
        Object obj;
        Object obj2;
        Object obj3;
        boolean z11;
        boolean z12 = false;
        boolean z13 = true;
        boolean z14 = message.arg1 == 1;
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                z13 = false;
            } else {
                x xVar = (x) message.obj;
                q qVar = (q) this.f6331j.get(xVar);
                q qVar2 = (q) xVar.F("com.bumptech.glide.manager");
                if (qVar2 == qVar) {
                    z11 = true;
                } else {
                    if (qVar2 != null && qVar2.f6354e0 != null) {
                        throw new IllegalStateException("We've added two fragments with requests! Old: " + qVar2 + " New: " + qVar);
                    }
                    if (z14 || xVar.D) {
                        if (xVar.D) {
                            if (Log.isLoggable("RMRetriever", 5)) {
                                Log.w("RMRetriever", "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled");
                            }
                        } else if (Log.isLoggable("RMRetriever", 6)) {
                            Log.e("RMRetriever", "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you're starting loads in a unit test with an Activity that you haven't created and never create. If you're using Robolectric, create the Activity as part of your test setup");
                        }
                        qVar.f6351a0.a();
                        z11 = true;
                    } else {
                        androidx.fragment.app.a aVar = new androidx.fragment.app.a(xVar);
                        aVar.e(0, qVar, "com.bumptech.glide.manager", 1);
                        if (qVar2 != null) {
                            aVar.n(qVar2);
                        }
                        aVar.d();
                        this.f6332k.obtainMessage(2, 1, 0, xVar).sendToTarget();
                        if (Log.isLoggable("RMRetriever", 3)) {
                            Log.d("RMRetriever", "We failed to add our Fragment the first time around, trying again...");
                        }
                        z11 = false;
                    }
                }
                if (z11) {
                    objRemove = this.f6331j.remove(xVar);
                    obj = xVar;
                    obj2 = objRemove;
                    z12 = true;
                    obj3 = obj;
                }
            }
            obj3 = null;
            obj2 = null;
        } else {
            FragmentManager fragmentManager = (FragmentManager) message.obj;
            k kVar = (k) this.f6330i.get(fragmentManager);
            k kVar2 = (k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
            if (kVar2 == kVar) {
                z10 = true;
            } else {
                if (kVar2 != null && kVar2.f6324k != null) {
                    throw new IllegalStateException("We've added two fragments with requests! Old: " + kVar2 + " New: " + kVar);
                }
                if (z14 || fragmentManager.isDestroyed()) {
                    if (Log.isLoggable("RMRetriever", 5)) {
                        if (fragmentManager.isDestroyed()) {
                            Log.w("RMRetriever", "Parent was destroyed before our Fragment could be added");
                        } else {
                            Log.w("RMRetriever", "Tried adding Fragment twice and failed twice, giving up!");
                        }
                    }
                    kVar.f6321h.a();
                    z10 = true;
                } else {
                    FragmentTransaction fragmentTransactionAdd = fragmentManager.beginTransaction().add(kVar, "com.bumptech.glide.manager");
                    if (kVar2 != null) {
                        fragmentTransactionAdd.remove(kVar2);
                    }
                    fragmentTransactionAdd.commitAllowingStateLoss();
                    this.f6332k.obtainMessage(1, 1, 0, fragmentManager).sendToTarget();
                    if (Log.isLoggable("RMRetriever", 3)) {
                        Log.d("RMRetriever", "We failed to add our Fragment the first time around, trying again...");
                    }
                    z10 = false;
                }
            }
            if (z10) {
                objRemove = this.f6330i.remove(fragmentManager);
                obj = fragmentManager;
                obj2 = objRemove;
                z12 = true;
                obj3 = obj;
            } else {
                obj3 = null;
                obj2 = null;
            }
        }
        if (Log.isLoggable("RMRetriever", 5) && z12 && obj2 == null) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj3);
        }
        return z13;
    }
}
