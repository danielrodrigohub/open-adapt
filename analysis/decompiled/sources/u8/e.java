package u8;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.coroutine.MainCoroutineScope;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import q7.r0;

/* JADX INFO: compiled from: ConnectingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends p8.h {

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final a f16032h0 = new a();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public r0 f16034c0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f16036f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f16037g0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f16033b0 = "ConnectingFragment";
    public final MainCoroutineScope d0 = new MainCoroutineScope();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f16035e0 = -1;

    /* JADX INFO: compiled from: ConnectingFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: ConnectingFragment.kt */
    @ld.e(c = "com.nike.adapt.ui.error.ConnectingFragment$onCreateView$1$2$1", f = "ConnectingFragment.kt", l = {73}, m = "invokeSuspend")
    public static final class b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16038h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.p f16040j;

        /* JADX INFO: compiled from: ConnectingFragment.kt */
        @ld.e(c = "com.nike.adapt.ui.error.ConnectingFragment$onCreateView$1$2$1$1", f = "ConnectingFragment.kt", l = {74}, m = "invokeSuspend")
        public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super Bitmap>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f16041h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ e f16042i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final /* synthetic */ androidx.fragment.app.p f16043j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, androidx.fragment.app.p pVar, jd.d<? super a> dVar) {
                super(2, dVar);
                this.f16042i = eVar;
                this.f16043j = pVar;
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new a(this.f16042i, this.f16043j, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super Bitmap> dVar) {
                return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f16041h;
                if (i10 == 0) {
                    d3.e.p(obj);
                    int i11 = this.f16042i.f16035e0;
                    androidx.fragment.app.p pVar = this.f16043j;
                    p4.h.i(pVar, "it");
                    this.f16041h = 1;
                    jd.i iVar = new jd.i(androidx.lifecycle.o.t(this));
                    View viewFindViewById = pVar.findViewById(i11);
                    if (viewFindViewById != null) {
                        viewFindViewById.post(new x8.o(pVar, i11, iVar, viewFindViewById));
                    }
                    obj = iVar.a();
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(androidx.fragment.app.p pVar, jd.d<? super b> dVar) {
            super(2, dVar);
            this.f16040j = pVar;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return e.this.new b(this.f16040j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f16038h;
            if (i10 == 0) {
                d3.e.p(obj);
                CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
                a aVar2 = new a(e.this, this.f16040j, null);
                this.f16038h = 1;
                obj = BuildersKt.withContext(coroutineDispatcher, aVar2, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            Bitmap bitmap = (Bitmap) obj;
            if (bitmap != null) {
                r0 r0Var = e.this.f16034c0;
                if (r0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                r0Var.f13984a.setImageBitmap(bitmap);
            }
            r0 r0Var2 = e.this.f16034c0;
            if (r0Var2 == null) {
                p4.h.C("binding");
                throw null;
            }
            r0Var2.f13985b.setBackgroundColor(-3355444);
            r0 r0Var3 = e.this.f16034c0;
            if (r0Var3 == null) {
                p4.h.C("binding");
                throw null;
            }
            r0Var3.f13985b.animate().alpha(1.0f).setDuration(200L).start();
            r0 r0Var4 = e.this.f16034c0;
            if (r0Var4 == null) {
                p4.h.C("binding");
                throw null;
            }
            r0Var4.f13984a.animate().alpha(1.0f).setDuration(200L).start();
            r0 r0Var5 = e.this.f16034c0;
            if (r0Var5 == null) {
                p4.h.C("binding");
                throw null;
            }
            r0Var5.f13987d.animate().alpha(1.0f).setDuration(200L).start();
            r0 r0Var6 = e.this.f16034c0;
            if (r0Var6 == null) {
                p4.h.C("binding");
                throw null;
            }
            r0Var6.f13986c.animate().alpha(1.0f).setDuration(200L).start();
            e eVar = e.this;
            eVar.f16037g0 = true;
            eVar.q0();
            return fd.o.f7408a;
        }
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = o().inflate(R.layout.fragment_connecting, viewGroup, false);
        int i10 = R.id.fragment_connecting_blur;
        ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.fragment_connecting_blur);
        if (imageView != null) {
            i10 = R.id.fragment_connecting_blur_background;
            View viewD = g7.b.d(viewInflate, R.id.fragment_connecting_blur_background);
            if (viewD != null) {
                i10 = R.id.fragment_connecting_progress_bar;
                ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.fragment_connecting_progress_bar);
                if (progressBar != null) {
                    i10 = R.id.fragment_connecting_title;
                    TextView textView = (TextView) g7.b.d(viewInflate, R.id.fragment_connecting_title);
                    if (textView != null) {
                        FrameLayout frameLayout = (FrameLayout) viewInflate;
                        this.f16034c0 = new r0(frameLayout, imageView, viewD, progressBar, textView);
                        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: u8.d
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                e.a aVar = e.f16032h0;
                                return true;
                            }
                        });
                        r0 r0Var = this.f16034c0;
                        if (r0Var == null) {
                            p4.h.C("binding");
                            throw null;
                        }
                        r0Var.f13984a.setAlpha(0.0f);
                        r0 r0Var2 = this.f16034c0;
                        if (r0Var2 == null) {
                            p4.h.C("binding");
                            throw null;
                        }
                        r0Var2.f13987d.setAlpha(0.0f);
                        r0 r0Var3 = this.f16034c0;
                        if (r0Var3 == null) {
                            p4.h.C("binding");
                            throw null;
                        }
                        r0Var3.f13986c.setAlpha(0.0f);
                        r0 r0Var4 = this.f16034c0;
                        if (r0Var4 == null) {
                            p4.h.C("binding");
                            throw null;
                        }
                        r0Var4.f13985b.setAlpha(0.0f);
                        int i11 = (bundle == null && (bundle = this.f1971n) == null) ? -1 : bundle.getInt("PARAM_CONTAINER_ID", -1);
                        this.f16035e0 = i11;
                        if (i11 == -1) {
                            r0 r0Var5 = this.f16034c0;
                            if (r0Var5 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            r0Var5.f13984a.setBackgroundColor(-1);
                            r0 r0Var6 = this.f16034c0;
                            if (r0Var6 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            r0Var6.f13987d.setVisibility(0);
                            r0 r0Var7 = this.f16034c0;
                            if (r0Var7 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            r0Var7.f13986c.setVisibility(0);
                            r0 r0Var8 = this.f16034c0;
                            if (r0Var8 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            r0Var8.f13984a.setAlpha(1.0f);
                            r0 r0Var9 = this.f16034c0;
                            if (r0Var9 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            r0Var9.f13987d.setAlpha(1.0f);
                            r0 r0Var10 = this.f16034c0;
                            if (r0Var10 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            r0Var10.f13986c.setAlpha(1.0f);
                            this.f16037g0 = true;
                        } else {
                            BuildersKt__Builders_commonKt.launch$default(this.d0, null, null, new b(d0(), null), 3, null);
                        }
                        return frameLayout;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // androidx.fragment.app.m
    public final void K() {
        androidx.fragment.app.p pVarI;
        View viewFindViewById;
        r0 r0Var = this.f16034c0;
        if (r0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        r0Var.f13987d.setVisibility(8);
        r0 r0Var2 = this.f16034c0;
        if (r0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        r0Var2.f13986c.setVisibility(8);
        if (Build.VERSION.SDK_INT >= 31 && this.f16035e0 != -1 && (pVarI = i()) != null && (viewFindViewById = pVarI.findViewById(this.f16035e0)) != null) {
            viewFindViewById.setRenderEffect(null);
        }
        this.K = true;
    }

    @Override // androidx.fragment.app.m
    public final void R(Bundle bundle) {
        bundle.putInt("PARAM_CONTAINER_ID", this.f16035e0);
    }

    @Override // androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        p4.h.j(view, "view");
        q0();
    }

    @Override // p8.h
    public final String p0() {
        return this.f16033b0;
    }

    public final void q0() {
        if (this.f16034c0 == null) {
            return;
        }
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        v9.e lastKnownConnectionState = inMemoryCache.getRightDevice().getLastKnownConnectionState();
        v9.e eVar = v9.e.CONNECTED_AND_AUTHENTICATED;
        int i10 = 1;
        this.f16036f0 = lastKnownConnectionState == eVar;
        boolean z10 = inMemoryCache.getLeftDevice().getLastKnownConnectionState() == eVar;
        if (this.f16037g0) {
            boolean z11 = this.f16036f0;
            if (z10 || z11) {
                if (!z10) {
                    i10 = 2;
                } else if (!z11) {
                    i10 = 3;
                }
            }
            String strR = androidx.lifecycle.o.r(a1.d.b(i10));
            r0 r0Var = this.f16034c0;
            if (r0Var == null) {
                p4.h.C("binding");
                throw null;
            }
            if (p4.h.c(r0Var.f13987d.getText(), strR)) {
                return;
            }
            r0 r0Var2 = this.f16034c0;
            if (r0Var2 == null) {
                p4.h.C("binding");
                throw null;
            }
            TextView textView = r0Var2.f13987d;
            p4.h.i(textView, "binding.fragmentConnectingTitle");
            f1.b.p(textView, strR);
        }
    }
}
