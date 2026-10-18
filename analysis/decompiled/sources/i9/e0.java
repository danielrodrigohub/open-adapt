package i9;

import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.adk.api.PairDataApi;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.presenter.profile.AdaptUser;
import h9.v0;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.greenrobot.eventbus.ThreadMode;
import q7.a1;
import q7.g1;

/* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends p8.r {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final /* synthetic */ int f8861p0 = 0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public a1 f8863f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public g1 f8864g0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public a0 f8868k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public String f8869l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f8870m0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f8872o0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final String f8862e0 = "WelcomeOnBoardingFragment";

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final fd.d f8865h0 = androidx.lifecycle.o.w(3, a.f8873h);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final fd.d f8866i0 = androidx.lifecycle.o.w(3, d.f8883h);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final fd.h f8867j0 = (fd.h) androidx.lifecycle.o.x(new e());

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f8871n0 = 1;

    /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
    public static final class a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f8873h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
    @ld.e(c = "com.nike.adapt.ui.onboarding.WelcomeOnBoardingFragment$onCreate$1", f = "WelcomeOnBoardingFragment.kt", l = {102, 107}, m = "invokeSuspend")
    public static final class b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public rd.w f8874h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f8875i;

        /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
        @ld.e(c = "com.nike.adapt.ui.onboarding.WelcomeOnBoardingFragment$onCreate$1$1", f = "WelcomeOnBoardingFragment.kt", l = {103}, m = "invokeSuspend")
        public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public rd.w f8877h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f8878i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ rd.w<List<ea.m>> f8879j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(rd.w<List<ea.m>> wVar, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f8879j = wVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f8879j, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                rd.w<List<ea.m>> wVar;
                T t10;
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f8878i;
                if (i10 == 0) {
                    d3.e.p(obj);
                    rd.w<List<ea.m>> wVar2 = this.f8879j;
                    PairDataApi pairDataApi = PairDataApi.Companion.get();
                    this.f8877h = wVar2;
                    this.f8878i = 1;
                    Object objRetrievePairFromNetwork = pairDataApi.retrievePairFromNetwork(this);
                    if (objRetrievePairFromNetwork == aVar) {
                        return aVar;
                    }
                    wVar = wVar2;
                    t10 = objRetrievePairFromNetwork;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    wVar = this.f8877h;
                    d3.e.p(obj);
                    t10 = obj;
                }
                wVar.f14795h = t10;
                List<ea.m> list = this.f8879j.f14795h;
                if (list == null) {
                    return null;
                }
                PairDataRepository.INSTANCE.syncPairData(list);
                return fd.o.f7408a;
            }
        }

        /* JADX INFO: renamed from: i9.e0$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
        @ld.e(c = "com.nike.adapt.ui.onboarding.WelcomeOnBoardingFragment$onCreate$1$2", f = "WelcomeOnBoardingFragment.kt", l = {}, m = "invokeSuspend")
        public static final class C0172b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ rd.w<List<ea.m>> f8880h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ e0 f8881i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0172b(rd.w<List<ea.m>> wVar, e0 e0Var, jd.d<? super C0172b> dVar) {
                super(2, dVar);
                this.f8880h = wVar;
                this.f8881i = e0Var;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new C0172b(this.f8880h, this.f8881i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) throws Throwable {
                C0172b c0172b = (C0172b) create(coroutineScope, dVar);
                fd.o oVar = fd.o.f7408a;
                c0172b.invokeSuspend(oVar);
                return oVar;
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                d3.e.p(obj);
                List<ea.m> list = this.f8880h.f14795h;
                if (list != null) {
                    e0 e0Var = this.f8881i;
                    int i10 = e0.f8861p0;
                    Objects.requireNonNull(e0Var);
                    e0Var.f8871n0 = list.isEmpty() ^ true ? 3 : 2;
                    e0Var.t0();
                }
                return fd.o.f7408a;
            }
        }

        public b(jd.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return e0.this.new b(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            rd.w wVar;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f8875i;
            if (i10 != 0) {
                if (i10 == 1) {
                    wVar = this.f8874h;
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
            wVar = new rd.w();
            CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
            a aVar2 = new a(wVar, null);
            this.f8874h = wVar;
            this.f8875i = 1;
            if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
                return aVar;
            }
            MainCoroutineDispatcher main = Dispatchers.getMain();
            C0172b c0172b = new C0172b(wVar, e0.this, null);
            this.f8874h = null;
            this.f8875i = 2;
            if (BuildersKt.withContext(main, c0172b, this) == aVar) {
                return aVar;
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
    public static final class c extends rd.o implements qd.l<View, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f8882h = new c();

        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(View view) {
            View view2 = view;
            p4.h.j(view2, "$this$forAllChildren");
            view2.setAlpha(1.0f);
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
    public static final class d extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f8883h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    /* JADX INFO: compiled from: WelcomeOnBoardingFragment.kt */
    public static final class e extends rd.o implements qd.a<k8.h> {
        public e() {
            super(0);
        }

        @Override // qd.a
        public final k8.h invoke() {
            int i10 = k8.h.f9749e;
            e0 e0Var = e0.this;
            int i11 = e0.f8861p0;
            i8.d dVar = e0Var.d0;
            p4.h.j(dVar, "eventUUID");
            return new k8.a(dVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        if (!(context instanceof a0)) {
            throw new IllegalStateException(androidx.recyclerview.widget.d.c("Activity must implement ", a0.class.getSimpleName()));
        }
        this.f8868k0 = (a0) context;
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.f8869l0 = bundle != null ? bundle.getString("PARAM_NAME") : null;
        ((k8.h) this.f8867j0.getValue()).d(k8.e.f9746h);
        BuildersKt__Builders_commonKt.launch$default(this.f13342b0, null, null, new b(null), 3, null);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_welcome_onboarding, viewGroup, false);
        int i10 = R.id.fetching_profile_progress_bar;
        ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.fetching_profile_progress_bar);
        if (progressBar != null) {
            i10 = R.id.item_adapt_learn_more_copy;
            TextView textView = (TextView) g7.b.d(viewInflate, R.id.item_adapt_learn_more_copy);
            if (textView != null) {
                i10 = R.id.item_adapt_learn_more_url;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.item_adapt_learn_more_url);
                if (textView2 != null) {
                    i10 = R.id.logout_button;
                    TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.logout_button);
                    if (textView3 != null) {
                        i10 = R.id.welcome_headline;
                        TextView textView4 = (TextView) g7.b.d(viewInflate, R.id.welcome_headline);
                        if (textView4 != null) {
                            i10 = R.id.welcome_power_on;
                            if (((TextView) g7.b.d(viewInflate, R.id.welcome_power_on)) != null) {
                                i10 = R.id.welcome_screen;
                                LinearLayout linearLayout = (LinearLayout) g7.b.d(viewInflate, R.id.welcome_screen);
                                if (linearLayout != null) {
                                    FrameLayout frameLayout = (FrameLayout) viewInflate;
                                    this.f8863f0 = new a1(frameLayout, progressBar, textView, textView2, textView3, textView4, linearLayout);
                                    this.f8864g0 = g1.a(frameLayout);
                                    a1 a1Var = this.f8863f0;
                                    if (a1Var == null) {
                                        p4.h.C("binding");
                                        throw null;
                                    }
                                    FrameLayout frameLayout2 = a1Var.f13704a;
                                    p4.h.i(frameLayout2, "");
                                    androidx.lifecycle.o.l(frameLayout2, c.f8882h);
                                    this.f8870m0 = true;
                                    t0();
                                    return frameLayout2;
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // androidx.fragment.app.m
    public final void R(Bundle bundle) {
        bundle.putString("PARAM_NAME", this.f8869l0);
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onFetchProfileResult(k8.g gVar) {
        p4.h.j(gVar, "fetchProfileActionResult");
        AdaptUser adaptUser = gVar.f9748i;
        String firstName = adaptUser != null ? adaptUser.getFirstName() : null;
        this.f8869l0 = firstName;
        if (firstName != null) {
            androidx.fragment.app.p pVarI = i();
            p4.h.h(pVarI, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            String strB = s9.e.b(((f.e) pVarI).getString(R.string.adapt_onboarding_pairing_hello_title), new Pair("name", this.f8869l0));
            a1 a1Var = this.f8863f0;
            if (a1Var != null) {
                a1Var.f13709f.setText(strB);
            } else {
                p4.h.C("binding");
                throw null;
            }
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f8862e0;
    }

    public final void t0() {
        if (this.f8870m0) {
            int i10 = this.f8871n0;
            int i11 = 1;
            if (i10 == 1 || this.f8872o0) {
                return;
            }
            this.f8872o0 = true;
            int iA = q.g.a(i10);
            int i12 = 2;
            if (iA != 1) {
                if (iA != 2) {
                    return;
                }
                u0().g();
                u0().i(v7.h.NORMAL);
                u0().h(v7.g.COMPLETED);
                androidx.fragment.app.p pVarI = i();
                if (pVarI == null || !((ja.a) wa.k.f17583b.a(pVarI)).f()) {
                    return;
                }
                new v0(false, 1, null).e(pVarI);
                return;
            }
            u0().h(v7.g.WELCOME);
            a1 a1Var = this.f8863f0;
            if (a1Var == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var.f13709f.setTextColor(androidx.lifecycle.o.o(R.color.text_color_black));
            a1 a1Var2 = this.f8863f0;
            if (a1Var2 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var2.f13706c.setVisibility(0);
            a1 a1Var3 = this.f8863f0;
            if (a1Var3 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var3.f13707d.setVisibility(0);
            Locale locale = w().getConfiguration().getLocales().get(0);
            String strA = a0.b.a("<a href=", a0.b.a("https://agreementservice.svs.nike.com/rest/agreement?agreementType=dataLearnMore&uxId=com.nike.bigfoot.droid&country=", locale.getCountry(), "&language=", locale.getLanguage(), "&requestType=redirect"), " >", androidx.lifecycle.o.r(R.string.adapt_learn_more_title), "</a>");
            a1 a1Var4 = this.f8863f0;
            if (a1Var4 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var4.f13707d.setMovementMethod(LinkMovementMethod.getInstance());
            a1 a1Var5 = this.f8863f0;
            if (a1Var5 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var5.f13707d.setText(Html.fromHtml(strA, 0));
            a1 a1Var6 = this.f8863f0;
            if (a1Var6 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var6.f13707d.setLinkTextColor(-16777216);
            g1 g1Var = this.f8864g0;
            if (g1Var == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            Button button = g1Var.f13825a;
            p4.h.i(button, "itemMessagingCtaBinding.messagingCtaPrimary");
            button.setText(androidx.lifecycle.o.r(R.string.adapt_start_button_title));
            Context contextL = l();
            if (contextL != null) {
                g1 g1Var2 = this.f8864g0;
                if (g1Var2 == null) {
                    p4.h.C("itemMessagingCtaBinding");
                    throw null;
                }
                Button button2 = g1Var2.f13825a;
                Object obj = y.a.f18143a;
                button2.setTextColor(y.a.c.a(contextL, R.color.text_color_white));
            }
            g1 g1Var3 = this.f8864g0;
            if (g1Var3 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var3.f13825a.setOnClickListener(new x8.p(this, i12));
            g1 g1Var4 = this.f8864g0;
            if (g1Var4 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var4.f13825a.setBackground(w().getDrawable(R.drawable.background_dark_pill_button, null));
            a1 a1Var7 = this.f8863f0;
            if (a1Var7 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var7.f13708e.setOnClickListener(new z8.f(this, i11));
            a1 a1Var8 = this.f8863f0;
            if (a1Var8 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var8.f13705b.setVisibility(8);
            a1 a1Var9 = this.f8863f0;
            if (a1Var9 == null) {
                p4.h.C("binding");
                throw null;
            }
            a1Var9.f13710g.setVisibility(0);
            TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.WELCOME);
        }
    }

    public final h8.d u0() {
        return (h8.d) this.f8866i0.getValue();
    }
}
