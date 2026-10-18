package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.widget.y0;
import androidx.fragment.R;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: FragmentManager.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public ArrayList<androidx.fragment.app.a> F;
    public ArrayList<Boolean> G;
    public ArrayList<androidx.fragment.app.m> H;
    public a0 I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2046b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<androidx.fragment.app.a> f2048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList<androidx.fragment.app.m> f2049e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public OnBackPressedDispatcher f2051g;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public u<?> f2061q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public r f2062r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.fragment.app.m f2063s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.fragment.app.m f2064t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public androidx.activity.result.c<Intent> f2067w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public androidx.activity.result.c<androidx.activity.result.f> f2068x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public androidx.activity.result.c<String[]> f2069y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<l> f2045a = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f0 f2047c = new f0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final v f2050f = new v(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f2052h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f2053i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map<String, Bundle> f2054j = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Map<String, Object> f2055k = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Map<androidx.fragment.app.m, HashSet<f0.d>> f2056l = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final d f2057m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final w f2058n = new w(this);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final CopyOnWriteArrayList<b0> f2059o = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2060p = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public e f2065u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public f f2066v = new f();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ArrayDeque<k> f2070z = new ArrayDeque<>();
    public g J = new g();

    /* JADX INFO: compiled from: FragmentManager.java */
    public class a implements androidx.activity.result.b<androidx.activity.result.a> {
        public a() {
        }

        @Override // androidx.activity.result.b
        public final void a(androidx.activity.result.a aVar) {
            androidx.activity.result.a aVar2 = aVar;
            k kVarPollFirst = x.this.f2070z.pollFirst();
            if (kVarPollFirst == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = kVarPollFirst.f2079h;
            int i10 = kVarPollFirst.f2080i;
            androidx.fragment.app.m mVarE = x.this.f2047c.e(str);
            if (mVarE != null) {
                mVarE.F(i10, aVar2.f713h, aVar2.f714i);
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class b implements androidx.activity.result.b<Map<String, Boolean>> {
        public b() {
        }

        @Override // androidx.activity.result.b
        @SuppressLint({"SyntheticAccessor"})
        public final void a(Map<String, Boolean> map) {
            Map<String, Boolean> map2 = map;
            ArrayList arrayList = new ArrayList(map2.values());
            int[] iArr = new int[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                iArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue() ? 0 : -1;
            }
            k kVarPollFirst = x.this.f2070z.pollFirst();
            if (kVarPollFirst == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = kVarPollFirst.f2079h;
            if (x.this.f2047c.e(str) == null) {
                Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class c extends androidx.activity.i {
        public c() {
        }

        @Override // androidx.activity.i
        public final void a() {
            x xVar = x.this;
            xVar.z(true);
            if (xVar.f2052h.f705a) {
                xVar.T();
            } else {
                xVar.f2051g.b();
            }
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class d {
        public d() {
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class e extends t {
        public e() {
        }

        @Override // androidx.fragment.app.t
        public final androidx.fragment.app.m a(ClassLoader classLoader, String str) {
            Context context = x.this.f2061q.f2037i;
            Object obj = androidx.fragment.app.m.Z;
            try {
                return t.c(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException e10) {
                throw new androidx.fragment.app.m.c(a0.d.c("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e10);
            } catch (InstantiationException e11) {
                throw new androidx.fragment.app.m.c(a0.d.c("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e11);
            } catch (NoSuchMethodException e12) {
                throw new androidx.fragment.app.m.c(a0.d.c("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e12);
            } catch (InvocationTargetException e13) {
                throw new androidx.fragment.app.m.c(a0.d.c("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e13);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class f implements s0 {
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            x.this.z(true);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class h implements b0 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.m f2077h;

        public h(androidx.fragment.app.m mVar) {
            this.f2077h = mVar;
        }

        @Override // androidx.fragment.app.b0
        public final void b(androidx.fragment.app.m mVar) {
            Objects.requireNonNull(this.f2077h);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class i implements androidx.activity.result.b<androidx.activity.result.a> {
        public i() {
        }

        @Override // androidx.activity.result.b
        public final void a(androidx.activity.result.a aVar) {
            androidx.activity.result.a aVar2 = aVar;
            k kVarPollFirst = x.this.f2070z.pollFirst();
            if (kVarPollFirst == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = kVarPollFirst.f2079h;
            int i10 = kVarPollFirst.f2080i;
            androidx.fragment.app.m mVarE = x.this.f2047c.e(str);
            if (mVarE != null) {
                mVarE.F(i10, aVar2.f713h, aVar2.f714i);
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class j extends e.a<androidx.activity.result.f, androidx.activity.result.a> {
        @Override // e.a
        public final Intent a(Context context, androidx.activity.result.f fVar) {
            Bundle bundleExtra;
            androidx.activity.result.f fVar2 = fVar;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = fVar2.f729i;
            if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    fVar2 = new androidx.activity.result.f(fVar2.f728h, null, fVar2.f730j, fVar2.f731k);
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", fVar2);
            if (x.L(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // e.a
        public final androidx.activity.result.a c(int i10, Intent intent) {
            return new androidx.activity.result.a(i10, intent);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    @SuppressLint({"BanParcelableUsage"})
    public static class k implements Parcelable {
        public static final Parcelable.Creator<k> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f2079h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2080i;

        /* JADX INFO: compiled from: FragmentManager.java */
        public class a implements Parcelable.Creator<k> {
            @Override // android.os.Parcelable.Creator
            public final k createFromParcel(Parcel parcel) {
                return new k(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final k[] newArray(int i10) {
                return new k[i10];
            }
        }

        public k(Parcel parcel) {
            this.f2079h = parcel.readString();
            this.f2080i = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f2079h);
            parcel.writeInt(this.f2080i);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public interface l {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class m implements l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2081a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2082b = 1;

        public m(int i10) {
            this.f2081a = i10;
        }

        @Override // androidx.fragment.app.x.l
        public final boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            androidx.fragment.app.m mVar = x.this.f2064t;
            if (mVar == null || this.f2081a >= 0 || !mVar.k().T()) {
                return x.this.U(arrayList, arrayList2, this.f2081a, this.f2082b);
            }
            return false;
        }
    }

    public static boolean L(int i10) {
        return Log.isLoggable("FragmentManager", i10);
    }

    public final void A(l lVar, boolean z10) {
        if (z10 && (this.f2061q == null || this.D)) {
            return;
        }
        y(z10);
        if (lVar.a(this.F, this.G)) {
            this.f2046b = true;
            try {
                W(this.F, this.G);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        g0();
        u();
        this.f2047c.b();
    }

    /* JADX WARN: Code duplicated, block: B:61:0x014f  */
    public final void B(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11) {
        ViewGroup viewGroup;
        int i12;
        boolean z10 = arrayList.get(i10).f1903p;
        ArrayList<androidx.fragment.app.m> arrayList3 = this.H;
        if (arrayList3 == null) {
            this.H = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.H.addAll(this.f2047c.i());
        androidx.fragment.app.m mVar = this.f2064t;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            int i14 = 1;
            if (i13 >= i11) {
                this.H.clear();
                if (!z10 && this.f2060p >= 1) {
                    for (int i15 = i10; i15 < i11; i15++) {
                        Iterator<g0.a> it = arrayList.get(i15).f1888a.iterator();
                        while (it.hasNext()) {
                            androidx.fragment.app.m mVar2 = it.next().f1905b;
                            if (mVar2 != null && mVar2.f1983z != null) {
                                this.f2047c.j(f(mVar2));
                            }
                        }
                    }
                }
                for (int i16 = i10; i16 < i11; i16++) {
                    androidx.fragment.app.a aVar = arrayList.get(i16);
                    if (arrayList2.get(i16).booleanValue()) {
                        aVar.h(-1);
                        aVar.m();
                    } else {
                        aVar.h(1);
                        aVar.l();
                    }
                }
                boolean zBooleanValue = arrayList2.get(i11 - 1).booleanValue();
                for (int i17 = i10; i17 < i11; i17++) {
                    androidx.fragment.app.a aVar2 = arrayList.get(i17);
                    if (zBooleanValue) {
                        for (int size = aVar2.f1888a.size() - 1; size >= 0; size--) {
                            androidx.fragment.app.m mVar3 = aVar2.f1888a.get(size).f1905b;
                            if (mVar3 != null) {
                                f(mVar3).k();
                            }
                        }
                    } else {
                        Iterator<g0.a> it2 = aVar2.f1888a.iterator();
                        while (it2.hasNext()) {
                            androidx.fragment.app.m mVar4 = it2.next().f1905b;
                            if (mVar4 != null) {
                                f(mVar4).k();
                            }
                        }
                    }
                }
                Q(this.f2060p, true);
                HashSet<p0> hashSet = new HashSet();
                for (int i18 = i10; i18 < i11; i18++) {
                    Iterator<g0.a> it3 = arrayList.get(i18).f1888a.iterator();
                    while (it3.hasNext()) {
                        androidx.fragment.app.m mVar5 = it3.next().f1905b;
                        if (mVar5 != null && (viewGroup = mVar5.L) != null) {
                            hashSet.add(p0.g(viewGroup, J()));
                        }
                    }
                }
                for (p0 p0Var : hashSet) {
                    p0Var.f2016d = zBooleanValue;
                    p0Var.h();
                    p0Var.c();
                }
                for (int i19 = i10; i19 < i11; i19++) {
                    androidx.fragment.app.a aVar3 = arrayList.get(i19);
                    if (arrayList2.get(i19).booleanValue() && aVar3.f1815s >= 0) {
                        aVar3.f1815s = -1;
                    }
                    Objects.requireNonNull(aVar3);
                }
                return;
            }
            androidx.fragment.app.a aVar4 = arrayList.get(i13);
            int i20 = 3;
            if (arrayList2.get(i13).booleanValue()) {
                int i21 = 1;
                ArrayList<androidx.fragment.app.m> arrayList4 = this.H;
                int size2 = aVar4.f1888a.size() - 1;
                while (size2 >= 0) {
                    g0.a aVar5 = aVar4.f1888a.get(size2);
                    int i22 = aVar5.f1904a;
                    if (i22 != i21) {
                        if (i22 != 3) {
                            switch (i22) {
                                case 6:
                                    arrayList4.add(aVar5.f1905b);
                                    break;
                                case 8:
                                    mVar = null;
                                    break;
                                case 9:
                                    mVar = aVar5.f1905b;
                                    break;
                                case 10:
                                    aVar5.f1911h = aVar5.f1910g;
                                    break;
                            }
                        } else {
                            arrayList4.add(aVar5.f1905b);
                        }
                        size2--;
                        i21 = 1;
                    }
                    arrayList4.remove(aVar5.f1905b);
                    size2--;
                    i21 = 1;
                }
            } else {
                ArrayList<androidx.fragment.app.m> arrayList5 = this.H;
                int i23 = 0;
                while (i23 < aVar4.f1888a.size()) {
                    g0.a aVar6 = aVar4.f1888a.get(i23);
                    int i24 = aVar6.f1904a;
                    if (i24 != i14) {
                        if (i24 != 2) {
                            if (i24 == i20 || i24 == 6) {
                                arrayList5.remove(aVar6.f1905b);
                                androidx.fragment.app.m mVar6 = aVar6.f1905b;
                                if (mVar6 == mVar) {
                                    aVar4.f1888a.add(i23, new g0.a(9, mVar6));
                                    i23++;
                                    i12 = 1;
                                    mVar = null;
                                }
                            } else if (i24 == 7) {
                                i12 = 1;
                            } else if (i24 == 8) {
                                aVar4.f1888a.add(i23, new g0.a(9, mVar));
                                i23++;
                                mVar = aVar6.f1905b;
                            }
                            i12 = 1;
                        } else {
                            androidx.fragment.app.m mVar7 = aVar6.f1905b;
                            int i25 = mVar7.E;
                            int size3 = arrayList5.size() - 1;
                            boolean z12 = false;
                            while (size3 >= 0) {
                                androidx.fragment.app.m mVar8 = arrayList5.get(size3);
                                if (mVar8.E != i25) {
                                    i25 = i25;
                                } else if (mVar8 == mVar7) {
                                    i25 = i25;
                                    z12 = true;
                                } else {
                                    if (mVar8 == mVar) {
                                        aVar4.f1888a.add(i23, new g0.a(9, mVar8));
                                        i23++;
                                        mVar = null;
                                    }
                                    g0.a aVar7 = new g0.a(3, mVar8);
                                    aVar7.f1906c = aVar6.f1906c;
                                    aVar7.f1908e = aVar6.f1908e;
                                    aVar7.f1907d = aVar6.f1907d;
                                    aVar7.f1909f = aVar6.f1909f;
                                    aVar4.f1888a.add(i23, aVar7);
                                    arrayList5.remove(mVar8);
                                    i23++;
                                }
                                size3--;
                                i25 = i25;
                            }
                            if (z12) {
                                aVar4.f1888a.remove(i23);
                                i23--;
                                i12 = 1;
                            } else {
                                i12 = 1;
                                aVar6.f1904a = 1;
                                arrayList5.add(mVar7);
                            }
                        }
                        i23 += i12;
                        i14 = i12;
                        i20 = 3;
                    } else {
                        i12 = i14;
                    }
                    arrayList5.add(aVar6.f1905b);
                    i23 += i12;
                    i14 = i12;
                    i20 = 3;
                }
            }
            z11 = z11 || aVar4.f1894g;
            i13++;
        }
    }

    public final void C(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
    }

    public final androidx.fragment.app.m D(String str) {
        return this.f2047c.d(str);
    }

    public final androidx.fragment.app.m E(int i10) {
        f0 f0Var = this.f2047c;
        int size = f0Var.f1882a.size();
        while (true) {
            size--;
            if (size < 0) {
                for (e0 e0Var : f0Var.f1883b.values()) {
                    if (e0Var != null) {
                        androidx.fragment.app.m mVar = e0Var.f1874c;
                        if (mVar.D == i10) {
                            return mVar;
                        }
                    }
                }
                return null;
            }
            androidx.fragment.app.m mVar2 = f0Var.f1882a.get(size);
            if (mVar2 != null && mVar2.D == i10) {
                return mVar2;
            }
        }
    }

    public final androidx.fragment.app.m F(String str) {
        f0 f0Var = this.f2047c;
        Objects.requireNonNull(f0Var);
        if (str != null) {
            int size = f0Var.f1882a.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                androidx.fragment.app.m mVar = f0Var.f1882a.get(size);
                if (mVar != null && str.equals(mVar.F)) {
                    return mVar;
                }
            }
        }
        if (str != null) {
            for (e0 e0Var : f0Var.f1883b.values()) {
                if (e0Var != null) {
                    androidx.fragment.app.m mVar2 = e0Var.f1874c;
                    if (str.equals(mVar2.F)) {
                        return mVar2;
                    }
                }
            }
        }
        return null;
    }

    public final ViewGroup G(androidx.fragment.app.m mVar) {
        ViewGroup viewGroup = mVar.L;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (mVar.E > 0 && this.f2062r.i()) {
            View viewH = this.f2062r.h(mVar.E);
            if (viewH instanceof ViewGroup) {
                return (ViewGroup) viewH;
            }
        }
        return null;
    }

    public final t H() {
        androidx.fragment.app.m mVar = this.f2063s;
        return mVar != null ? mVar.f1983z.H() : this.f2065u;
    }

    public final List<androidx.fragment.app.m> I() {
        return this.f2047c.i();
    }

    public final s0 J() {
        androidx.fragment.app.m mVar = this.f2063s;
        return mVar != null ? mVar.f1983z.J() : this.f2066v;
    }

    public final void K(androidx.fragment.app.m mVar) {
        if (L(2)) {
            Log.v("FragmentManager", "hide: " + mVar);
        }
        if (mVar.G) {
            return;
        }
        mVar.G = true;
        mVar.Q = true ^ mVar.Q;
        d0(mVar);
    }

    public final boolean M(androidx.fragment.app.m mVar) {
        y yVar = mVar.B;
        boolean zM = false;
        for (androidx.fragment.app.m mVar2 : (ArrayList) yVar.f2047c.g()) {
            if (mVar2 != null) {
                zM = yVar.M(mVar2);
            }
            if (zM) {
                return true;
            }
        }
        return false;
    }

    public final boolean N(androidx.fragment.app.m mVar) {
        x xVar;
        if (mVar == null) {
            return true;
        }
        return mVar.J && ((xVar = mVar.f1983z) == null || xVar.N(mVar.C));
    }

    public final boolean O(androidx.fragment.app.m mVar) {
        if (mVar == null) {
            return true;
        }
        x xVar = mVar.f1983z;
        return mVar.equals(xVar.f2064t) && O(xVar.f2063s);
    }

    public final boolean P() {
        return this.B || this.C;
    }

    public final void Q(int i10, boolean z10) {
        u<?> uVar;
        if (this.f2061q == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z10 || i10 != this.f2060p) {
            this.f2060p = i10;
            f0 f0Var = this.f2047c;
            Iterator<androidx.fragment.app.m> it = f0Var.f1882a.iterator();
            while (it.hasNext()) {
                e0 e0Var = f0Var.f1883b.get(it.next().f1970m);
                if (e0Var != null) {
                    e0Var.k();
                }
            }
            Iterator<e0> it2 = f0Var.f1883b.values().iterator();
            while (true) {
                boolean z11 = false;
                if (!it2.hasNext()) {
                    break;
                }
                e0 next = it2.next();
                if (next != null) {
                    next.k();
                    androidx.fragment.app.m mVar = next.f1874c;
                    if (mVar.f1977t && !mVar.D()) {
                        z11 = true;
                    }
                    if (z11) {
                        f0Var.k(next);
                    }
                }
            }
            f0();
            if (this.A && (uVar = this.f2061q) != null && this.f2060p == 7) {
                uVar.m();
                this.A = false;
            }
        }
    }

    public final void R() {
        if (this.f2061q == null) {
            return;
        }
        this.B = false;
        this.C = false;
        this.I.f1822h = false;
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                mVar.B.R();
            }
        }
    }

    public final void S(e0 e0Var) {
        androidx.fragment.app.m mVar = e0Var.f1874c;
        if (mVar.N) {
            if (this.f2046b) {
                this.E = true;
            } else {
                mVar.N = false;
                e0Var.k();
            }
        }
    }

    public final boolean T() {
        z(false);
        y(true);
        androidx.fragment.app.m mVar = this.f2064t;
        if (mVar != null && mVar.k().T()) {
            return true;
        }
        boolean zU = U(this.F, this.G, -1, 0);
        if (zU) {
            this.f2046b = true;
            try {
                W(this.F, this.G);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        g0();
        u();
        this.f2047c.b();
        return zU;
    }

    public final boolean U(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        androidx.fragment.app.a aVar;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f2048d;
        if (arrayList3 == null) {
            return false;
        }
        if (i10 >= 0 || (i11 & 1) != 0) {
            int i12 = -1;
            if (i10 >= 0) {
                int size = arrayList3.size() - 1;
                while (size >= 0) {
                    androidx.fragment.app.a aVar2 = this.f2048d.get(size);
                    if (i10 >= 0 && i10 == aVar2.f1815s) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i11 & 1) != 0) {
                    do {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        aVar = this.f2048d.get(size);
                        if (i10 < 0) {
                            break;
                        }
                    } while (i10 == aVar.f1815s);
                }
                i12 = size;
            }
            if (i12 == this.f2048d.size() - 1) {
                return false;
            }
            for (int size2 = this.f2048d.size() - 1; size2 > i12; size2--) {
                arrayList.add(this.f2048d.remove(size2));
                arrayList2.add(Boolean.TRUE);
            }
        } else {
            int size3 = arrayList3.size() - 1;
            if (size3 < 0) {
                return false;
            }
            arrayList.add(this.f2048d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void V(androidx.fragment.app.m mVar) {
        if (L(2)) {
            Log.v("FragmentManager", "remove: " + mVar + " nesting=" + mVar.f1982y);
        }
        boolean z10 = !mVar.D();
        if (!mVar.H || z10) {
            f0 f0Var = this.f2047c;
            synchronized (f0Var.f1882a) {
                f0Var.f1882a.remove(mVar);
            }
            mVar.f1976s = false;
            if (M(mVar)) {
                this.A = true;
            }
            mVar.f1977t = true;
            d0(mVar);
        }
    }

    public final void W(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        C(arrayList, arrayList2);
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (!arrayList.get(i10).f1903p) {
                if (i11 != i10) {
                    B(arrayList, arrayList2, i11, i10);
                }
                i11 = i10 + 1;
                if (arrayList2.get(i10).booleanValue()) {
                    while (i11 < size && arrayList2.get(i11).booleanValue() && !arrayList.get(i11).f1903p) {
                        i11++;
                    }
                }
                B(arrayList, arrayList2, i10, i11);
                i10 = i11 - 1;
            }
            i10++;
        }
        if (i11 != size) {
            B(arrayList, arrayList2, i11, size);
        }
    }

    public final void X(Parcelable parcelable) {
        e0 e0Var;
        if (parcelable == null) {
            return;
        }
        z zVar = (z) parcelable;
        if (zVar.f2084h == null) {
            return;
        }
        this.f2047c.f1883b.clear();
        for (d0 d0Var : zVar.f2084h) {
            if (d0Var != null) {
                androidx.fragment.app.m mVar = this.I.f1817c.get(d0Var.f1859i);
                if (mVar != null) {
                    if (L(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + mVar);
                    }
                    e0Var = new e0(this.f2058n, this.f2047c, mVar, d0Var);
                } else {
                    e0Var = new e0(this.f2058n, this.f2047c, this.f2061q.f2037i.getClassLoader(), H(), d0Var);
                }
                androidx.fragment.app.m mVar2 = e0Var.f1874c;
                mVar2.f1983z = this;
                if (L(2)) {
                    StringBuilder sbC = a0.b.c("restoreSaveState: active (");
                    sbC.append(mVar2.f1970m);
                    sbC.append("): ");
                    sbC.append(mVar2);
                    Log.v("FragmentManager", sbC.toString());
                }
                e0Var.m(this.f2061q.f2037i.getClassLoader());
                this.f2047c.j(e0Var);
                e0Var.f1876e = this.f2060p;
            }
        }
        a0 a0Var = this.I;
        Objects.requireNonNull(a0Var);
        for (androidx.fragment.app.m mVar3 : new ArrayList(a0Var.f1817c.values())) {
            if (!this.f2047c.c(mVar3.f1970m)) {
                if (L(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + mVar3 + " that was not found in the set of active Fragments " + zVar.f2084h);
                }
                this.I.b(mVar3);
                mVar3.f1983z = this;
                e0 e0Var2 = new e0(this.f2058n, this.f2047c, mVar3);
                e0Var2.f1876e = 1;
                e0Var2.k();
                mVar3.f1977t = true;
                e0Var2.k();
            }
        }
        f0 f0Var = this.f2047c;
        ArrayList<String> arrayList = zVar.f2085i;
        f0Var.f1882a.clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                androidx.fragment.app.m mVarD = f0Var.d(str);
                if (mVarD == null) {
                    throw new IllegalStateException(a0.d.c("No instantiated fragment for (", str, ")"));
                }
                if (L(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + mVarD);
                }
                f0Var.a(mVarD);
            }
        }
        androidx.fragment.app.m mVar4 = null;
        if (zVar.f2086j != null) {
            this.f2048d = new ArrayList<>(zVar.f2086j.length);
            int i10 = 0;
            while (true) {
                androidx.fragment.app.b[] bVarArr = zVar.f2086j;
                if (i10 >= bVarArr.length) {
                    break;
                }
                androidx.fragment.app.b bVar = bVarArr[i10];
                Objects.requireNonNull(bVar);
                androidx.fragment.app.a aVar = new androidx.fragment.app.a(this);
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    int[] iArr = bVar.f1823h;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    g0.a aVar2 = new g0.a();
                    int i13 = i11 + 1;
                    aVar2.f1904a = iArr[i11];
                    if (L(2)) {
                        Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i12 + " base fragment #" + bVar.f1823h[i13]);
                    }
                    String str2 = bVar.f1824i.get(i12);
                    if (str2 != null) {
                        aVar2.f1905b = D(str2);
                    } else {
                        aVar2.f1905b = mVar4;
                    }
                    aVar2.f1910g = androidx.lifecycle.i.c.values()[bVar.f1825j[i12]];
                    aVar2.f1911h = androidx.lifecycle.i.c.values()[bVar.f1826k[i12]];
                    int[] iArr2 = bVar.f1823h;
                    int i14 = i13 + 1;
                    int i15 = iArr2[i13];
                    aVar2.f1906c = i15;
                    int i16 = i14 + 1;
                    int i17 = iArr2[i14];
                    aVar2.f1907d = i17;
                    int i18 = i16 + 1;
                    int i19 = iArr2[i16];
                    aVar2.f1908e = i19;
                    int i20 = iArr2[i18];
                    aVar2.f1909f = i20;
                    aVar.f1889b = i15;
                    aVar.f1890c = i17;
                    aVar.f1891d = i19;
                    aVar.f1892e = i20;
                    aVar.b(aVar2);
                    i12++;
                    mVar4 = null;
                    i11 = i18 + 1;
                }
                aVar.f1893f = bVar.f1827l;
                aVar.f1896i = bVar.f1828m;
                aVar.f1815s = bVar.f1829n;
                aVar.f1894g = true;
                aVar.f1897j = bVar.f1830o;
                aVar.f1898k = bVar.f1831p;
                aVar.f1899l = bVar.f1832q;
                aVar.f1900m = bVar.f1833r;
                aVar.f1901n = bVar.f1834s;
                aVar.f1902o = bVar.f1835t;
                aVar.f1903p = bVar.f1836u;
                aVar.h(1);
                if (L(2)) {
                    StringBuilder sbC2 = y0.c("restoreAllState: back stack #", i10, " (index ");
                    sbC2.append(aVar.f1815s);
                    sbC2.append("): ");
                    sbC2.append(aVar);
                    Log.v("FragmentManager", sbC2.toString());
                    PrintWriter printWriter = new PrintWriter(new m0());
                    aVar.k("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2048d.add(aVar);
                i10++;
                mVar4 = null;
            }
        } else {
            this.f2048d = null;
        }
        this.f2053i.set(zVar.f2087k);
        String str3 = zVar.f2088l;
        if (str3 != null) {
            androidx.fragment.app.m mVarD2 = D(str3);
            this.f2064t = mVarD2;
            q(mVarD2);
        }
        ArrayList<String> arrayList2 = zVar.f2089m;
        if (arrayList2 != null) {
            for (int i21 = 0; i21 < arrayList2.size(); i21++) {
                Bundle bundle = zVar.f2090n.get(i21);
                bundle.setClassLoader(this.f2061q.f2037i.getClassLoader());
                this.f2054j.put(arrayList2.get(i21), bundle);
            }
        }
        this.f2070z = new ArrayDeque<>(zVar.f2091o);
    }

    public final Parcelable Y() {
        int i10;
        androidx.fragment.app.b[] bVarArr;
        ArrayList<String> arrayList;
        int size;
        Iterator it = ((HashSet) e()).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            p0 p0Var = (p0) it.next();
            if (p0Var.f2017e) {
                p0Var.f2017e = false;
                p0Var.c();
            }
        }
        w();
        z(true);
        this.B = true;
        this.I.f1822h = true;
        f0 f0Var = this.f2047c;
        Objects.requireNonNull(f0Var);
        ArrayList<d0> arrayList2 = new ArrayList<>(f0Var.f1883b.size());
        Iterator<e0> it2 = f0Var.f1883b.values().iterator();
        while (true) {
            bVarArr = null;
            bVarArr = null;
            if (!it2.hasNext()) {
                break;
            }
            e0 next = it2.next();
            if (next != null) {
                androidx.fragment.app.m mVar = next.f1874c;
                d0 d0Var = new d0(mVar);
                androidx.fragment.app.m mVar2 = next.f1874c;
                if (mVar2.f1965h <= -1 || d0Var.f1870t != null) {
                    d0Var.f1870t = mVar2.f1966i;
                } else {
                    Bundle bundle = new Bundle();
                    androidx.fragment.app.m mVar3 = next.f1874c;
                    mVar3.R(bundle);
                    mVar3.X.d(bundle);
                    Parcelable parcelableY = mVar3.B.Y();
                    if (parcelableY != null) {
                        bundle.putParcelable("android:support:fragments", parcelableY);
                    }
                    next.f1872a.j(next.f1874c, bundle, false);
                    Bundle bundle2 = bundle.isEmpty() ? null : bundle;
                    if (next.f1874c.M != null) {
                        next.o();
                    }
                    if (next.f1874c.f1967j != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", next.f1874c.f1967j);
                    }
                    if (next.f1874c.f1968k != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", next.f1874c.f1968k);
                    }
                    if (!next.f1874c.O) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", next.f1874c.O);
                    }
                    d0Var.f1870t = bundle2;
                    if (next.f1874c.f1973p != null) {
                        if (bundle2 == null) {
                            d0Var.f1870t = new Bundle();
                        }
                        d0Var.f1870t.putString("android:target_state", next.f1874c.f1973p);
                        int i11 = next.f1874c.f1974q;
                        if (i11 != 0) {
                            d0Var.f1870t.putInt("android:target_req_state", i11);
                        }
                    }
                }
                arrayList2.add(d0Var);
                if (L(2)) {
                    Log.v("FragmentManager", "Saved state of " + mVar + ": " + d0Var.f1870t);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (L(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        f0 f0Var2 = this.f2047c;
        synchronized (f0Var2.f1882a) {
            if (f0Var2.f1882a.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>(f0Var2.f1882a.size());
                for (androidx.fragment.app.m mVar4 : f0Var2.f1882a) {
                    arrayList.add(mVar4.f1970m);
                    if (L(2)) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + mVar4.f1970m + "): " + mVar4);
                    }
                }
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f2048d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (i10 = 0; i10 < size; i10++) {
                bVarArr[i10] = new androidx.fragment.app.b(this.f2048d.get(i10));
                if (L(2)) {
                    StringBuilder sbC = y0.c("saveAllState: adding back stack #", i10, ": ");
                    sbC.append(this.f2048d.get(i10));
                    Log.v("FragmentManager", sbC.toString());
                }
            }
        }
        z zVar = new z();
        zVar.f2084h = arrayList2;
        zVar.f2085i = arrayList;
        zVar.f2086j = bVarArr;
        zVar.f2087k = this.f2053i.get();
        androidx.fragment.app.m mVar5 = this.f2064t;
        if (mVar5 != null) {
            zVar.f2088l = mVar5.f1970m;
        }
        zVar.f2089m.addAll(this.f2054j.keySet());
        zVar.f2090n.addAll(this.f2054j.values());
        zVar.f2091o = new ArrayList<>(this.f2070z);
        return zVar;
    }

    public final void Z() {
        synchronized (this.f2045a) {
            if (this.f2045a.size() == 1) {
                this.f2061q.f2038j.removeCallbacks(this.J);
                this.f2061q.f2038j.post(this.J);
                g0();
            }
        }
    }

    public final e0 a(androidx.fragment.app.m mVar) {
        if (L(2)) {
            Log.v("FragmentManager", "add: " + mVar);
        }
        e0 e0VarF = f(mVar);
        mVar.f1983z = this;
        this.f2047c.j(e0VarF);
        if (!mVar.H) {
            this.f2047c.a(mVar);
            mVar.f1977t = false;
            if (mVar.M == null) {
                mVar.Q = false;
            }
            if (M(mVar)) {
                this.A = true;
            }
        }
        return e0VarF;
    }

    public final void a0(androidx.fragment.app.m mVar, boolean z10) {
        ViewGroup viewGroupG = G(mVar);
        if (viewGroupG == null || !(viewGroupG instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupG).setDrawDisappearingViewsLast(!z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    public final void b(u<?> uVar, r rVar, androidx.fragment.app.m mVar) {
        androidx.lifecycle.q qVar;
        if (this.f2061q != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f2061q = uVar;
        this.f2062r = rVar;
        this.f2063s = mVar;
        if (mVar != null) {
            this.f2059o.add(new h(mVar));
        } else if (uVar instanceof b0) {
            this.f2059o.add((b0) uVar);
        }
        if (this.f2063s != null) {
            g0();
        }
        if (uVar instanceof androidx.activity.j) {
            androidx.activity.j jVar = (androidx.activity.j) uVar;
            OnBackPressedDispatcher onBackPressedDispatcherE = jVar.e();
            this.f2051g = onBackPressedDispatcherE;
            if (mVar != null) {
                qVar = jVar;
                qVar = mVar;
            }
            qVar = jVar;
            onBackPressedDispatcherE.a(qVar, this.f2052h);
        }
        if (mVar != null) {
            a0 a0Var = mVar.f1983z.I;
            a0 a0Var2 = a0Var.f1818d.get(mVar.f1970m);
            if (a0Var2 == null) {
                a0Var2 = new a0(a0Var.f1820f);
                a0Var.f1818d.put(mVar.f1970m, a0Var2);
            }
            this.I = a0Var2;
        } else if (uVar instanceof androidx.lifecycle.o0) {
            androidx.lifecycle.n0 n0VarP = ((androidx.lifecycle.o0) uVar).P();
            a0.a aVar = a0.f1816i;
            p4.h.j(n0VarP, "store");
            p4.h.j(aVar, "factory");
            this.I = (a0) new androidx.lifecycle.l0(n0VarP, aVar, u0.a.C0269a.f15615b).a(a0.class);
        } else {
            this.I = new a0(false);
        }
        this.I.f1822h = P();
        this.f2047c.f1884c = this.I;
        i8.e eVar = this.f2061q;
        if (eVar instanceof androidx.activity.result.e) {
            androidx.activity.result.d dVarJ = ((androidx.activity.result.e) eVar).J();
            String strC = androidx.recyclerview.widget.d.c("FragmentManager:", mVar != null ? a1.f.d(new StringBuilder(), mVar.f1970m, ":") : "");
            this.f2067w = (androidx.activity.result.d.a) dVarJ.d(androidx.recyclerview.widget.d.c(strC, "StartActivityForResult"), new e.c(), new i());
            this.f2068x = (androidx.activity.result.d.a) dVarJ.d(androidx.recyclerview.widget.d.c(strC, "StartIntentSenderForResult"), new j(), new a());
            this.f2069y = (androidx.activity.result.d.a) dVarJ.d(androidx.recyclerview.widget.d.c(strC, "RequestPermissions"), new e.b(), new b());
        }
    }

    public final void b0(androidx.fragment.app.m mVar, androidx.lifecycle.i.c cVar) {
        if (mVar.equals(D(mVar.f1970m)) && (mVar.A == null || mVar.f1983z == this)) {
            mVar.T = cVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + mVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void c(androidx.fragment.app.m mVar) {
        if (L(2)) {
            Log.v("FragmentManager", "attach: " + mVar);
        }
        if (mVar.H) {
            mVar.H = false;
            if (mVar.f1976s) {
                return;
            }
            this.f2047c.a(mVar);
            if (L(2)) {
                Log.v("FragmentManager", "add from attach: " + mVar);
            }
            if (M(mVar)) {
                this.A = true;
            }
        }
    }

    public final void c0(androidx.fragment.app.m mVar) {
        if (mVar == null || (mVar.equals(D(mVar.f1970m)) && (mVar.A == null || mVar.f1983z == this))) {
            androidx.fragment.app.m mVar2 = this.f2064t;
            this.f2064t = mVar;
            q(mVar2);
            q(this.f2064t);
            return;
        }
        throw new IllegalArgumentException("Fragment " + mVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void d() {
        this.f2046b = false;
        this.G.clear();
        this.F.clear();
    }

    public final void d0(androidx.fragment.app.m mVar) {
        ViewGroup viewGroupG = G(mVar);
        if (viewGroupG != null) {
            if (mVar.u() + mVar.t() + mVar.n() + mVar.m() > 0) {
                int i10 = R.id.visible_removing_fragment_view_tag;
                if (viewGroupG.getTag(i10) == null) {
                    viewGroupG.setTag(i10, mVar);
                }
                ((androidx.fragment.app.m) viewGroupG.getTag(i10)).m0(mVar.s());
            }
        }
    }

    public final Set<p0> e() {
        HashSet hashSet = new HashSet();
        Iterator it = ((ArrayList) this.f2047c.f()).iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((e0) it.next()).f1874c.L;
            if (viewGroup != null) {
                hashSet.add(p0.g(viewGroup, J()));
            }
        }
        return hashSet;
    }

    public final void e0(androidx.fragment.app.m mVar) {
        if (L(2)) {
            Log.v("FragmentManager", "show: " + mVar);
        }
        if (mVar.G) {
            mVar.G = false;
            mVar.Q = !mVar.Q;
        }
    }

    public final e0 f(androidx.fragment.app.m mVar) {
        e0 e0VarH = this.f2047c.h(mVar.f1970m);
        if (e0VarH != null) {
            return e0VarH;
        }
        e0 e0Var = new e0(this.f2058n, this.f2047c, mVar);
        e0Var.m(this.f2061q.f2037i.getClassLoader());
        e0Var.f1876e = this.f2060p;
        return e0Var;
    }

    public final void f0() {
        Iterator it = ((ArrayList) this.f2047c.f()).iterator();
        while (it.hasNext()) {
            S((e0) it.next());
        }
    }

    public final void g(androidx.fragment.app.m mVar) {
        if (L(2)) {
            Log.v("FragmentManager", "detach: " + mVar);
        }
        if (mVar.H) {
            return;
        }
        mVar.H = true;
        if (mVar.f1976s) {
            if (L(2)) {
                Log.v("FragmentManager", "remove from detach: " + mVar);
            }
            f0 f0Var = this.f2047c;
            synchronized (f0Var.f1882a) {
                f0Var.f1882a.remove(mVar);
            }
            mVar.f1976s = false;
            if (M(mVar)) {
                this.A = true;
            }
            d0(mVar);
        }
    }

    public final void g0() {
        synchronized (this.f2045a) {
            if (!this.f2045a.isEmpty()) {
                this.f2052h.f705a = true;
                return;
            }
            c cVar = this.f2052h;
            ArrayList<androidx.fragment.app.a> arrayList = this.f2048d;
            cVar.f705a = (arrayList != null ? arrayList.size() : 0) > 0 && O(this.f2063s);
        }
    }

    public final void h(Configuration configuration) {
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                mVar.onConfigurationChanged(configuration);
                mVar.B.h(configuration);
            }
        }
    }

    public final boolean i(MenuItem menuItem) {
        if (this.f2060p < 1) {
            return false;
        }
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                if (!mVar.G ? mVar.B.i(menuItem) : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void j() {
        this.B = false;
        this.C = false;
        this.I.f1822h = false;
        t(1);
    }

    public final boolean k(Menu menu, MenuInflater menuInflater) {
        if (this.f2060p < 1) {
            return false;
        }
        ArrayList<androidx.fragment.app.m> arrayList = null;
        boolean z10 = false;
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null && N(mVar)) {
                if (!mVar.G ? mVar.B.k(menu, menuInflater) | false : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(mVar);
                    z10 = true;
                }
            }
        }
        if (this.f2049e != null) {
            for (int i10 = 0; i10 < this.f2049e.size(); i10++) {
                androidx.fragment.app.m mVar2 = this.f2049e.get(i10);
                if (arrayList == null || !arrayList.contains(mVar2)) {
                    Objects.requireNonNull(mVar2);
                }
            }
        }
        this.f2049e = arrayList;
        return z10;
    }

    public final void l() {
        this.D = true;
        z(true);
        w();
        t(-1);
        this.f2061q = null;
        this.f2062r = null;
        this.f2063s = null;
        if (this.f2051g != null) {
            Iterator<androidx.activity.a> it = this.f2052h.f706b.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.f2051g = null;
        }
        androidx.activity.result.c<Intent> cVar = this.f2067w;
        if (cVar != null) {
            cVar.b();
            this.f2068x.b();
            this.f2069y.b();
        }
    }

    public final void m() {
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                mVar.Z();
            }
        }
    }

    public final void n(boolean z10) {
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                mVar.a0(z10);
            }
        }
    }

    public final boolean o(MenuItem menuItem) {
        if (this.f2060p < 1) {
            return false;
        }
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                if (!mVar.G ? mVar.B.o(menuItem) : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void p(Menu menu) {
        if (this.f2060p < 1) {
            return;
        }
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null && !mVar.G) {
                mVar.B.p(menu);
            }
        }
    }

    public final void q(androidx.fragment.app.m mVar) {
        if (mVar == null || !mVar.equals(D(mVar.f1970m))) {
            return;
        }
        boolean zO = mVar.f1983z.O(mVar);
        Boolean bool = mVar.f1975r;
        if (bool == null || bool.booleanValue() != zO) {
            mVar.f1975r = Boolean.valueOf(zO);
            y yVar = mVar.B;
            yVar.g0();
            yVar.q(yVar.f2064t);
        }
    }

    public final void r(boolean z10) {
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null) {
                mVar.b0(z10);
            }
        }
    }

    public final boolean s(Menu menu) {
        boolean z10 = false;
        if (this.f2060p < 1) {
            return false;
        }
        for (androidx.fragment.app.m mVar : this.f2047c.i()) {
            if (mVar != null && N(mVar) && mVar.c0(menu)) {
                z10 = true;
            }
        }
        return z10;
    }

    public final void t(int i10) {
        try {
            this.f2046b = true;
            for (e0 e0Var : this.f2047c.f1883b.values()) {
                if (e0Var != null) {
                    e0Var.f1876e = i10;
                }
            }
            Q(i10, false);
            Iterator it = ((HashSet) e()).iterator();
            while (it.hasNext()) {
                ((p0) it.next()).e();
            }
            this.f2046b = false;
            z(true);
        } catch (Throwable th) {
            this.f2046b = false;
            throw th;
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        androidx.fragment.app.m mVar = this.f2063s;
        if (mVar != null) {
            sb2.append(mVar.getClass().getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(this.f2063s)));
            sb2.append("}");
        } else {
            u<?> uVar = this.f2061q;
            if (uVar != null) {
                sb2.append(uVar.getClass().getSimpleName());
                sb2.append("{");
                sb2.append(Integer.toHexString(System.identityHashCode(this.f2061q)));
                sb2.append("}");
            } else {
                sb2.append(SafeJsonPrimitive.NULL_STRING);
            }
        }
        sb2.append("}}");
        return sb2.toString();
    }

    public final void u() {
        if (this.E) {
            this.E = false;
            f0();
        }
    }

    public final void v(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String strC = androidx.recyclerview.widget.d.c(str, "    ");
        f0 f0Var = this.f2047c;
        Objects.requireNonNull(f0Var);
        String str2 = str + "    ";
        if (!f0Var.f1883b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (e0 e0Var : f0Var.f1883b.values()) {
                printWriter.print(str);
                if (e0Var != null) {
                    androidx.fragment.app.m mVar = e0Var.f1874c;
                    printWriter.println(mVar);
                    mVar.g(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(SafeJsonPrimitive.NULL_STRING);
                }
            }
        }
        int size3 = f0Var.f1882a.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size3; i10++) {
                androidx.fragment.app.m mVar2 = f0Var.f1882a.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(mVar2.toString());
            }
        }
        ArrayList<androidx.fragment.app.m> arrayList = this.f2049e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i11 = 0; i11 < size2; i11++) {
                androidx.fragment.app.m mVar3 = this.f2049e.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(mVar3.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f2048d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i12 = 0; i12 < size; i12++) {
                androidx.fragment.app.a aVar = this.f2048d.get(i12);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i12);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.k(strC, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f2053i.get());
        synchronized (this.f2045a) {
            int size4 = this.f2045a.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i13 = 0; i13 < size4; i13++) {
                    Object obj = (l) this.f2045a.get(i13);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i13);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2061q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2062r);
        if (this.f2063s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2063s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2060p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.B);
        printWriter.print(" mStopped=");
        printWriter.print(this.C);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.D);
        if (this.A) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.A);
        }
    }

    public final void w() {
        Iterator it = ((HashSet) e()).iterator();
        while (it.hasNext()) {
            ((p0) it.next()).e();
        }
    }

    public final void x(l lVar, boolean z10) {
        if (!z10) {
            if (this.f2061q == null) {
                if (!this.D) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (P()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f2045a) {
            if (this.f2061q == null) {
                if (!z10) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f2045a.add(lVar);
                Z();
            }
        }
    }

    public final void y(boolean z10) {
        if (this.f2046b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f2061q == null) {
            if (!this.D) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f2061q.f2038j.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z10 && P()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.F == null) {
            this.F = new ArrayList<>();
            this.G = new ArrayList<>();
        }
        this.f2046b = true;
        try {
            C(null, null);
        } finally {
            this.f2046b = false;
        }
    }

    public final boolean z(boolean z10) {
        boolean zA;
        y(z10);
        boolean z11 = false;
        while (true) {
            ArrayList<androidx.fragment.app.a> arrayList = this.F;
            ArrayList<Boolean> arrayList2 = this.G;
            synchronized (this.f2045a) {
                if (this.f2045a.isEmpty()) {
                    zA = false;
                } else {
                    int size = this.f2045a.size();
                    zA = false;
                    for (int i10 = 0; i10 < size; i10++) {
                        zA |= this.f2045a.get(i10).a(arrayList, arrayList2);
                    }
                    this.f2045a.clear();
                    this.f2061q.f2038j.removeCallbacks(this.J);
                }
            }
            if (!zA) {
                g0();
                u();
                this.f2047c.b();
                return z11;
            }
            this.f2046b = true;
            try {
                W(this.F, this.G);
                d();
                z11 = true;
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
    }
}
