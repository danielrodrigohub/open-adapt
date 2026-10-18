package androidx.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.p;
import androidx.lifecycle.SavedStateHandleAttacher;
import androidx.lifecycle.b0;
import androidx.lifecycle.e0;
import androidx.lifecycle.g0;
import androidx.lifecycle.k0;
import androidx.lifecycle.n;
import androidx.lifecycle.n0;
import androidx.lifecycle.o;
import androidx.lifecycle.o0;
import androidx.lifecycle.p0;
import androidx.lifecycle.q;
import androidx.lifecycle.q0;
import androidx.lifecycle.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class ComponentActivity extends x.j implements o0, androidx.lifecycle.g, b1.d, j, androidx.activity.result.e {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d.a f660i = new d.a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final j0.i f661j = new j0.i();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final r f662k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b1.c f663l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public n0 f664m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final OnBackPressedDispatcher f665n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final b f666o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final CopyOnWriteArrayList<i0.a<Configuration>> f667p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final CopyOnWriteArrayList<i0.a<Integer>> f668q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final CopyOnWriteArrayList<i0.a<Intent>> f669r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final CopyOnWriteArrayList<i0.a<o>> f670s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CopyOnWriteArrayList<i0.a<p>> f671t;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                ComponentActivity.super.onBackPressed();
            } catch (IllegalStateException e10) {
                if (!TextUtils.equals(e10.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    throw e10;
                }
            }
        }
    }

    public class b extends androidx.activity.result.d {
        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.activity.result.d
        public final void c(int i10, e.a aVar, Object obj) {
            ComponentActivity componentActivity = ComponentActivity.this;
            e.a.C0114a<O> c0114aB = aVar.b(componentActivity, obj);
            if (c0114aB != null) {
                new Handler(Looper.getMainLooper()).post(new e(this, i10, c0114aB));
                return;
            }
            Intent intentA = aVar.a(componentActivity, obj);
            Bundle bundleExtra = null;
            if (intentA.getExtras() != null && intentA.getExtras().getClassLoader() == null) {
                intentA.setExtrasClassLoader(componentActivity.getClassLoader());
            }
            if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            }
            Bundle bundle = bundleExtra;
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
                String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                int i11 = x.b.f17611b;
                for (String str : stringArrayExtra) {
                    if (TextUtils.isEmpty(str)) {
                        throw new IllegalArgumentException(a1.f.d(a0.b.c("Permission request for permissions "), Arrays.toString(stringArrayExtra), " must not contain null or empty values"));
                    }
                }
                if (componentActivity instanceof x.b.c) {
                    ((x.b.c) componentActivity).A();
                }
                x.b.C0311b.b(componentActivity, stringArrayExtra, i10);
                return;
            }
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
                int i12 = x.b.f17611b;
                x.b.a.b(componentActivity, intentA, i10, bundle);
                return;
            }
            androidx.activity.result.f fVar = (androidx.activity.result.f) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                IntentSender intentSender = fVar.f728h;
                Intent intent = fVar.f729i;
                int i13 = fVar.f730j;
                int i14 = fVar.f731k;
                int i15 = x.b.f17611b;
                x.b.a.c(componentActivity, intentSender, i10, intent, i13, i14, 0, bundle);
            } catch (IntentSender.SendIntentException e10) {
                new Handler(Looper.getMainLooper()).post(new f(this, i10, e10));
            }
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public n0 f677a;
    }

    public ComponentActivity() {
        b1.b.InterfaceC0051b interfaceC0051b;
        String str;
        r rVar = new r(this);
        this.f662k = rVar;
        b1.c cVarA = b1.c.a(this);
        this.f663l = cVarA;
        this.f665n = new OnBackPressedDispatcher(new a());
        new AtomicInteger();
        this.f666o = new b();
        this.f667p = new CopyOnWriteArrayList<>();
        this.f668q = new CopyOnWriteArrayList<>();
        this.f669r = new CopyOnWriteArrayList<>();
        this.f670s = new CopyOnWriteArrayList<>();
        this.f671t = new CopyOnWriteArrayList<>();
        rVar.a(new n() { // from class: androidx.activity.ComponentActivity.3
            @Override // androidx.lifecycle.n
            public final void a(q qVar, androidx.lifecycle.i.b bVar) {
                if (bVar == androidx.lifecycle.i.b.ON_STOP) {
                    Window window = ComponentActivity.this.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        rVar.a(new n() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.n
            public final void a(q qVar, androidx.lifecycle.i.b bVar) {
                if (bVar == androidx.lifecycle.i.b.ON_DESTROY) {
                    ComponentActivity.this.f660i.f5954b = null;
                    if (ComponentActivity.this.isChangingConfigurations()) {
                        return;
                    }
                    ComponentActivity.this.P().a();
                }
            }
        });
        rVar.a(new n() { // from class: androidx.activity.ComponentActivity.5
            @Override // androidx.lifecycle.n
            public final void a(q qVar, androidx.lifecycle.i.b bVar) {
                ComponentActivity.this.b0();
                ComponentActivity.this.f662k.c(this);
            }
        });
        cVarA.b();
        androidx.lifecycle.i.c cVar = rVar.f2231c;
        p4.h.i(cVar, "lifecycle.currentState");
        if (!(cVar == androidx.lifecycle.i.c.INITIALIZED || cVar == androidx.lifecycle.i.c.CREATED)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        b1.b bVar = cVarA.f3165b;
        Objects.requireNonNull(bVar);
        Iterator<Map.Entry<String, b1.b.InterfaceC0051b>> it = bVar.f3158a.iterator();
        do {
            m.b.e eVar = (m.b.e) it;
            if (!eVar.hasNext()) {
                interfaceC0051b = null;
                break;
            }
            Map.Entry entry = (Map.Entry) eVar.next();
            p4.h.i(entry, "components");
            str = (String) entry.getKey();
            interfaceC0051b = (b1.b.InterfaceC0051b) entry.getValue();
        } while (!p4.h.c(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        if (interfaceC0051b == null) {
            g0 g0Var = new g0(this.f663l.f3165b, this);
            this.f663l.f3165b.b("androidx.lifecycle.internal.SavedStateHandlesProvider", g0Var);
            this.f662k.a(new SavedStateHandleAttacher(g0Var));
        }
        this.f663l.f3165b.b("android:support:activity-result", new b1.b.InterfaceC0051b() { // from class: androidx.activity.b
            /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
            @Override // b1.b.InterfaceC0051b
            public final Bundle a() {
                ComponentActivity componentActivity = this.f691a;
                Objects.requireNonNull(componentActivity);
                Bundle bundle = new Bundle();
                ComponentActivity.b bVar2 = componentActivity.f666o;
                Objects.requireNonNull(bVar2);
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(bVar2.f717c.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(bVar2.f717c.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(bVar2.f719e));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) bVar2.f722h.clone());
                bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", bVar2.f715a);
                return bundle;
            }
        });
        a0(new d.b() { // from class: androidx.activity.c
            /* JADX WARN: Type inference failed for: r4v13, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.String>] */
            /* JADX WARN: Type inference failed for: r5v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
            /* JADX WARN: Type inference failed for: r5v5, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
            @Override // d.b
            public final void a() {
                ComponentActivity componentActivity = this.f692a;
                Bundle bundleA = componentActivity.f663l.f3165b.a("android:support:activity-result");
                if (bundleA != null) {
                    ComponentActivity.b bVar2 = componentActivity.f666o;
                    Objects.requireNonNull(bVar2);
                    ArrayList<Integer> integerArrayList = bundleA.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    bVar2.f719e = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    bVar2.f715a = (Random) bundleA.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                    bVar2.f722h.putAll(bundleA.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                    for (int i10 = 0; i10 < stringArrayList.size(); i10++) {
                        String str2 = stringArrayList.get(i10);
                        if (bVar2.f717c.containsKey(str2)) {
                            Integer num = (Integer) bVar2.f717c.remove(str2);
                            if (!bVar2.f722h.containsKey(str2)) {
                                bVar2.f716b.remove(num);
                            }
                        }
                        bVar2.a(integerArrayList.get(i10).intValue(), stringArrayList.get(i10));
                    }
                }
            }
        });
    }

    @Override // androidx.lifecycle.g
    public final u0.a C() {
        u0.c cVar = new u0.c();
        if (getApplication() != null) {
            cVar.f15614a.put(k0.f2215h, getApplication());
        }
        cVar.f15614a.put(e0.f2182a, this);
        cVar.f15614a.put(e0.f2183b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            cVar.f15614a.put(e0.f2184c, getIntent().getExtras());
        }
        return cVar;
    }

    @Override // androidx.activity.result.e
    public final androidx.activity.result.d J() {
        return this.f666o;
    }

    @Override // androidx.lifecycle.o0
    public final n0 P() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        b0();
        return this.f664m;
    }

    @Override // x.j, androidx.lifecycle.q
    public final androidx.lifecycle.i a() {
        return this.f662k;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Set<d.b>, java.util.concurrent.CopyOnWriteArraySet] */
    public final void a0(d.b bVar) {
        d.a aVar = this.f660i;
        if (aVar.f5954b != null) {
            bVar.a();
        }
        aVar.f5953a.add(bVar);
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        c0();
        super.addContentView(view, layoutParams);
    }

    public final void b0() {
        if (this.f664m == null) {
            c cVar = (c) getLastNonConfigurationInstance();
            if (cVar != null) {
                this.f664m = cVar.f677a;
            }
            if (this.f664m == null) {
                this.f664m = new n0();
            }
        }
    }

    public final void c0() {
        p0.a(getWindow().getDecorView(), this);
        q0.a(getWindow().getDecorView(), this);
        o.H(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        p4.h.j(decorView, "<this>");
        decorView.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    @Override // androidx.activity.j
    public final OnBackPressedDispatcher e() {
        return this.f665n;
    }

    @Override // b1.d
    public final b1.b f() {
        return this.f663l.f3165b;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (this.f666o.b(i10, i11, intent)) {
            return;
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f665n.b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator<i0.a<Configuration>> it = this.f667p.iterator();
        while (it.hasNext()) {
            it.next().b(configuration);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Set<d.b>, java.util.concurrent.CopyOnWriteArraySet] */
    @Override // x.j, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f663l.c(bundle);
        d.a aVar = this.f660i;
        aVar.f5954b = this;
        Iterator it = aVar.f5953a.iterator();
        while (it.hasNext()) {
            ((d.b) it.next()).a();
        }
        super.onCreate(bundle);
        b0.c(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i10, Menu menu) {
        if (i10 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i10, menu);
        this.f661j.a(menu, getMenuInflater());
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 0) {
            return this.f661j.b(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z10) {
        Iterator<i0.a<o>> it = this.f670s.iterator();
        while (it.hasNext()) {
            it.next().b(new o());
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness", "MissingNullability"}) Intent intent) {
        super.onNewIntent(intent);
        Iterator<i0.a<Intent>> it = this.f669r.iterator();
        while (it.hasNext()) {
            it.next().b(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        Iterator<j0.k> it = this.f661j.f9193a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10) {
        Iterator<i0.a<p>> it = this.f671t.iterator();
        while (it.hasNext()) {
            it.next().b(new p());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i10, View view, Menu menu) {
        if (i10 != 0) {
            return true;
        }
        super.onPreparePanel(i10, view, menu);
        this.f661j.c(menu);
        return true;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        if (this.f666o.b(i10, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        c cVar;
        n0 n0Var = this.f664m;
        if (n0Var == null && (cVar = (c) getLastNonConfigurationInstance()) != null) {
            n0Var = cVar.f677a;
        }
        if (n0Var == null) {
            return null;
        }
        c cVar2 = new c();
        cVar2.f677a = n0Var;
        return cVar2;
    }

    @Override // x.j, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        r rVar = this.f662k;
        if (rVar instanceof r) {
            rVar.k();
        }
        super.onSaveInstanceState(bundle);
        this.f663l.d(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        super.onTrimMemory(i10);
        Iterator<i0.a<Integer>> it = this.f668q.iterator();
        while (it.hasNext()) {
            it.next().b(Integer.valueOf(i10));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (f1.a.a()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i10) {
        c0();
        super.setContentView(i10);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i10) {
        super.startActivityForResult(intent, i10);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        super.startActivityForResult(intent, i10, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z10, Configuration configuration) {
        Iterator<i0.a<o>> it = this.f670s.iterator();
        while (it.hasNext()) {
            it.next().b(new o(z10, configuration));
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z10, Configuration configuration) {
        Iterator<i0.a<p>> it = this.f671t.iterator();
        while (it.hasNext()) {
            it.next().b(new p(z10, configuration));
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        c0();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        c0();
        super.setContentView(view, layoutParams);
    }
}
