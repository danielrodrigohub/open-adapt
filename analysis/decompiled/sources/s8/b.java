package s8;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import g0.n;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import ld.e;
import ld.i;
import p4.h;
import p8.m;
import q7.s0;
import qd.l;
import qd.p;
import rd.w;
import s9.y;

/* JADX INFO: compiled from: DataOptInHomeFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends m implements View.OnClickListener {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final /* synthetic */ int f15152g0 = 0;
    public s0 d0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public d f15155f0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final String f15153c0 = "DataOptInHomeFragment";

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final fd.d f15154e0 = o.w(3, a.f15156h);

    /* JADX INFO: compiled from: DataOptInHomeFragment.kt */
    public static final class a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f15156h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: renamed from: s8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DataOptInHomeFragment.kt */
    @e(c = "com.nike.adapt.ui.dataoptin.DataOptInHomeFragment$onDataOptInAllow$1", f = "DataOptInHomeFragment.kt", l = {81, 85}, m = "invokeSuspend")
    public static final class C0257b extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public w f15157h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f15158i;

        /* JADX INFO: renamed from: s8.b$b$a */
        /* JADX INFO: compiled from: DataOptInHomeFragment.kt */
        @e(c = "com.nike.adapt.ui.dataoptin.DataOptInHomeFragment$onDataOptInAllow$1$1", f = "DataOptInHomeFragment.kt", l = {82}, m = "invokeSuspend")
        public static final class a extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public w f15160h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f15161i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ w<Boolean> f15162j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(w<Boolean> wVar, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f15162j = wVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f15162j, dVar);
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
                int i10 = this.f15161i;
                if (i10 == 0) {
                    d3.e.p(obj);
                    w<Boolean> wVar2 = this.f15162j;
                    m8.c cVar = m8.c.f10812b;
                    this.f15160h = wVar2;
                    this.f15161i = 1;
                    Object objB = ((b8.a) m8.c.f10813c.getValue()).b(true, this);
                    if (objB == aVar) {
                        return aVar;
                    }
                    wVar = wVar2;
                    t10 = objB;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    wVar = this.f15160h;
                    d3.e.p(obj);
                    t10 = obj;
                }
                wVar.f14795h = t10;
                return fd.o.f7408a;
            }
        }

        /* JADX INFO: renamed from: s8.b$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DataOptInHomeFragment.kt */
        @e(c = "com.nike.adapt.ui.dataoptin.DataOptInHomeFragment$onDataOptInAllow$1$2", f = "DataOptInHomeFragment.kt", l = {}, m = "invokeSuspend")
        public static final class C0258b extends i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ w<Boolean> f15163h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ b f15164i;

            /* JADX INFO: renamed from: s8.b$b$b$a */
            /* JADX INFO: compiled from: DataOptInHomeFragment.kt */
            public static final class a extends rd.o implements l<androidx.appcompat.app.d, fd.o> {

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ b f15165h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(b bVar) {
                    super(1);
                    this.f15165h = bVar;
                }

                @Override // qd.l
                public final fd.o invoke(androidx.appcompat.app.d dVar) {
                    androidx.appcompat.app.d dVar2 = dVar;
                    h.j(dVar2, "it");
                    dVar2.dismiss();
                    b bVar = this.f15165h;
                    int i10 = b.f15152g0;
                    bVar.q0();
                    return fd.o.f7408a;
                }
            }

            /* JADX INFO: renamed from: s8.b$b$b$b, reason: collision with other inner class name */
            /* JADX INFO: compiled from: DataOptInHomeFragment.kt */
            public static final class C0259b extends rd.o implements l<androidx.appcompat.app.d, fd.o> {

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ b f15166h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0259b(b bVar) {
                    super(1);
                    this.f15166h = bVar;
                }

                @Override // qd.l
                public final fd.o invoke(androidx.appcompat.app.d dVar) {
                    androidx.appcompat.app.d dVar2 = dVar;
                    h.j(dVar2, "it");
                    n.f7519b = true;
                    t8.a aVar = t8.a.f15561a;
                    aVar.a().j0(aVar.a().y() - 1);
                    dVar2.dismiss();
                    androidx.fragment.app.p pVarI = this.f15166h.i();
                    if (pVarI != null) {
                        pVarI.onBackPressed();
                    }
                    return fd.o.f7408a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0258b(w<Boolean> wVar, b bVar, jd.d<? super C0258b> dVar) {
                super(2, dVar);
                this.f15163h = wVar;
                this.f15164i = bVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new C0258b(this.f15163h, this.f15164i, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) throws Throwable {
                C0258b c0258b = (C0258b) create(coroutineScope, dVar);
                fd.o oVar = fd.o.f7408a;
                c0258b.invokeSuspend(oVar);
                return oVar;
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                d3.e.p(obj);
                if (this.f15163h.f14795h == null) {
                    s0 s0Var = this.f15164i.d0;
                    if (s0Var == null) {
                        h.C("binding");
                        throw null;
                    }
                    s0Var.f13996a.setText(o.r(R.string.adapt_share_data_cta));
                    s0 s0Var2 = this.f15164i.d0;
                    if (s0Var2 == null) {
                        h.C("binding");
                        throw null;
                    }
                    s0Var2.f13997b.setVisibility(8);
                    y.f15252a.b(this.f15164i.d0(), new a(this.f15164i), new C0259b(this.f15164i));
                } else {
                    ((h8.a) this.f15164i.f15154e0.getValue()).w(true);
                    d dVar = this.f15164i.f15155f0;
                    if (dVar == null) {
                        h.C("listener");
                        throw null;
                    }
                    dVar.M(c.Confirmed);
                }
                return fd.o.f7408a;
            }
        }

        public C0257b(jd.d<? super C0257b> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return b.this.new C0257b(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((C0257b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w wVar;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f15158i;
            if (i10 != 0) {
                if (i10 == 1) {
                    wVar = this.f15157h;
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
            a aVar2 = new a(wVar, null);
            this.f15157h = wVar;
            this.f15158i = 1;
            if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
                return aVar;
            }
            MainCoroutineDispatcher main = Dispatchers.getMain();
            C0258b c0258b = new C0258b(wVar, b.this, null);
            this.f15157h = null;
            this.f15158i = 2;
            if (BuildersKt.withContext(main, c0258b, this) == aVar) {
                return aVar;
            }
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        h.j(context, "context");
        super.G(context);
        fd.o oVar = null;
        if ((context instanceof d ? (d) context : null) != null) {
            this.f15155f0 = (d) context;
            oVar = fd.o.f7408a;
        }
        if (oVar == null) {
            throw new IllegalStateException("Activity must implement Listener");
        }
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_data_opt_in, viewGroup, false);
        int i10 = R.id.data_opt_in_allow;
        Button button = (Button) g7.b.d(viewInflate, R.id.data_opt_in_allow);
        if (button != null) {
            i10 = R.id.data_opt_in_allow_progress;
            ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.data_opt_in_allow_progress);
            if (progressBar != null) {
                i10 = R.id.data_opt_in_description;
                if (((TextView) g7.b.d(viewInflate, R.id.data_opt_in_description)) != null) {
                    i10 = R.id.data_opt_in_dont_allow;
                    Button button2 = (Button) g7.b.d(viewInflate, R.id.data_opt_in_dont_allow);
                    if (button2 != null) {
                        i10 = R.id.data_opt_in_title;
                        if (((TextView) g7.b.d(viewInflate, R.id.data_opt_in_title)) != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                            if (((TextView) g7.b.d(viewInflate, R.id.learn_data)) != null) {
                                this.d0 = new s0(constraintLayout, button, progressBar, button2);
                                return constraintLayout;
                            }
                            i10 = R.id.learn_data;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        h.j(view, "view");
        s0 s0Var = this.d0;
        if (s0Var == null) {
            h.C("binding");
            throw null;
        }
        s0Var.f13996a.setOnClickListener(this);
        s0 s0Var2 = this.d0;
        if (s0Var2 != null) {
            s0Var2.f13998c.setOnClickListener(this);
        } else {
            h.C("binding");
            throw null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        h.j(view, TracePayload.VERSION_KEY);
        int id2 = view.getId();
        if (id2 == R.id.data_opt_in_allow) {
            q0();
            return;
        }
        if (id2 != R.id.data_opt_in_dont_allow) {
            return;
        }
        if (t8.a.f15561a.b()) {
            TrackManager.INSTANCE.dataOptInDismissSelected();
        } else {
            TrackManager.INSTANCE.dataOptInDontShareSelected();
        }
        androidx.fragment.app.p pVarI = i();
        if (pVarI != null) {
            pVarI.onBackPressed();
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f15153c0;
    }

    public final void q0() {
        if (t8.a.f15561a.b()) {
            TrackManager.INSTANCE.dataOptInEnableDataSelected();
        } else {
            TrackManager.INSTANCE.dataOptInSecondaryEnableDataSelected();
        }
        s0 s0Var = this.d0;
        if (s0Var == null) {
            h.C("binding");
            throw null;
        }
        s0Var.f13996a.setText("");
        s0 s0Var2 = this.d0;
        if (s0Var2 == null) {
            h.C("binding");
            throw null;
        }
        s0Var2.f13997b.setVisibility(0);
        BuildersKt__Builders_commonKt.launch$default(this.f13338b0, null, null, new C0257b(null), 3, null);
    }
}
