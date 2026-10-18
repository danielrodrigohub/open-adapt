package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.newrelic.agent.android.api.v1.Defaults;
import com.newrelic.agent.android.crash.CrashSender;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import m5.g0;
import m5.i;
import n3.b2;
import n3.c2;
import n3.k1;
import n3.o1;
import n5.t;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import u6.v;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
@Deprecated
public class PlayerView extends FrameLayout {
    public static final /* synthetic */ int H = 0;
    public i<? super k1> A;
    public CharSequence B;
    public int C;
    public boolean D;
    public boolean E;
    public boolean F;
    public int G;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f4824h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AspectRatioFrameLayout f4825i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f4826j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f4827k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f4828l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ImageView f4829m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SubtitleView f4830n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f4831o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final TextView f4832p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final d f4833q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final FrameLayout f4834r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final FrameLayout f4835s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public o1 f4836t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4837u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public d.InterfaceC0085d f4838v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4839w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f4840x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f4841y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4842z;

    public final class a implements o1.c, View.OnLayoutChangeListener, View.OnClickListener, d.InterfaceC0085d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final b2.b f4843h = new b2.b();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f4844i;

        public a() {
        }

        @Override // com.google.android.exoplayer2.ui.d.InterfaceC0085d
        public final void E() {
            PlayerView playerView = PlayerView.this;
            int i10 = PlayerView.H;
            playerView.m();
        }

        @Override // n3.o1.c
        public final void U(int i10) {
            PlayerView playerView = PlayerView.this;
            int i11 = PlayerView.H;
            playerView.l();
            PlayerView.this.n();
            PlayerView playerView2 = PlayerView.this;
            if (playerView2.e() && playerView2.E) {
                playerView2.d();
            } else {
                playerView2.f(false);
            }
        }

        @Override // n3.o1.c
        public final void V(boolean z10, int i10) {
            PlayerView playerView = PlayerView.this;
            int i11 = PlayerView.H;
            playerView.l();
            PlayerView playerView2 = PlayerView.this;
            if (playerView2.e() && playerView2.E) {
                playerView2.d();
            } else {
                playerView2.f(false);
            }
        }

        @Override // n3.o1.c
        public final void b(t tVar) {
            PlayerView playerView = PlayerView.this;
            int i10 = PlayerView.H;
            playerView.k();
        }

        @Override // n3.o1.c
        public final void g0(o1.d dVar, o1.d dVar2, int i10) {
            PlayerView playerView = PlayerView.this;
            int i11 = PlayerView.H;
            if (playerView.e()) {
                PlayerView playerView2 = PlayerView.this;
                if (playerView2.E) {
                    playerView2.d();
                }
            }
        }

        @Override // n3.o1.c
        public final void j() {
            View view = PlayerView.this.f4826j;
            if (view != null) {
                view.setVisibility(4);
            }
        }

        @Override // n3.o1.c
        public final void l0(c2 c2Var) {
            o1 o1Var = PlayerView.this.f4836t;
            Objects.requireNonNull(o1Var);
            b2 b2VarO = o1Var.O();
            if (b2VarO.s()) {
                this.f4844i = null;
            } else if (o1Var.t().f11338h.isEmpty()) {
                Object obj = this.f4844i;
                if (obj != null) {
                    int iD = b2VarO.d(obj);
                    if (iD != -1) {
                        if (o1Var.C() == b2VarO.i(iD, this.f4843h, false).f11297j) {
                            return;
                        }
                    }
                    this.f4844i = null;
                }
            } else {
                this.f4844i = b2VarO.i(o1Var.x(), this.f4843h, true).f11296i;
            }
            PlayerView.this.o(false);
        }

        @Override // n3.o1.c
        public final void o(z4.c cVar) {
            SubtitleView subtitleView = PlayerView.this.f4830n;
            if (subtitleView != null) {
                subtitleView.setCues(cVar.f19329h);
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PlayerView playerView = PlayerView.this;
            int i10 = PlayerView.H;
            playerView.j();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            PlayerView.a((TextureView) view, PlayerView.this.G);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, AttributeSet attributeSet) {
        int i10;
        int i11;
        boolean z10;
        boolean z11;
        int i12;
        int i13;
        int i14;
        boolean z12;
        boolean z13;
        int i15;
        boolean z14;
        int i16;
        boolean z15;
        int i17;
        boolean z16;
        super(context, attributeSet, 0);
        a aVar = new a();
        this.f4824h = aVar;
        if (isInEditMode()) {
            this.f4825i = null;
            this.f4826j = null;
            this.f4827k = null;
            this.f4828l = false;
            this.f4829m = null;
            this.f4830n = null;
            this.f4831o = null;
            this.f4832p = null;
            this.f4833q = null;
            this.f4834r = null;
            this.f4835s = null;
            ImageView imageView = new ImageView(context);
            if (g0.f10384a >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, null));
                imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(resources2.getDrawable(R.drawable.exo_edit_mode_logo));
                imageView.setBackgroundColor(resources2.getColor(R.color.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        int i18 = R.layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlayerView, 0, 0);
            try {
                int i19 = R.styleable.PlayerView_shutter_background_color;
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i19);
                int color = typedArrayObtainStyledAttributes.getColor(i19, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerView_player_layout_id, i18);
                boolean z17 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerView_default_artwork, 0);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_use_controller, true);
                int i20 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_surface_type, 1);
                int i21 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_resize_mode, 0);
                int i22 = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerView_show_timeout, CrashSender.CRASH_COLLECTOR_TIMEOUT);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_on_touch, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_auto_show, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.PlayerView_show_buffering, 0);
                this.f4842z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_keep_content_on_player_reset, this.f4842z);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                i12 = i21;
                z15 = z19;
                z10 = z20;
                i10 = i22;
                z14 = z18;
                i16 = resourceId;
                i15 = resourceId2;
                z13 = z17;
                z12 = zHasValue;
                i14 = color;
                i13 = i20;
                z11 = z21;
                i11 = integer;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i10 = 5000;
            i11 = 0;
            z10 = true;
            z11 = true;
            i12 = 0;
            i13 = 1;
            i14 = 0;
            z12 = false;
            z13 = true;
            i15 = 0;
            z14 = true;
            i16 = i18;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i16, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.f4825i = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i12);
        }
        View viewFindViewById = findViewById(R.id.exo_shutter);
        this.f4826j = viewFindViewById;
        if (viewFindViewById != null && z12) {
            viewFindViewById.setBackgroundColor(i14);
        }
        if (aspectRatioFrameLayout == null || i13 == 0) {
            i17 = 0;
            this.f4827k = null;
            z16 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i13 != 2) {
                if (i13 == 3) {
                    try {
                        this.f4827k = (View) Class.forName("o5.j").getConstructor(Context.class).newInstance(context);
                        z16 = true;
                    } catch (Exception e10) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                    }
                } else if (i13 != 4) {
                    this.f4827k = new SurfaceView(context);
                } else {
                    try {
                        this.f4827k = (View) Class.forName("n5.i").getConstructor(Context.class).newInstance(context);
                    } catch (Exception e11) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                    }
                }
                this.f4827k.setLayoutParams(layoutParams);
                this.f4827k.setOnClickListener(aVar);
                i17 = 0;
                this.f4827k.setClickable(false);
                aspectRatioFrameLayout.addView(this.f4827k, 0);
            } else {
                this.f4827k = new TextureView(context);
            }
            z16 = false;
            this.f4827k.setLayoutParams(layoutParams);
            this.f4827k.setOnClickListener(aVar);
            i17 = 0;
            this.f4827k.setClickable(false);
            aspectRatioFrameLayout.addView(this.f4827k, 0);
        }
        this.f4828l = z16;
        this.f4834r = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.f4835s = (FrameLayout) findViewById(R.id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.f4829m = imageView2;
        this.f4839w = (!z13 || imageView2 == null) ? i17 : 1;
        if (i15 != 0) {
            Context context2 = getContext();
            Object obj = y.a.f18143a;
            this.f4840x = y.a.b.b(context2, i15);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.f4830n = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View viewFindViewById2 = findViewById(R.id.exo_buffering);
        this.f4831o = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f4841y = i11;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.f4832p = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i23 = R.id.exo_controller;
        d dVar = (d) findViewById(i23);
        View viewFindViewById3 = findViewById(R.id.exo_controller_placeholder);
        if (dVar != null) {
            this.f4833q = dVar;
        } else if (viewFindViewById3 != null) {
            d dVar2 = new d(context, attributeSet);
            this.f4833q = dVar2;
            dVar2.setId(i23);
            dVar2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(dVar2, iIndexOfChild);
        } else {
            this.f4833q = null;
        }
        d dVar3 = this.f4833q;
        this.C = dVar3 != null ? i10 : i17;
        this.F = z15;
        this.D = z10;
        this.E = z11;
        this.f4837u = (!z14 || dVar3 == null) ? i17 : 1;
        if (dVar3 != null) {
            dVar3.c();
            d dVar4 = this.f4833q;
            Objects.requireNonNull(dVar4);
            dVar4.f4906i.add(aVar);
        }
        if (z14) {
            setClickable(true);
        }
        m();
    }

    public static void a(TextureView textureView, int i10) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i10 != 0) {
            float f10 = width / 2.0f;
            float f11 = height / 2.0f;
            matrix.postRotate(i10, f10, f11);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f10, f11);
        }
        textureView.setTransform(matrix);
    }

    public final void b() {
        View view = this.f4826j;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final void c() {
        ImageView imageView = this.f4829m;
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
            this.f4829m.setVisibility(4);
        }
    }

    public final void d() {
        d dVar = this.f4833q;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        o1 o1Var = this.f4836t;
        if (o1Var != null && o1Var.j()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z10 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        if (z10 && p() && !this.f4833q.e()) {
            f(true);
        } else {
            if (!(p() && this.f4833q.a(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                if (!z10 || !p()) {
                    return false;
                }
                f(true);
                return false;
            }
            f(true);
        }
        return true;
    }

    public final boolean e() {
        o1 o1Var = this.f4836t;
        return o1Var != null && o1Var.j() && this.f4836t.p();
    }

    public final void f(boolean z10) {
        if (!(e() && this.E) && p()) {
            boolean z11 = this.f4833q.e() && this.f4833q.getShowTimeoutMs() <= 0;
            boolean zH = h();
            if (z10 || z11 || zH) {
                i(zH);
            }
        }
    }

    @RequiresNonNull({"artworkView"})
    public final boolean g(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float f10 = intrinsicWidth / intrinsicHeight;
                AspectRatioFrameLayout aspectRatioFrameLayout = this.f4825i;
                if (aspectRatioFrameLayout != null) {
                    aspectRatioFrameLayout.setAspectRatio(f10);
                }
                this.f4829m.setImageDrawable(drawable);
                this.f4829m.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    public List<k5.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f4835s;
        if (frameLayout != null) {
            arrayList.add(new k5.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        if (this.f4833q != null) {
            arrayList.add(new k5.a());
        }
        return v.s(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f4834r;
        m5.a.g(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public boolean getControllerAutoShow() {
        return this.D;
    }

    public boolean getControllerHideOnTouch() {
        return this.F;
    }

    public int getControllerShowTimeoutMs() {
        return this.C;
    }

    public Drawable getDefaultArtwork() {
        return this.f4840x;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f4835s;
    }

    public o1 getPlayer() {
        return this.f4836t;
    }

    public int getResizeMode() {
        m5.a.f(this.f4825i);
        return this.f4825i.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f4830n;
    }

    public boolean getUseArtwork() {
        return this.f4839w;
    }

    public boolean getUseController() {
        return this.f4837u;
    }

    public View getVideoSurfaceView() {
        return this.f4827k;
    }

    public final boolean h() {
        o1 o1Var = this.f4836t;
        if (o1Var == null) {
            return true;
        }
        int iS = o1Var.s();
        return this.D && (iS == 1 || iS == 4 || !this.f4836t.p());
    }

    public final void i(boolean z10) {
        if (p()) {
            this.f4833q.setShowTimeoutMs(z10 ? 0 : this.C);
            d dVar = this.f4833q;
            if (!dVar.e()) {
                dVar.setVisibility(0);
                for (d.InterfaceC0085d interfaceC0085d : dVar.f4906i) {
                    dVar.getVisibility();
                    interfaceC0085d.E();
                }
                dVar.i();
                dVar.g();
                dVar.f();
            }
            dVar.d();
        }
    }

    public final void j() {
        if (!p() || this.f4836t == null) {
            return;
        }
        if (!this.f4833q.e()) {
            f(true);
        } else if (this.F) {
            this.f4833q.c();
        }
    }

    public final void k() {
        o1 o1Var = this.f4836t;
        t tVarA = o1Var != null ? o1Var.A() : t.f11985l;
        int i10 = tVarA.f11986h;
        int i11 = tVarA.f11987i;
        int i12 = tVarA.f11988j;
        float f10 = (i11 == 0 || i10 == 0) ? 0.0f : (i10 * tVarA.f11989k) / i11;
        View view = this.f4827k;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i12 == 90 || i12 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.G != 0) {
                view.removeOnLayoutChangeListener(this.f4824h);
            }
            this.G = i12;
            if (i12 != 0) {
                this.f4827k.addOnLayoutChangeListener(this.f4824h);
            }
            a((TextureView) this.f4827k, this.G);
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f4825i;
        float f11 = this.f4828l ? 0.0f : f10;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f11);
        }
    }

    public final void l() {
        int i10;
        if (this.f4831o != null) {
            o1 o1Var = this.f4836t;
            boolean z10 = true;
            if (o1Var == null || o1Var.s() != 2 || ((i10 = this.f4841y) != 2 && (i10 != 1 || !this.f4836t.p()))) {
                z10 = false;
            }
            this.f4831o.setVisibility(z10 ? 0 : 8);
        }
    }

    public final void m() {
        d dVar = this.f4833q;
        if (dVar == null || !this.f4837u) {
            setContentDescription(null);
        } else if (dVar.getVisibility() == 0) {
            setContentDescription(this.F ? getResources().getString(R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.exo_controls_show));
        }
    }

    public final void n() {
        i<? super k1> iVar;
        TextView textView = this.f4832p;
        if (textView != null) {
            CharSequence charSequence = this.B;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f4832p.setVisibility(0);
                return;
            }
            o1 o1Var = this.f4836t;
            if ((o1Var != null ? o1Var.h() : null) == null || (iVar = this.A) == null) {
                this.f4832p.setVisibility(8);
            } else {
                this.f4832p.setText((CharSequence) iVar.b().second);
                this.f4832p.setVisibility(0);
            }
        }
    }

    public final void o(boolean z10) {
        boolean z11;
        o1 o1Var = this.f4836t;
        if (o1Var == null || !o1Var.D(30) || o1Var.t().f11338h.isEmpty()) {
            if (this.f4842z) {
                return;
            }
            c();
            b();
            return;
        }
        if (z10 && !this.f4842z) {
            b();
        }
        if (o1Var.t().b(2)) {
            c();
            return;
        }
        b();
        boolean zG = false;
        if (this.f4839w) {
            m5.a.f(this.f4829m);
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            byte[] bArr = o1Var.X().f11232q;
            if (bArr != null) {
                zG = g(new BitmapDrawable(getResources(), BitmapFactoryInstrumentation.decodeByteArray(bArr, 0, bArr.length)));
            }
            if (zG || g(this.f4840x)) {
                return;
            }
        }
        c();
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!p() || this.f4836t == null) {
            return false;
        }
        f(true);
        return true;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = Defaults.COLLECT_NETWORK_ERRORS)
    public final boolean p() {
        if (!this.f4837u) {
            return false;
        }
        m5.a.f(this.f4833q);
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        j();
        return super.performClick();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.a aVar) {
        m5.a.f(this.f4825i);
        this.f4825i.setAspectRatioListener(aVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.D = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.E = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        m5.a.f(this.f4833q);
        this.F = z10;
        m();
    }

    public void setControllerShowTimeoutMs(int i10) {
        m5.a.f(this.f4833q);
        this.C = i10;
        if (this.f4833q.e()) {
            i(h());
        }
    }

    public void setControllerVisibilityListener(d.InterfaceC0085d interfaceC0085d) {
        m5.a.f(this.f4833q);
        d.InterfaceC0085d interfaceC0085d2 = this.f4838v;
        if (interfaceC0085d2 == interfaceC0085d) {
            return;
        }
        if (interfaceC0085d2 != null) {
            this.f4833q.f4906i.remove(interfaceC0085d2);
        }
        this.f4838v = interfaceC0085d;
        if (interfaceC0085d != null) {
            d dVar = this.f4833q;
            Objects.requireNonNull(dVar);
            dVar.f4906i.add(interfaceC0085d);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        m5.a.e(this.f4832p != null);
        this.B = charSequence;
        n();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f4840x != drawable) {
            this.f4840x = drawable;
            o(false);
        }
    }

    public void setErrorMessageProvider(i<? super k1> iVar) {
        if (this.A != iVar) {
            this.A = iVar;
            n();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f4842z != z10) {
            this.f4842z = z10;
            o(false);
        }
    }

    public void setPlayer(o1 o1Var) {
        m5.a.e(Looper.myLooper() == Looper.getMainLooper());
        m5.a.a(o1Var == null || o1Var.P() == Looper.getMainLooper());
        o1 o1Var2 = this.f4836t;
        if (o1Var2 == o1Var) {
            return;
        }
        if (o1Var2 != null) {
            o1Var2.H(this.f4824h);
            if (o1Var2.D(27)) {
                View view = this.f4827k;
                if (view instanceof TextureView) {
                    o1Var2.z((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    o1Var2.J((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f4830n;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f4836t = o1Var;
        if (p()) {
            this.f4833q.setPlayer(o1Var);
        }
        l();
        n();
        o(true);
        if (o1Var == null) {
            d();
            return;
        }
        if (o1Var.D(27)) {
            View view2 = this.f4827k;
            if (view2 instanceof TextureView) {
                o1Var.V((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                o1Var.I((SurfaceView) view2);
            }
            k();
        }
        if (this.f4830n != null && o1Var.D(28)) {
            this.f4830n.setCues(o1Var.y().f19329h);
        }
        o1Var.a0(this.f4824h);
        f(false);
    }

    public void setRepeatToggleModes(int i10) {
        m5.a.f(this.f4833q);
        this.f4833q.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        m5.a.f(this.f4825i);
        this.f4825i.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f4841y != i10) {
            this.f4841y = i10;
            l();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        m5.a.f(this.f4833q);
        this.f4833q.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        m5.a.f(this.f4833q);
        this.f4833q.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        m5.a.f(this.f4833q);
        this.f4833q.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        m5.a.f(this.f4833q);
        this.f4833q.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        m5.a.f(this.f4833q);
        this.f4833q.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        m5.a.f(this.f4833q);
        this.f4833q.setShowShuffleButton(z10);
    }

    public void setShutterBackgroundColor(int i10) {
        View view = this.f4826j;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setUseArtwork(boolean z10) {
        m5.a.e((z10 && this.f4829m == null) ? false : true);
        if (this.f4839w != z10) {
            this.f4839w = z10;
            o(false);
        }
    }

    public void setUseController(boolean z10) {
        m5.a.e((z10 && this.f4833q == null) ? false : true);
        setClickable(z10 || hasOnClickListeners());
        if (this.f4837u == z10) {
            return;
        }
        this.f4837u = z10;
        if (p()) {
            this.f4833q.setPlayer(this.f4836t);
        } else {
            d dVar = this.f4833q;
            if (dVar != null) {
                dVar.c();
                this.f4833q.setPlayer(null);
            }
        }
        m();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f4827k;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }
}
