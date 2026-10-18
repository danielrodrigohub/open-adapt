package com.nike.adapt.ui.settings;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.coroutine.MainCoroutineScope;
import f.e;
import fd.d;
import h8.c;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import ld.i;
import o8.k;
import p4.h;
import q7.e2;
import q7.m0;
import qd.l;
import qd.p;
import rd.w;
import s9.y;

/* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsPrivacyActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int D = 0;
    public m0 A;
    public final d B = o.w(3, a.f5838h);
    public final MainCoroutineScope C = new MainCoroutineScope();

    /* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
    public static final class a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5838h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return c.f8298b;
        }
    }

    /* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
    @ld.e(c = "com.nike.adapt.ui.settings.SettingsPrivacyActivity$getFlagAndUpdateUi$1", f = "DataOptInSwitchPreference.kt", l = {61, 67}, m = "invokeSuspend")
    public static final class b extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public w f5839h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f5840i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ boolean f5841j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ SettingsPrivacyActivity f5842k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final /* synthetic */ boolean f5843l;

        /* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
        @ld.e(c = "com.nike.adapt.ui.settings.SettingsPrivacyActivity$getFlagAndUpdateUi$1$1", f = "DataOptInSwitchPreference.kt", l = {63, 65}, m = "invokeSuspend")
        public static final class a extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public w f5844h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f5845i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ w<Boolean> f5846j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final /* synthetic */ boolean f5847k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public final /* synthetic */ SettingsPrivacyActivity f5848l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(w<Boolean> wVar, boolean z10, SettingsPrivacyActivity settingsPrivacyActivity, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f5846j = wVar;
                this.f5847k = z10;
                this.f5848l = settingsPrivacyActivity;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f5846j, this.f5847k, this.f5848l, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                w<Boolean> wVar;
                T t10;
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f5845i;
                if (i10 == 0) {
                    d3.e.p(obj);
                    w<Boolean> wVar2 = this.f5846j;
                    if (this.f5847k) {
                        m8.c cVar = m8.c.f10812b;
                        m0 m0Var = this.f5848l.A;
                        if (m0Var == null) {
                            h.C("binding");
                            throw null;
                        }
                        boolean z10 = !m0Var.f13926c.isChecked();
                        this.f5844h = wVar2;
                        this.f5845i = 1;
                        Object objB = ((b8.a) m8.c.f10813c.getValue()).b(z10, this);
                        if (objB == aVar) {
                            return aVar;
                        }
                        wVar = wVar2;
                        obj = objB;
                        t10 = (Boolean) obj;
                    } else {
                        m8.c cVar2 = m8.c.f10812b;
                        this.f5844h = wVar2;
                        this.f5845i = 2;
                        Object objA = cVar2.a(this);
                        if (objA == aVar) {
                            return aVar;
                        }
                        wVar = wVar2;
                        obj = objA;
                        t10 = (Boolean) obj;
                    }
                } else if (i10 == 1) {
                    wVar = this.f5844h;
                    d3.e.p(obj);
                    t10 = (Boolean) obj;
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    wVar = this.f5844h;
                    d3.e.p(obj);
                    t10 = (Boolean) obj;
                }
                wVar.f14795h = t10;
                return fd.o.f7408a;
            }
        }

        /* JADX INFO: renamed from: com.nike.adapt.ui.settings.SettingsPrivacyActivity$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
        @ld.e(c = "com.nike.adapt.ui.settings.SettingsPrivacyActivity$getFlagAndUpdateUi$1$2", f = "DataOptInSwitchPreference.kt", l = {}, m = "invokeSuspend")
        public static final class C0101b extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ SettingsPrivacyActivity f5849h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ w<Boolean> f5850i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ boolean f5851j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final /* synthetic */ boolean f5852k;

            /* JADX INFO: renamed from: com.nike.adapt.ui.settings.SettingsPrivacyActivity$b$b$a */
            /* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
            public static final class a extends rd.o implements l<androidx.appcompat.app.d, fd.o> {

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ SettingsPrivacyActivity f5853h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ boolean f5854i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ boolean f5855j;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(SettingsPrivacyActivity settingsPrivacyActivity, boolean z10, boolean z11) {
                    super(1);
                    this.f5853h = settingsPrivacyActivity;
                    this.f5854i = z10;
                    this.f5855j = z11;
                }

                @Override // qd.l
                public final fd.o invoke(androidx.appcompat.app.d dVar) {
                    androidx.appcompat.app.d dVar2 = dVar;
                    h.j(dVar2, "it");
                    dVar2.dismiss();
                    SettingsPrivacyActivity settingsPrivacyActivity = this.f5853h;
                    boolean z10 = this.f5854i;
                    boolean z11 = this.f5855j;
                    int i10 = SettingsPrivacyActivity.D;
                    settingsPrivacyActivity.l0(z10, z11);
                    return fd.o.f7408a;
                }
            }

            /* JADX INFO: renamed from: com.nike.adapt.ui.settings.SettingsPrivacyActivity$b$b$b, reason: collision with other inner class name */
            /* JADX INFO: compiled from: DataOptInSwitchPreference.kt */
            public static final class C0102b extends rd.o implements l<androidx.appcompat.app.d, fd.o> {

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public static final C0102b f5856h = new C0102b();

                public C0102b() {
                    super(1);
                }

                @Override // qd.l
                public final fd.o invoke(androidx.appcompat.app.d dVar) {
                    androidx.appcompat.app.d dVar2 = dVar;
                    h.j(dVar2, "it");
                    dVar2.dismiss();
                    return fd.o.f7408a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0101b(SettingsPrivacyActivity settingsPrivacyActivity, w<Boolean> wVar, boolean z10, boolean z11, jd.d<? super C0101b> dVar) {
                super(2, dVar);
                this.f5849h = settingsPrivacyActivity;
                this.f5850i = wVar;
                this.f5851j = z10;
                this.f5852k = z11;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new C0101b(this.f5849h, this.f5850i, this.f5851j, this.f5852k, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) throws Throwable {
                C0101b c0101b = (C0101b) create(coroutineScope, dVar);
                fd.o oVar = fd.o.f7408a;
                c0101b.invokeSuspend(oVar);
                return oVar;
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                d3.e.p(obj);
                SettingsPrivacyActivity settingsPrivacyActivity = this.f5849h;
                int i10 = SettingsPrivacyActivity.D;
                settingsPrivacyActivity.n0(false);
                Boolean bool = this.f5850i.f14795h;
                if (bool == null) {
                    this.f5849h.m0(false);
                    m0 m0Var = this.f5849h.A;
                    if (m0Var == null) {
                        h.C("binding");
                        throw null;
                    }
                    m0Var.f13926c.setVisibility(this.f5851j ? 8 : 0);
                    m0 m0Var2 = this.f5849h.A;
                    if (m0Var2 == null) {
                        h.C("binding");
                        throw null;
                    }
                    m0Var2.f13925b.setVisibility(8);
                    y yVar = y.f15252a;
                    SettingsPrivacyActivity settingsPrivacyActivity2 = this.f5849h;
                    yVar.b(settingsPrivacyActivity2, new a(settingsPrivacyActivity2, this.f5852k, this.f5851j), C0102b.f5856h);
                } else {
                    this.f5849h.m0(true);
                    ((h8.a) this.f5849h.B.getValue()).w(bool.booleanValue());
                    m0 m0Var3 = this.f5849h.A;
                    if (m0Var3 == null) {
                        h.C("binding");
                        throw null;
                    }
                    SwitchCompat switchCompat = m0Var3.f13926c;
                    boolean z10 = this.f5852k;
                    switchCompat.setChecked(bool.booleanValue());
                    if (!z10) {
                        switchCompat.jumpDrawablesToCurrentState();
                    }
                }
                return fd.o.f7408a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z10, SettingsPrivacyActivity settingsPrivacyActivity, boolean z11, jd.d<? super b> dVar) {
            super(2, dVar);
            this.f5841j = z10;
            this.f5842k = settingsPrivacyActivity;
            this.f5843l = z11;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new b(this.f5841j, this.f5842k, this.f5843l, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w wVar;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5840i;
            if (i10 != 0) {
                if (i10 == 1) {
                    wVar = this.f5839h;
                    d3.e.p(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                return fd.o.f7408a;
            }
            d3.e.p(obj);
            wVar = new w();
            CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
            a aVar2 = new a(wVar, this.f5841j, this.f5842k, null);
            this.f5839h = wVar;
            this.f5840i = 1;
            if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
                return aVar;
            }
            MainCoroutineDispatcher main = Dispatchers.getMain();
            C0101b c0101b = new C0101b(this.f5842k, wVar, this.f5843l, this.f5841j, null);
            this.f5839h = null;
            this.f5840i = 2;
            if (BuildersKt.withContext(main, c0101b, this) == aVar) {
                return aVar;
            }
            return fd.o.f7408a;
        }
    }

    public final void l0(boolean z10, boolean z11) {
        n0(true);
        BuildersKt__Builders_commonKt.launch$default(this.C, null, null, new b(z10, this, z11, null), 3, null);
    }

    public final void m0(boolean z10) {
        if (z10) {
            m0 m0Var = this.A;
            if (m0Var != null) {
                m0Var.f13924a.setOnClickListener(new k(this, 3));
                return;
            } else {
                h.C("binding");
                throw null;
            }
        }
        m0 m0Var2 = this.A;
        if (m0Var2 != null) {
            m0Var2.f13924a.setOnClickListener(null);
        } else {
            h.C("binding");
            throw null;
        }
    }

    public final void n0(boolean z10) {
        m0 m0Var = this.A;
        if (m0Var == null) {
            h.C("binding");
            throw null;
        }
        m0Var.f13925b.setVisibility(z10 ? 0 : 4);
        m0 m0Var2 = this.A;
        if (m0Var2 != null) {
            m0Var2.f13926c.setVisibility(z10 ? 4 : 0);
        } else {
            h.C("binding");
            throw null;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsPrivacyActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsPrivacyActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        this.f662k.a(this.C);
        View viewInflate = getLayoutInflater().inflate(R.layout.data_opt_in_switch, (ViewGroup) null, false);
        int i10 = R.id.clickable_row_data_switch;
        View viewD = g7.b.d(viewInflate, R.id.clickable_row_data_switch);
        if (viewD != null) {
            i10 = R.id.data_opt_in_description;
            if (((TextView) g7.b.d(viewInflate, R.id.data_opt_in_description)) != null) {
                i10 = R.id.data_opt_in_progress;
                ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.data_opt_in_progress);
                if (progressBar != null) {
                    i10 = R.id.data_opt_in_setting_divider;
                    if (g7.b.d(viewInflate, R.id.data_opt_in_setting_divider) != null) {
                        i10 = R.id.data_opt_in_switch;
                        SwitchCompat switchCompat = (SwitchCompat) g7.b.d(viewInflate, R.id.data_opt_in_switch);
                        if (switchCompat != null) {
                            i10 = R.id.data_opt_in_switch_title;
                            if (((TextView) g7.b.d(viewInflate, R.id.data_opt_in_switch_title)) != null) {
                                i10 = R.id.view_toolbar;
                                View viewD2 = g7.b.d(viewInflate, R.id.view_toolbar);
                                if (viewD2 != null) {
                                    e2.a(viewD2);
                                    ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                    this.A = new m0(constraintLayout, viewD, progressBar, switchCompat);
                                    setContentView(constraintLayout);
                                    CharSequence charSequenceR = o.r(R.string.adapt_settings_privacy_title);
                                    View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                    h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                    k0((Toolbar) viewFindViewById);
                                    f.a aVarI0 = i0();
                                    if (aVarI0 != null) {
                                        aVarI0.o(charSequenceR);
                                        aVarI0.m(true);
                                    }
                                    m0 m0Var = this.A;
                                    if (m0Var == null) {
                                        h.C("binding");
                                        throw null;
                                    }
                                    m0Var.f13926c.setOnClickListener(null);
                                    Object systemService = getSystemService("connectivity");
                                    h.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                                    if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                                        m0(true);
                                        l0(false, true);
                                    } else {
                                        m0 m0Var2 = this.A;
                                        if (m0Var2 == null) {
                                            h.C("binding");
                                            throw null;
                                        }
                                        m0Var2.f13926c.setVisibility(8);
                                        m0 m0Var3 = this.A;
                                        if (m0Var3 == null) {
                                            h.C("binding");
                                            throw null;
                                        }
                                        m0Var3.f13925b.setVisibility(8);
                                    }
                                    TrackManager.INSTANCE.dataOptInPageViewed();
                                    TraceMachine.exitMethod();
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
