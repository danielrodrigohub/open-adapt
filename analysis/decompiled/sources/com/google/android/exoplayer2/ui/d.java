package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.newrelic.agent.android.crash.CrashSender;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import m5.g0;
import n3.b2;
import n3.o1;
import n3.p0;
import okhttp3.internal.http.HttpStatusCodesKt;
import w4.h;

/* JADX INFO: compiled from: PlayerControlView.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends FrameLayout {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final /* synthetic */ int f4897m0 = 0;
    public final h A;
    public final Drawable B;
    public final Drawable C;
    public final Drawable D;
    public final String E;
    public final String F;
    public final String G;
    public final Drawable H;
    public final Drawable I;
    public final float J;
    public final float K;
    public final String L;
    public final String M;
    public o1 N;
    public c O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public int T;
    public int U;
    public int V;
    public boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f4898a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f4899b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f4900c0;
    public boolean d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public long f4901e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public long[] f4902f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean[] f4903g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f4904h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public long[] f4905h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList<InterfaceC0085d> f4906i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean[] f4907i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f4908j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public long f4909j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f4910k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f4911k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f4912l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public long f4913l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f4914m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final View f4915n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f4916o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ImageView f4917p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ImageView f4918q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f4919r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final TextView f4920s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TextView f4921t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final f f4922u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final StringBuilder f4923v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final Formatter f4924w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final b2.b f4925x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final b2.d f4926y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final androidx.activity.d f4927z;

    /* JADX INFO: compiled from: PlayerControlView.java */
    public static final class a {
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    /* JADX INFO: compiled from: PlayerControlView.java */
    public final class b implements o1.c, f.a, View.OnClickListener {
        public b() {
        }

        @Override // com.google.android.exoplayer2.ui.f.a
        public final void E(long j10) {
            d dVar = d.this;
            dVar.S = true;
            TextView textView = dVar.f4921t;
            if (textView != null) {
                textView.setText(g0.C(dVar.f4923v, dVar.f4924w, j10));
            }
        }

        @Override // com.google.android.exoplayer2.ui.f.a
        public final void H(long j10, boolean z10) {
            o1 o1Var;
            d dVar = d.this;
            int iC = 0;
            dVar.S = false;
            if (z10 || (o1Var = dVar.N) == null) {
                return;
            }
            b2 b2VarO = o1Var.O();
            if (dVar.R && !b2VarO.s()) {
                int iR = b2VarO.r();
                while (true) {
                    long jC = b2VarO.p(iC, dVar.f4926y).c();
                    if (j10 < jC) {
                        break;
                    }
                    if (iC == iR - 1) {
                        j10 = jC;
                        break;
                    } else {
                        j10 -= jC;
                        iC++;
                    }
                }
            } else {
                iC = o1Var.C();
            }
            o1Var.n(iC, j10);
            dVar.m();
        }

        @Override // com.google.android.exoplayer2.ui.f.a
        public final void J(long j10) {
            d dVar = d.this;
            TextView textView = dVar.f4921t;
            if (textView != null) {
                textView.setText(g0.C(dVar.f4923v, dVar.f4924w, j10));
            }
        }

        @Override // n3.o1.c
        public final void m0(o1.b bVar) {
            if (bVar.a(4, 5)) {
                d.this.l();
            }
            if (bVar.a(4, 5, 7)) {
                d.this.m();
            }
            if (bVar.f11603a.a(8)) {
                d.this.n();
            }
            if (bVar.f11603a.a(9)) {
                d.this.o();
            }
            if (bVar.a(8, 9, 11, 0, 13)) {
                d.this.k();
            }
            if (bVar.a(11, 0)) {
                d.this.p();
            }
        }

        /* JADX WARN: Code duplicated, block: B:41:0x0069  */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z10;
            d dVar = d.this;
            o1 o1Var = dVar.N;
            if (o1Var == null) {
                return;
            }
            if (dVar.f4910k == view) {
                o1Var.T();
                return;
            }
            if (dVar.f4908j == view) {
                o1Var.Z();
                return;
            }
            if (dVar.f4915n == view) {
                if (o1Var.s() != 4) {
                    o1Var.U();
                    return;
                }
                return;
            }
            if (dVar.f4916o == view) {
                o1Var.W();
                return;
            }
            if (dVar.f4912l == view) {
                dVar.b(o1Var);
                return;
            }
            if (dVar.f4914m == view) {
                Objects.requireNonNull(dVar);
                o1Var.c();
                return;
            }
            if (dVar.f4917p != view) {
                if (dVar.f4918q == view) {
                    o1Var.r(!o1Var.Q());
                    return;
                }
                return;
            }
            int iM = o1Var.M();
            int i10 = d.this.V;
            for (int i11 = 1; i11 <= 2; i11++) {
                int i12 = (iM + i11) % 3;
                if (i12 != 0) {
                    z10 = false;
                    if (i12 == 1 ? (i10 & 1) != 0 : !(i12 != 2 || (i10 & 2) == 0)) {
                        z10 = true;
                    }
                } else {
                    z10 = true;
                }
                if (z10) {
                    iM = i12;
                    break;
                }
            }
            o1Var.E(iM);
        }
    }

    /* JADX INFO: compiled from: PlayerControlView.java */
    public interface c {
        void a();
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.ui.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PlayerControlView.java */
    public interface InterfaceC0085d {
        void E();
    }

    static {
        p0.a("goog.exo.ui");
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, null, 0);
        int resourceId = R.layout.exo_player_control_view;
        this.T = CrashSender.CRASH_COLLECTOR_TIMEOUT;
        this.V = 0;
        this.U = HttpStatusCodesKt.HTTP_OK;
        this.f4901e0 = -9223372036854775807L;
        int i10 = 1;
        this.W = true;
        this.f4898a0 = true;
        this.f4899b0 = true;
        this.f4900c0 = true;
        this.d0 = false;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlayerControlView, 0, 0);
            try {
                this.T = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_show_timeout, this.T);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_controller_layout_id, resourceId);
                this.V = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_repeat_toggle_modes, this.V);
                this.W = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_rewind_button, this.W);
                this.f4898a0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_fastforward_button, this.f4898a0);
                this.f4899b0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_previous_button, this.f4899b0);
                this.f4900c0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_next_button, this.f4900c0);
                this.d0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_shuffle_button, this.d0);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_time_bar_min_update_interval, this.U));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f4906i = new CopyOnWriteArrayList<>();
        this.f4925x = new b2.b();
        this.f4926y = new b2.d();
        StringBuilder sb2 = new StringBuilder();
        this.f4923v = sb2;
        this.f4924w = new Formatter(sb2, Locale.getDefault());
        this.f4902f0 = new long[0];
        this.f4903g0 = new boolean[0];
        this.f4905h0 = new long[0];
        this.f4907i0 = new boolean[0];
        b bVar = new b();
        this.f4904h = bVar;
        this.f4927z = new androidx.activity.d(this, 3);
        this.A = new h(this, i10);
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        int i11 = R.id.exo_progress;
        f fVar = (f) findViewById(i11);
        View viewFindViewById = findViewById(R.id.exo_progress_placeholder);
        if (fVar != null) {
            this.f4922u = fVar;
        } else if (viewFindViewById != null) {
            com.google.android.exoplayer2.ui.b bVar2 = new com.google.android.exoplayer2.ui.b(context, attributeSet);
            bVar2.setId(i11);
            bVar2.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(bVar2, iIndexOfChild);
            this.f4922u = bVar2;
        } else {
            this.f4922u = null;
        }
        this.f4920s = (TextView) findViewById(R.id.exo_duration);
        this.f4921t = (TextView) findViewById(R.id.exo_position);
        f fVar2 = this.f4922u;
        if (fVar2 != null) {
            fVar2.b(bVar);
        }
        View viewFindViewById2 = findViewById(R.id.exo_play);
        this.f4912l = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(bVar);
        }
        View viewFindViewById3 = findViewById(R.id.exo_pause);
        this.f4914m = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(bVar);
        }
        View viewFindViewById4 = findViewById(R.id.exo_prev);
        this.f4908j = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(bVar);
        }
        View viewFindViewById5 = findViewById(R.id.exo_next);
        this.f4910k = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(bVar);
        }
        View viewFindViewById6 = findViewById(R.id.exo_rew);
        this.f4916o = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(bVar);
        }
        View viewFindViewById7 = findViewById(R.id.exo_ffwd);
        this.f4915n = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.f4917p = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_shuffle);
        this.f4918q = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View viewFindViewById8 = findViewById(R.id.exo_vr);
        this.f4919r = viewFindViewById8;
        setShowVrButton(false);
        j(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.J = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.K = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.B = resources.getDrawable(R.drawable.exo_controls_repeat_off);
        this.C = resources.getDrawable(R.drawable.exo_controls_repeat_one);
        this.D = resources.getDrawable(R.drawable.exo_controls_repeat_all);
        this.H = resources.getDrawable(R.drawable.exo_controls_shuffle_on);
        this.I = resources.getDrawable(R.drawable.exo_controls_shuffle_off);
        this.E = resources.getString(R.string.exo_controls_repeat_off_description);
        this.F = resources.getString(R.string.exo_controls_repeat_one_description);
        this.G = resources.getString(R.string.exo_controls_repeat_all_description);
        this.L = resources.getString(R.string.exo_controls_shuffle_on_description);
        this.M = resources.getString(R.string.exo_controls_shuffle_off_description);
        this.f4911k0 = -9223372036854775807L;
        this.f4913l0 = -9223372036854775807L;
    }

    public final boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        o1 o1Var = this.N;
        if (o1Var != null) {
            if (keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88) {
                if (keyEvent.getAction() == 0) {
                    if (keyCode == 90) {
                        if (o1Var.s() != 4) {
                            o1Var.U();
                        }
                    } else if (keyCode == 89) {
                        o1Var.W();
                    } else if (keyEvent.getRepeatCount() == 0) {
                        if (keyCode == 79 || keyCode == 85) {
                            int iS = o1Var.s();
                            if (iS == 1 || iS == 4 || !o1Var.p()) {
                                b(o1Var);
                            } else {
                                o1Var.c();
                            }
                        } else if (keyCode == 87) {
                            o1Var.T();
                        } else if (keyCode == 88) {
                            o1Var.Z();
                        } else if (keyCode == 126) {
                            b(o1Var);
                        } else if (keyCode == 127) {
                            o1Var.c();
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void b(o1 o1Var) {
        int iS = o1Var.s();
        if (iS == 1) {
            o1Var.b();
        } else if (iS == 4) {
            o1Var.n(o1Var.C(), -9223372036854775807L);
        }
        o1Var.g();
    }

    public final void c() {
        if (e()) {
            setVisibility(8);
            for (InterfaceC0085d interfaceC0085d : this.f4906i) {
                getVisibility();
                interfaceC0085d.E();
            }
            removeCallbacks(this.f4927z);
            removeCallbacks(this.A);
            this.f4901e0 = -9223372036854775807L;
        }
    }

    public final void d() {
        removeCallbacks(this.A);
        if (this.T <= 0) {
            this.f4901e0 = -9223372036854775807L;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j10 = this.T;
        this.f4901e0 = jUptimeMillis + j10;
        if (this.P) {
            postDelayed(this.A, j10);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.A);
        } else if (motionEvent.getAction() == 1) {
            d();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final boolean e() {
        return getVisibility() == 0;
    }

    public final void f() {
        View view;
        View view2;
        boolean zH = h();
        if (!zH && (view2 = this.f4912l) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (!zH || (view = this.f4914m) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    public final void g() {
        View view;
        View view2;
        boolean zH = h();
        if (!zH && (view2 = this.f4912l) != null) {
            view2.requestFocus();
        } else {
            if (!zH || (view = this.f4914m) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    public o1 getPlayer() {
        return this.N;
    }

    public int getRepeatToggleModes() {
        return this.V;
    }

    public boolean getShowShuffleButton() {
        return this.d0;
    }

    public int getShowTimeoutMs() {
        return this.T;
    }

    public boolean getShowVrButton() {
        View view = this.f4919r;
        return view != null && view.getVisibility() == 0;
    }

    public final boolean h() {
        o1 o1Var = this.N;
        return (o1Var == null || o1Var.s() == 4 || this.N.s() == 1 || !this.N.p()) ? false : true;
    }

    public final void i() {
        l();
        k();
        n();
        o();
        p();
    }

    public final void j(boolean z10, boolean z11, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        view.setAlpha(z11 ? this.J : this.K);
        view.setVisibility(z10 ? 0 : 8);
    }

    public final void k() {
        boolean zD;
        boolean z10;
        boolean zD2;
        boolean zD3;
        if (e() && this.P) {
            o1 o1Var = this.N;
            boolean z11 = false;
            if (o1Var != null) {
                boolean zD4 = o1Var.D(5);
                boolean zD5 = o1Var.D(7);
                zD2 = o1Var.D(11);
                zD3 = o1Var.D(12);
                zD = o1Var.D(9);
                z10 = zD4;
                z11 = zD5;
            } else {
                zD = false;
                z10 = false;
                zD2 = false;
                zD3 = false;
            }
            j(this.f4899b0, z11, this.f4908j);
            j(this.W, zD2, this.f4916o);
            j(this.f4898a0, zD3, this.f4915n);
            j(this.f4900c0, zD, this.f4910k);
            f fVar = this.f4922u;
            if (fVar != null) {
                fVar.setEnabled(z10);
            }
        }
    }

    public final void l() {
        boolean z10;
        boolean z11;
        boolean z12;
        if (e() && this.P) {
            boolean zH = h();
            View view = this.f4912l;
            boolean z13 = true;
            if (view != null) {
                z10 = (zH && view.isFocused()) | false;
                if (g0.f10384a < 21) {
                    z12 = z10;
                } else {
                    z12 = zH && a.a(this.f4912l);
                }
                z11 = z12 | false;
                this.f4912l.setVisibility(zH ? 8 : 0);
            } else {
                z10 = false;
                z11 = false;
            }
            View view2 = this.f4914m;
            if (view2 != null) {
                z10 |= !zH && view2.isFocused();
                if (g0.f10384a < 21) {
                    z13 = z10;
                } else if (zH || !a.a(this.f4914m)) {
                    z13 = false;
                }
                z11 |= z13;
                this.f4914m.setVisibility(zH ? 0 : 8);
            }
            if (z10) {
                g();
            }
            if (z11) {
                f();
            }
        }
    }

    public final void m() {
        long jS;
        if (e() && this.P) {
            o1 o1Var = this.N;
            long jL = 0;
            if (o1Var != null) {
                jL = this.f4909j0 + o1Var.l();
                jS = this.f4909j0 + o1Var.S();
            } else {
                jS = 0;
            }
            boolean z10 = jL != this.f4911k0;
            boolean z11 = jS != this.f4913l0;
            this.f4911k0 = jL;
            this.f4913l0 = jS;
            TextView textView = this.f4921t;
            if (textView != null && !this.S && z10) {
                textView.setText(g0.C(this.f4923v, this.f4924w, jL));
            }
            f fVar = this.f4922u;
            if (fVar != null) {
                fVar.setPosition(jL);
                this.f4922u.setBufferedPosition(jS);
            }
            c cVar = this.O;
            if (cVar != null && (z10 || z11)) {
                cVar.a();
            }
            removeCallbacks(this.f4927z);
            int iS = o1Var == null ? 1 : o1Var.s();
            if (o1Var == null || !o1Var.w()) {
                if (iS == 4 || iS == 1) {
                    return;
                }
                postDelayed(this.f4927z, 1000L);
                return;
            }
            f fVar2 = this.f4922u;
            long jMin = Math.min(fVar2 != null ? fVar2.getPreferredUpdateDelay() : 1000L, 1000 - (jL % 1000));
            float f10 = o1Var.d().f11539h;
            postDelayed(this.f4927z, g0.j(f10 > 0.0f ? (long) (jMin / f10) : 1000L, this.U, 1000L));
        }
    }

    public final void n() {
        ImageView imageView;
        if (e() && this.P && (imageView = this.f4917p) != null) {
            if (this.V == 0) {
                j(false, false, imageView);
                return;
            }
            o1 o1Var = this.N;
            if (o1Var == null) {
                j(true, false, imageView);
                this.f4917p.setImageDrawable(this.B);
                this.f4917p.setContentDescription(this.E);
                return;
            }
            j(true, true, imageView);
            int iM = o1Var.M();
            if (iM == 0) {
                this.f4917p.setImageDrawable(this.B);
                this.f4917p.setContentDescription(this.E);
            } else if (iM == 1) {
                this.f4917p.setImageDrawable(this.C);
                this.f4917p.setContentDescription(this.F);
            } else if (iM == 2) {
                this.f4917p.setImageDrawable(this.D);
                this.f4917p.setContentDescription(this.G);
            }
            this.f4917p.setVisibility(0);
        }
    }

    public final void o() {
        ImageView imageView;
        if (e() && this.P && (imageView = this.f4918q) != null) {
            o1 o1Var = this.N;
            if (!this.d0) {
                j(false, false, imageView);
                return;
            }
            if (o1Var == null) {
                j(true, false, imageView);
                this.f4918q.setImageDrawable(this.I);
                this.f4918q.setContentDescription(this.M);
            } else {
                j(true, true, imageView);
                this.f4918q.setImageDrawable(o1Var.Q() ? this.H : this.I);
                this.f4918q.setContentDescription(o1Var.Q() ? this.L : this.M);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.P = true;
        long j10 = this.f4901e0;
        if (j10 != -9223372036854775807L) {
            long jUptimeMillis = j10 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                c();
            } else {
                postDelayed(this.A, jUptimeMillis);
            }
        } else if (e()) {
            d();
        }
        i();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.P = false;
        removeCallbacks(this.f4927z);
        removeCallbacks(this.A);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c5  */
    public final void p() {
        boolean z10;
        int i10;
        b2.d dVar;
        long j10;
        long[] jArr;
        boolean z11;
        int length;
        boolean z12;
        o1 o1Var = this.N;
        if (o1Var == null) {
            return;
        }
        long j11 = -9223372036854775807L;
        boolean z13 = true;
        if (this.Q) {
            b2 b2VarO = o1Var.O();
            b2.d dVar2 = this.f4926y;
            if (b2VarO.r() <= 100) {
                int iR = b2VarO.r();
                int i11 = 0;
                while (true) {
                    if (i11 >= iR) {
                        z12 = true;
                        break;
                    } else {
                        if (b2VarO.p(i11, dVar2).f11321u == -9223372036854775807L) {
                            z12 = false;
                            break;
                        }
                        i11++;
                    }
                }
            } else {
                z12 = false;
                break;
            }
            if (z12) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.R = z10;
        long j12 = 0;
        this.f4909j0 = 0L;
        b2 b2VarO2 = o1Var.O();
        if (b2VarO2.s()) {
            i10 = 0;
        } else {
            int iC = o1Var.C();
            boolean z14 = this.R;
            int i12 = z14 ? 0 : iC;
            int iR2 = z14 ? b2VarO2.r() - 1 : iC;
            long j13 = 0;
            i10 = 0;
            while (i12 <= iR2) {
                if (i12 == iC) {
                    this.f4909j0 = g0.X(j13);
                }
                b2VarO2.p(i12, this.f4926y);
                b2.d dVar3 = this.f4926y;
                if (dVar3.f11321u == j11) {
                    m5.a.e(this.R ^ z13);
                    break;
                }
                int i13 = dVar3.f11322v;
                while (true) {
                    dVar = this.f4926y;
                    if (i13 <= dVar.f11323w) {
                        b2VarO2.h(i13, this.f4925x);
                        q4.a aVar = this.f4925x.f11301n;
                        int i14 = aVar.f13613l;
                        int i15 = aVar.f13610i;
                        while (i14 < i15) {
                            long jE = this.f4925x.e(i14);
                            if (jE == Long.MIN_VALUE) {
                                long j14 = this.f4925x.f11298k;
                                if (j14 != j11) {
                                    jE = j14;
                                    j10 = jE + this.f4925x.f11299l;
                                    if (j10 >= 0) {
                                        jArr = this.f4902f0;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.f4902f0 = Arrays.copyOf(jArr, length);
                                            this.f4903g0 = Arrays.copyOf(this.f4903g0, length);
                                        }
                                        this.f4902f0[i10] = g0.X(j10 + j13);
                                        z11 = true;
                                        this.f4903g0[i10] = !this.f4925x.f11301n.b(i14).c();
                                        i10++;
                                    }
                                }
                                z11 = true;
                            } else {
                                j10 = jE + this.f4925x.f11299l;
                                if (j10 >= 0) {
                                    jArr = this.f4902f0;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.f4902f0 = Arrays.copyOf(jArr, length);
                                        this.f4903g0 = Arrays.copyOf(this.f4903g0, length);
                                    }
                                    this.f4902f0[i10] = g0.X(j10 + j13);
                                    z11 = true;
                                    this.f4903g0[i10] = !this.f4925x.f11301n.b(i14).c();
                                    i10++;
                                } else {
                                    z11 = true;
                                }
                            }
                            i14++;
                            z13 = z11;
                            j11 = -9223372036854775807L;
                        }
                        i13++;
                        z13 = z13;
                        j11 = -9223372036854775807L;
                    }
                }
                j13 += dVar.f11321u;
                i12++;
                z13 = z13;
                j11 = -9223372036854775807L;
            }
            j12 = j13;
        }
        long jX = g0.X(j12);
        TextView textView = this.f4920s;
        if (textView != null) {
            textView.setText(g0.C(this.f4923v, this.f4924w, jX));
        }
        f fVar = this.f4922u;
        if (fVar != null) {
            fVar.setDuration(jX);
            int length2 = this.f4905h0.length;
            int i16 = i10 + length2;
            long[] jArr2 = this.f4902f0;
            if (i16 > jArr2.length) {
                this.f4902f0 = Arrays.copyOf(jArr2, i16);
                this.f4903g0 = Arrays.copyOf(this.f4903g0, i16);
            }
            System.arraycopy(this.f4905h0, 0, this.f4902f0, i10, length2);
            System.arraycopy(this.f4907i0, 0, this.f4903g0, i10, length2);
            this.f4922u.a(this.f4902f0, this.f4903g0, i16);
        }
        m();
    }

    public void setPlayer(o1 o1Var) {
        boolean z10 = true;
        m5.a.e(Looper.myLooper() == Looper.getMainLooper());
        if (o1Var != null && o1Var.P() != Looper.getMainLooper()) {
            z10 = false;
        }
        m5.a.a(z10);
        o1 o1Var2 = this.N;
        if (o1Var2 == o1Var) {
            return;
        }
        if (o1Var2 != null) {
            o1Var2.H(this.f4904h);
        }
        this.N = o1Var;
        if (o1Var != null) {
            o1Var.a0(this.f4904h);
        }
        i();
    }

    public void setProgressUpdateListener(c cVar) {
        this.O = cVar;
    }

    public void setRepeatToggleModes(int i10) {
        this.V = i10;
        o1 o1Var = this.N;
        if (o1Var != null) {
            int iM = o1Var.M();
            if (i10 == 0 && iM != 0) {
                this.N.E(0);
            } else if (i10 == 1 && iM == 2) {
                this.N.E(1);
            } else if (i10 == 2 && iM == 1) {
                this.N.E(2);
            }
        }
        n();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f4898a0 = z10;
        k();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.Q = z10;
        p();
    }

    public void setShowNextButton(boolean z10) {
        this.f4900c0 = z10;
        k();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f4899b0 = z10;
        k();
    }

    public void setShowRewindButton(boolean z10) {
        this.W = z10;
        k();
    }

    public void setShowShuffleButton(boolean z10) {
        this.d0 = z10;
        o();
    }

    public void setShowTimeoutMs(int i10) {
        this.T = i10;
        if (e()) {
            d();
        }
    }

    public void setShowVrButton(boolean z10) {
        View view = this.f4919r;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.U = g0.i(i10, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.f4919r;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            j(getShowVrButton(), onClickListener != null, this.f4919r);
        }
    }
}
