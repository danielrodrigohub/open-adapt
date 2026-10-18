package db;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.SharedPreferences;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONArrayInstrumentation;
import ea.m;
import fd.h;
import gd.j;
import gd.k;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import v9.t;

/* JADX INFO: compiled from: AdaptKitPairedDevicesStore.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b implements db.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f6161b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f6162c = {"adaptkit_profile_v1.json"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f6163d = (h) o.x(C0110b.f6167h);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f6164e = new Object();

    /* JADX INFO: compiled from: AdaptKitPairedDevicesStore.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f6165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final m f6166b;

        public a(String str, m mVar) {
            p4.h.j(str, "pairId");
            p4.h.j(mVar, "device");
            this.f6165a = str;
            this.f6166b = mVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!p4.h.c(a.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            p4.h.h(obj, "null cannot be cast to non-null type com.nike.android.adaptkit.store.AdaptKitPairedDevicesStoreImpl.CachedDevice");
            return p4.h.c(this.f6165a, ((a) obj).f6165a);
        }

        public final int hashCode() {
            return this.f6165a.hashCode();
        }

        public final String toString() {
            return "CachedDevice(pairId=" + this.f6165a + ", device=" + this.f6166b + ")";
        }
    }

    /* JADX INFO: renamed from: db.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitPairedDevicesStore.kt */
    public static final class C0110b extends rd.o implements qd.a<SharedPreferences> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0110b f6167h = new C0110b();

        public C0110b() {
            super(0);
        }

        @Override // qd.a
        public final SharedPreferences invoke() {
            return t.f16822a.d().getSharedPreferences("adapt_kit_devices_store", 0);
        }
    }

    @Override // db.a
    public final void a(List<String> list) {
        List listN0 = n.n0(e(true));
        Iterator<T> it = list.iterator();
        while (true) {
            int i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            ArrayList arrayList = (ArrayList) listN0;
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    i10 = -1;
                    break;
                } else if (p4.h.c(((m) it2.next()).f6664h, str)) {
                    break;
                } else {
                    i10++;
                }
            }
            if (-1 != i10) {
                arrayList.remove(i10);
            }
        }
        t tVar = t.f16822a;
        AccountManager accountManager = (AccountManager) tVar.d().getSystemService(AccountManager.class);
        Account[] accountsByType = accountManager.getAccountsByType(tVar.b());
        p4.h.i(accountsByType, "accountManager.getAccoun…aptKitModule.accountType)");
        if (true ^ (accountsByType.length == 0)) {
            Account account = accountsByType[0];
            String strC = tVar.c().c();
            if (strC != null) {
                accountManager.setUserData(account, d("adaptkit_profile_v1.json", strC), JSONArrayInstrumentation.toString(f1.b.t(listN0)));
            }
        }
    }

    @Override // db.a
    public final void b(boolean z10, List<m> list) {
        synchronized (f6164e) {
            t tVar = t.f16822a;
            AccountManager accountManager = (AccountManager) tVar.d().getSystemService(AccountManager.class);
            Account[] accountsByType = accountManager.getAccountsByType(tVar.b());
            p4.h.i(accountsByType, "accountManager.getAccoun…aptKitModule.accountType)");
            if (!(accountsByType.length == 0)) {
                Account account = accountsByType[0];
                String strC = tVar.c().c();
                if (strC != null) {
                    b bVar = f6161b;
                    List<m> listN0 = n.n0(bVar.e(true));
                    accountManager.setUserData(account, bVar.d("adaptkit_profile_v1.json", strC), JSONArrayInstrumentation.toString(f1.b.t(z10 ? bVar.f(list, listN0) : bVar.g(list, listN0))));
                }
            }
        }
    }

    @Override // db.a
    public final List<m> c(boolean z10) {
        return e(z10);
    }

    public final String d(String str, String str2) {
        return a0.d.c(str, "_", str2);
    }

    public final List e(boolean z10) {
        try {
            t tVar = t.f16822a;
            String strC = tVar.c().c();
            if (strC == null) {
                return new ArrayList();
            }
            AccountManager accountManager = (AccountManager) tVar.d().getSystemService(AccountManager.class);
            List listN0 = n.n0(f1.b.s(new JSONArray(accountManager.getUserData(accountManager.getAccountsByType(tVar.b())[0], d("adaptkit_profile_v1.json", strC)))));
            ArrayList arrayList = (ArrayList) listN0;
            if (arrayList.size() > 1) {
                k.V(listN0, new c());
            }
            if (arrayList.size() > 1) {
                k.V(listN0, new d());
            }
            if (z10) {
                return listN0;
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : (ArrayList) listN0) {
                if (!((m) obj).f6676t) {
                    arrayList2.add(obj);
                }
            }
            return arrayList2;
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    public final List<m> f(List<m> list, List<m> list2) {
        Object next;
        ArrayList arrayList = new ArrayList(j.T(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(f6161b.h((m) it.next()));
        }
        Set setO0 = n.o0(arrayList);
        Iterator<T> it2 = list.iterator();
        while (true) {
            Object obj = null;
            if (!it2.hasNext()) {
                break;
            }
            m mVar = (m) it2.next();
            for (Object obj2 : list2) {
                if (p4.h.c(mVar.f6664h, ((m) obj2).f6664h)) {
                    obj = obj2;
                    break;
                }
            }
            m mVar2 = (m) obj;
            if (mVar2 == null) {
                setO0.add(new a(mVar.f6664h, mVar));
            } else if (mVar2.f6676t) {
                setO0.remove(f6161b.h(mVar));
                m mVarA = m.a(mVar2, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6143);
                setO0.add(new a(mVarA.f6664h, mVarA));
            } else if (mVar.f6673q > mVar2.f6675s) {
                setO0.remove(new a(mVar.f6664h, mVar));
                ea.b bVar = mVar.f6667k;
                ea.b bVar2 = mVar2.f6667k;
                p4.h.j(bVar2, "cached");
                p4.h.j(bVar, "remote");
                ea.b bVarA = ea.b.a(bVar, null, null, 0, p4.h.c(bVar2.f6613k, bVar.f6613k) && bVar2.f6616n, 63);
                ea.b bVar3 = mVar.f6668l;
                ea.b bVar4 = mVar2.f6668l;
                p4.h.j(bVar4, "cached");
                p4.h.j(bVar3, "remote");
                m mVarA2 = m.a(mVar, null, false, bVarA, ea.b.a(bVar3, null, null, 0, p4.h.c(bVar4.f6613k, bVar3.f6613k) && bVar4.f6616n, 63), null, null, null, Long.max(mVar.f6675s, mVar.f6673q), false, 6119);
                setO0.add(new a(mVarA2.f6664h, mVarA2));
            }
        }
        for (a aVar : n.l0(setO0)) {
            Iterator<T> it3 = list.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while (!p4.h.c(aVar.f6165a, ((m) next).f6664h));
            if (((m) next) == null && aVar.f6166b.f6676t) {
                setO0.remove(aVar);
            }
        }
        ArrayList arrayList2 = new ArrayList(j.T(setO0, 10));
        Iterator it4 = setO0.iterator();
        while (it4.hasNext()) {
            arrayList2.add(((a) it4.next()).f6166b);
        }
        return arrayList2;
    }

    public final List<m> g(List<m> list, List<m> list2) {
        Object next;
        ArrayList arrayList = new ArrayList(j.T(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(f6161b.h((m) it.next()));
        }
        List listN0 = n.n0(arrayList);
        for (m mVar : list) {
            ArrayList arrayList2 = (ArrayList) listN0;
            Iterator it2 = arrayList2.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!p4.h.c(mVar.f6664h, ((a) next).f6165a));
            a aVar = (a) next;
            if (aVar == null) {
                arrayList2.add(f6161b.h(mVar));
            } else {
                m mVar2 = aVar.f6166b;
                if (!mVar2.f6676t) {
                    if (mVar.f6676t) {
                        arrayList2.remove(new a(mVar.f6664h, mVar));
                        m mVarA = m.a(mVar, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6143);
                        arrayList2.add(new a(mVarA.f6664h, mVarA));
                    } else if (mVar.f6675s > mVar2.f6675s) {
                        arrayList2.remove(new a(mVar.f6664h, mVar));
                        arrayList2.add(new a(mVar.f6664h, mVar));
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList(j.T(listN0, 10));
        Iterator it3 = ((ArrayList) listN0).iterator();
        while (it3.hasNext()) {
            arrayList3.add(((a) it3.next()).f6166b);
        }
        return arrayList3;
    }

    public final a h(m mVar) {
        return new a(mVar.f6664h, mVar);
    }
}
