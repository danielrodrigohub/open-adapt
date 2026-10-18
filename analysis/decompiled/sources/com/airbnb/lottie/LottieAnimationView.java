package com.airbnb.lottie;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PathMeasure;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.s;
import androidx.recyclerview.widget.d;
import com.airbnb.lottie.LottieAnimationView;
import d2.e;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;
import javax.net.ssl.SSLException;
import k2.g;
import y1.e0;
import y1.g0;
import y1.h0;
import y1.i;
import y1.i0;
import y1.k0;
import y1.l0;
import y1.m0;
import y1.n0;
import y1.o0;
import y1.q;

/* JADX INFO: loaded from: classes.dex */
public class LottieAnimationView extends s {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f4388y = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final g0<i> f4389k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final g0<Throwable> f4390l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public g0<Throwable> f4391m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4392n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final e0 f4393o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f4394p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4395q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4396r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4397s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f4398t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Set<c> f4399u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Set<h0> f4400v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public k0<i> f4401w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public i f4402x;

    public class a implements g0<Throwable> {
        public a() {
        }

        @Override // y1.g0
        public final void a(Throwable th) {
            Throwable th2 = th;
            LottieAnimationView lottieAnimationView = LottieAnimationView.this;
            int i10 = lottieAnimationView.f4392n;
            if (i10 != 0) {
                lottieAnimationView.setImageResource(i10);
            }
            g0 g0Var = LottieAnimationView.this.f4391m;
            if (g0Var == null) {
                int i11 = LottieAnimationView.f4388y;
                g0Var = new g0() { // from class: y1.g
                    @Override // y1.g0
                    public final void a(Object obj) {
                        Throwable th3 = (Throwable) obj;
                        int i12 = LottieAnimationView.f4388y;
                        ThreadLocal<PathMeasure> threadLocal = k2.g.f9638a;
                        if (!((th3 instanceof SocketException) || (th3 instanceof ClosedChannelException) || (th3 instanceof InterruptedIOException) || (th3 instanceof ProtocolException) || (th3 instanceof SSLException) || (th3 instanceof UnknownHostException) || (th3 instanceof UnknownServiceException))) {
                            throw new IllegalStateException("Unable to parse composition", th3);
                        }
                        k2.c.c("Unable to load composition.", th3);
                    }
                };
            }
            g0Var.a(th2);
        }
    }

    public static class b extends View.BaseSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f4404h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4405i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f4406j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f4407k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public String f4408l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f4409m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f4410n;

        public class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f4404h);
            parcel.writeFloat(this.f4406j);
            parcel.writeInt(this.f4407k ? 1 : 0);
            parcel.writeString(this.f4408l);
            parcel.writeInt(this.f4409m);
            parcel.writeInt(this.f4410n);
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f4404h = parcel.readString();
            this.f4406j = parcel.readFloat();
            this.f4407k = parcel.readInt() == 1;
            this.f4408l = parcel.readString();
            this.f4409m = parcel.readInt();
            this.f4410n = parcel.readInt();
        }
    }

    public enum c {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        String string;
        super(context, attributeSet);
        this.f4389k = new g0() { // from class: y1.f
            @Override // y1.g0
            public final void a(Object obj) {
                this.f18325a.setComposition((i) obj);
            }
        };
        this.f4390l = new a();
        this.f4392n = 0;
        e0 e0Var = new e0();
        this.f4393o = e0Var;
        this.f4396r = false;
        this.f4397s = false;
        this.f4398t = true;
        this.f4399u = new HashSet();
        this.f4400v = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LottieAnimationView, R.attr.lottieAnimationViewStyle, 0);
        this.f4398t = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_cacheComposition, true);
        int i10 = R.styleable.LottieAnimationView_lottie_rawRes;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i10);
        int i11 = R.styleable.LottieAnimationView_lottie_fileName;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i11);
        int i12 = R.styleable.LottieAnimationView_lottie_url;
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(i12);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(i10, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(i11);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(i12)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f4397s = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_loop, false)) {
            e0Var.f18306i.setRepeatCount(-1);
        }
        int i13 = R.styleable.LottieAnimationView_lottie_repeatMode;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(i13, 1));
        }
        int i14 = R.styleable.LottieAnimationView_lottie_repeatCount;
        if (typedArrayObtainStyledAttributes.hasValue(i14)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(i14, -1));
        }
        int i15 = R.styleable.LottieAnimationView_lottie_speed;
        if (typedArrayObtainStyledAttributes.hasValue(i15)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(i15, 1.0f));
        }
        int i16 = R.styleable.LottieAnimationView_lottie_clipToCompositionBounds;
        if (typedArrayObtainStyledAttributes.hasValue(i16)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(i16, true));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(typedArrayObtainStyledAttributes.getFloat(R.styleable.LottieAnimationView_lottie_progress, 0.0f));
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false);
        if (e0Var.f18317t != z10) {
            e0Var.f18317t = z10;
            if (e0Var.f18305h != null) {
                e0Var.c();
            }
        }
        int i17 = R.styleable.LottieAnimationView_lottie_colorFilter;
        if (typedArrayObtainStyledAttributes.hasValue(i17)) {
            e0Var.a(new e("**"), i0.K, new l2.c(new n0(g.a.a(getContext(), typedArrayObtainStyledAttributes.getResourceId(i17, -1)).getDefaultColor())));
        }
        int i18 = R.styleable.LottieAnimationView_lottie_renderMode;
        if (typedArrayObtainStyledAttributes.hasValue(i18)) {
            int i19 = typedArrayObtainStyledAttributes.getInt(i18, 0);
            setRenderMode(m0.values()[i19 >= m0.values().length ? 0 : i19]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        typedArrayObtainStyledAttributes.recycle();
        Context context2 = getContext();
        ThreadLocal<PathMeasure> threadLocal = g.f9638a;
        e0Var.f18307j = Boolean.valueOf(Settings.Global.getFloat(context2.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f).booleanValue();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    private void setCompositionTask(k0<i> k0Var) {
        this.f4399u.add(c.SET_ANIMATION);
        this.f4402x = null;
        this.f4393o.d();
        d();
        k0Var.b(this.f4389k);
        k0Var.a(this.f4390l);
        this.f4401w = k0Var;
    }

    public final void c(Animator.AnimatorListener animatorListener) {
        this.f4393o.f18306i.addListener(animatorListener);
    }

    public final void d() {
        k0<i> k0Var = this.f4401w;
        if (k0Var != null) {
            g0<i> g0Var = this.f4389k;
            synchronized (k0Var) {
                k0Var.f18382a.remove(g0Var);
            }
            k0<i> k0Var2 = this.f4401w;
            g0<Throwable> g0Var2 = this.f4390l;
            synchronized (k0Var2) {
                k0Var2.f18383b.remove(g0Var2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    public final void e() {
        this.f4399u.add(c.PLAY_OPTION);
        this.f4393o.n();
    }

    public boolean getClipToCompositionBounds() {
        return this.f4393o.f18319v;
    }

    public i getComposition() {
        return this.f4402x;
    }

    public long getDuration() {
        i iVar = this.f4402x;
        if (iVar != null) {
            return (long) iVar.b();
        }
        return 0L;
    }

    public int getFrame() {
        return (int) this.f4393o.f18306i.f9630m;
    }

    public String getImageAssetsFolder() {
        return this.f4393o.f18314q;
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f4393o.f18318u;
    }

    public float getMaxFrame() {
        return this.f4393o.h();
    }

    public float getMinFrame() {
        return this.f4393o.i();
    }

    public l0 getPerformanceTracker() {
        i iVar = this.f4393o.f18305h;
        if (iVar != null) {
            return iVar.f18332a;
        }
        return null;
    }

    public float getProgress() {
        return this.f4393o.j();
    }

    public m0 getRenderMode() {
        return this.f4393o.C ? m0.SOFTWARE : m0.HARDWARE;
    }

    public int getRepeatCount() {
        return this.f4393o.k();
    }

    public int getRepeatMode() {
        return this.f4393o.f18306i.getRepeatMode();
    }

    public float getSpeed() {
        return this.f4393o.f18306i.f9627j;
    }

    @Override // android.view.View
    public final void invalidate() {
        m0 m0Var = m0.SOFTWARE;
        super.invalidate();
        Drawable drawable = getDrawable();
        if (drawable instanceof e0) {
            if ((((e0) drawable).C ? m0Var : m0.HARDWARE) == m0Var) {
                this.f4393o.invalidateSelf();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        e0 e0Var = this.f4393o;
        if (drawable2 == e0Var) {
            super.invalidateDrawable(e0Var);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.f4397s) {
            return;
        }
        this.f4393o.n();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        this.f4394p = bVar.f4404h;
        ?? r10 = this.f4399u;
        c cVar = c.SET_ANIMATION;
        if (!r10.contains(cVar) && !TextUtils.isEmpty(this.f4394p)) {
            setAnimation(this.f4394p);
        }
        this.f4395q = bVar.f4405i;
        if (!this.f4399u.contains(cVar) && (i10 = this.f4395q) != 0) {
            setAnimation(i10);
        }
        if (!this.f4399u.contains(c.SET_PROGRESS)) {
            setProgress(bVar.f4406j);
        }
        if (!this.f4399u.contains(c.PLAY_OPTION) && bVar.f4407k) {
            e();
        }
        if (!this.f4399u.contains(c.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(bVar.f4408l);
        }
        if (!this.f4399u.contains(c.SET_REPEAT_MODE)) {
            setRepeatMode(bVar.f4409m);
        }
        if (this.f4399u.contains(c.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(bVar.f4410n);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z10;
        b bVar = new b(super.onSaveInstanceState());
        bVar.f4404h = this.f4394p;
        bVar.f4405i = this.f4395q;
        bVar.f4406j = this.f4393o.j();
        e0 e0Var = this.f4393o;
        if (e0Var.isVisible()) {
            z10 = e0Var.f18306i.f9635r;
        } else {
            int i10 = e0Var.f18310m;
            z10 = i10 == 2 || i10 == 3;
        }
        bVar.f4407k = z10;
        e0 e0Var2 = this.f4393o;
        bVar.f4408l = e0Var2.f18314q;
        bVar.f4409m = e0Var2.f18306i.getRepeatMode();
        bVar.f4410n = this.f4393o.k();
        return bVar;
    }

    public void setAnimation(final int i10) {
        k0<i> k0VarA;
        k0<i> k0Var;
        this.f4395q = i10;
        final String str = null;
        this.f4394p = null;
        if (isInEditMode()) {
            k0Var = new k0<>(new Callable() { // from class: y1.d
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    LottieAnimationView lottieAnimationView = this.f18297a;
                    int i11 = i10;
                    if (!lottieAnimationView.f4398t) {
                        return q.e(lottieAnimationView.getContext(), i11, null);
                    }
                    Context context = lottieAnimationView.getContext();
                    return q.e(context, i11, q.h(context, i11));
                }
            }, true);
        } else {
            if (this.f4398t) {
                Context context = getContext();
                final String strH = q.h(context, i10);
                final WeakReference weakReference = new WeakReference(context);
                final Context applicationContext = context.getApplicationContext();
                k0VarA = q.a(strH, new Callable() { // from class: y1.m
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        WeakReference weakReference2 = weakReference;
                        Context context2 = applicationContext;
                        int i11 = i10;
                        String str2 = strH;
                        Context context3 = (Context) weakReference2.get();
                        if (context3 != null) {
                            context2 = context3;
                        }
                        return q.e(context2, i11, str2);
                    }
                });
            } else {
                Context context2 = getContext();
                Map<String, k0<i>> map = q.f18405a;
                final WeakReference weakReference2 = new WeakReference(context2);
                final Context applicationContext2 = context2.getApplicationContext();
                k0VarA = q.a(null, new Callable() { // from class: y1.m
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        WeakReference weakReference3 = weakReference2;
                        Context context3 = applicationContext2;
                        int i11 = i10;
                        String str2 = str;
                        Context context4 = (Context) weakReference3.get();
                        if (context4 != null) {
                            context3 = context4;
                        }
                        return q.e(context3, i11, str2);
                    }
                });
            }
            k0Var = k0VarA;
        }
        setCompositionTask(k0Var);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        Map<String, k0<i>> map = q.f18405a;
        setCompositionTask(q.a(null, new Callable() { // from class: y1.l

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f18388b = null;

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return q.c(byteArrayInputStream, this.f18388b);
            }
        }));
    }

    public void setAnimationFromUrl(final String str) {
        k0<i> k0VarA;
        if (this.f4398t) {
            final Context context = getContext();
            Map<String, k0<i>> map = q.f18405a;
            final String strC = d.c("url_", str);
            k0VarA = q.a(strC, new Callable() { // from class: y1.k
                /* JADX WARN: Code duplicated, block: B:54:0x00bf  */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    i iVar;
                    j0<i> j0Var;
                    i iVar2;
                    Pair pair;
                    h2.e eVar;
                    Context context2 = context;
                    String str2 = str;
                    String str3 = strC;
                    h2.f fVar = p4.h.f13014k;
                    if (fVar == null) {
                        synchronized (h2.f.class) {
                            fVar = p4.h.f13014k;
                            if (fVar == null) {
                                Context applicationContext = context2.getApplicationContext();
                                h2.e eVar2 = p4.h.f13015l;
                                if (eVar2 == null) {
                                    synchronized (h2.e.class) {
                                        eVar = p4.h.f13015l;
                                        if (eVar == null) {
                                            eVar = new h2.e(new c(applicationContext));
                                            p4.h.f13015l = eVar;
                                        }
                                    }
                                    eVar2 = eVar;
                                }
                                fVar = new h2.f(eVar2, new h2.b());
                                p4.h.f13014k = fVar;
                            }
                        }
                    }
                    h2.c cVar = h2.c.ZIP;
                    boolean z10 = false;
                    AutoCloseable autoCloseable = null;
                    if (str3 == null) {
                        iVar = null;
                    } else {
                        h2.e eVar3 = fVar.f8113a;
                        Objects.requireNonNull(eVar3);
                        try {
                            File fileB = eVar3.b();
                            h2.c cVar2 = h2.c.JSON;
                            File file = new File(fileB, h2.e.a(str2, cVar2, false));
                            if (!file.exists()) {
                                file = new File(eVar3.b(), h2.e.a(str2, cVar, false));
                                if (!file.exists()) {
                                    file = null;
                                }
                            }
                            if (file == null) {
                                pair = null;
                            } else {
                                FileInputStream fileInputStream = new FileInputStream(file);
                                if (file.getAbsolutePath().endsWith(".zip")) {
                                    cVar2 = cVar;
                                }
                                file.getAbsolutePath();
                                k2.c.a();
                                pair = new Pair(cVar2, fileInputStream);
                            }
                        } catch (FileNotFoundException unused) {
                        }
                        if (pair == null) {
                            iVar = null;
                        } else {
                            h2.c cVar3 = (h2.c) pair.first;
                            InputStream inputStream = (InputStream) pair.second;
                            i iVar3 = (cVar3 == cVar ? q.f(new ZipInputStream(inputStream), str2) : q.c(inputStream, str2)).f18376a;
                            if (iVar3 != null) {
                                iVar = iVar3;
                            } else {
                                iVar = null;
                            }
                        }
                    }
                    if (iVar != null) {
                        j0Var = new j0<>(iVar);
                    } else {
                        k2.c.a();
                        k2.c.a();
                        try {
                            try {
                                h2.a aVarA = fVar.f8114b.a(str2);
                                try {
                                    if (aVarA.f8107h.getResponseCode() / 100 == 2) {
                                        z10 = true;
                                    }
                                } catch (IOException unused2) {
                                }
                                if (z10) {
                                    j0Var = fVar.a(str2, aVarA.f8107h.getInputStream(), aVarA.f8107h.getContentType(), str3);
                                    k2.c.a();
                                } else {
                                    j0Var = new j0<>(new IllegalArgumentException(aVarA.x()));
                                }
                                try {
                                    aVarA.close();
                                } catch (IOException e10) {
                                    k2.c.c("LottieFetchResult close failed ", e10);
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    try {
                                        autoCloseable.close();
                                    } catch (IOException e11) {
                                        k2.c.c("LottieFetchResult close failed ", e11);
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e12) {
                            j0<i> j0Var2 = new j0<>(e12);
                            if (0 != 0) {
                                try {
                                    autoCloseable.close();
                                } catch (IOException e13) {
                                    k2.c.c("LottieFetchResult close failed ", e13);
                                }
                            }
                            j0Var = j0Var2;
                        }
                    }
                    if (str3 != null && (iVar2 = j0Var.f18376a) != null) {
                        d2.g.f5985b.a(str3, iVar2);
                    }
                    return j0Var;
                }
            });
        } else {
            final Context context2 = getContext();
            final String str2 = null;
            Map<String, k0<i>> map2 = q.f18405a;
            k0VarA = q.a(null, new Callable() { // from class: y1.k
                /* JADX WARN: Code duplicated, block: B:54:0x00bf  */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    i iVar;
                    j0<i> j0Var;
                    i iVar2;
                    Pair pair;
                    h2.e eVar;
                    Context context3 = context2;
                    String str3 = str;
                    String str4 = str2;
                    h2.f fVar = p4.h.f13014k;
                    if (fVar == null) {
                        synchronized (h2.f.class) {
                            fVar = p4.h.f13014k;
                            if (fVar == null) {
                                Context applicationContext = context3.getApplicationContext();
                                h2.e eVar2 = p4.h.f13015l;
                                if (eVar2 == null) {
                                    synchronized (h2.e.class) {
                                        eVar = p4.h.f13015l;
                                        if (eVar == null) {
                                            eVar = new h2.e(new c(applicationContext));
                                            p4.h.f13015l = eVar;
                                        }
                                    }
                                    eVar2 = eVar;
                                }
                                fVar = new h2.f(eVar2, new h2.b());
                                p4.h.f13014k = fVar;
                            }
                        }
                    }
                    h2.c cVar = h2.c.ZIP;
                    boolean z10 = false;
                    AutoCloseable autoCloseable = null;
                    if (str4 == null) {
                        iVar = null;
                    } else {
                        h2.e eVar3 = fVar.f8113a;
                        Objects.requireNonNull(eVar3);
                        try {
                            File fileB = eVar3.b();
                            h2.c cVar2 = h2.c.JSON;
                            File file = new File(fileB, h2.e.a(str3, cVar2, false));
                            if (!file.exists()) {
                                file = new File(eVar3.b(), h2.e.a(str3, cVar, false));
                                if (!file.exists()) {
                                    file = null;
                                }
                            }
                            if (file == null) {
                                pair = null;
                            } else {
                                FileInputStream fileInputStream = new FileInputStream(file);
                                if (file.getAbsolutePath().endsWith(".zip")) {
                                    cVar2 = cVar;
                                }
                                file.getAbsolutePath();
                                k2.c.a();
                                pair = new Pair(cVar2, fileInputStream);
                            }
                        } catch (FileNotFoundException unused) {
                        }
                        if (pair == null) {
                            iVar = null;
                        } else {
                            h2.c cVar3 = (h2.c) pair.first;
                            InputStream inputStream = (InputStream) pair.second;
                            i iVar3 = (cVar3 == cVar ? q.f(new ZipInputStream(inputStream), str3) : q.c(inputStream, str3)).f18376a;
                            if (iVar3 != null) {
                                iVar = iVar3;
                            } else {
                                iVar = null;
                            }
                        }
                    }
                    if (iVar != null) {
                        j0Var = new j0<>(iVar);
                    } else {
                        k2.c.a();
                        k2.c.a();
                        try {
                            try {
                                h2.a aVarA = fVar.f8114b.a(str3);
                                try {
                                    if (aVarA.f8107h.getResponseCode() / 100 == 2) {
                                        z10 = true;
                                    }
                                } catch (IOException unused2) {
                                }
                                if (z10) {
                                    j0Var = fVar.a(str3, aVarA.f8107h.getInputStream(), aVarA.f8107h.getContentType(), str4);
                                    k2.c.a();
                                } else {
                                    j0Var = new j0<>(new IllegalArgumentException(aVarA.x()));
                                }
                                try {
                                    aVarA.close();
                                } catch (IOException e10) {
                                    k2.c.c("LottieFetchResult close failed ", e10);
                                }
                            } catch (Throwable th) {
                                if (0 != 0) {
                                    try {
                                        autoCloseable.close();
                                    } catch (IOException e11) {
                                        k2.c.c("LottieFetchResult close failed ", e11);
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e12) {
                            j0<i> j0Var2 = new j0<>(e12);
                            if (0 != 0) {
                                try {
                                    autoCloseable.close();
                                } catch (IOException e13) {
                                    k2.c.c("LottieFetchResult close failed ", e13);
                                }
                            }
                            j0Var = j0Var2;
                        }
                    }
                    if (str4 != null && (iVar2 = j0Var.f18376a) != null) {
                        d2.g.f5985b.a(str4, iVar2);
                    }
                    return j0Var;
                }
            });
        }
        setCompositionTask(k0VarA);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f4393o.A = z10;
    }

    public void setCacheComposition(boolean z10) {
        this.f4398t = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        e0 e0Var = this.f4393o;
        if (z10 != e0Var.f18319v) {
            e0Var.f18319v = z10;
            g2.c cVar = e0Var.f18320w;
            if (cVar != null) {
                cVar.I = z10;
            }
            e0Var.invalidateSelf();
        }
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [java.util.HashSet, java.util.Set<y1.h0>] */
    public void setComposition(i iVar) {
        this.f4393o.setCallback(this);
        this.f4402x = iVar;
        boolean z10 = true;
        this.f4396r = true;
        e0 e0Var = this.f4393o;
        if (e0Var.f18305h == iVar) {
            z10 = false;
        } else {
            e0Var.P = true;
            e0Var.d();
            e0Var.f18305h = iVar;
            e0Var.c();
            k2.d dVar = e0Var.f18306i;
            boolean z11 = dVar.f9634q == null;
            dVar.f9634q = iVar;
            if (z11) {
                dVar.l(Math.max(dVar.f9632o, iVar.f18342k), Math.min(dVar.f9633p, iVar.f18343l));
            } else {
                dVar.l((int) iVar.f18342k, (int) iVar.f18343l);
            }
            float f10 = dVar.f9630m;
            dVar.f9630m = 0.0f;
            dVar.k((int) f10);
            dVar.c();
            e0Var.z(e0Var.f18306i.getAnimatedFraction());
            Iterator it = new ArrayList(e0Var.f18311n).iterator();
            while (it.hasNext()) {
                e0.b bVar = (e0.b) it.next();
                if (bVar != null) {
                    bVar.run();
                }
                it.remove();
            }
            e0Var.f18311n.clear();
            iVar.f18332a.f18389a = e0Var.f18322y;
            e0Var.e();
            Drawable.Callback callback = e0Var.getCallback();
            if (callback instanceof ImageView) {
                ImageView imageView = (ImageView) callback;
                imageView.setImageDrawable(null);
                imageView.setImageDrawable(e0Var);
            }
        }
        this.f4396r = false;
        Drawable drawable = getDrawable();
        e0 e0Var2 = this.f4393o;
        if (drawable != e0Var2 || z10) {
            if (!z10) {
                boolean zL = e0Var2.l();
                setImageDrawable(null);
                setImageDrawable(this.f4393o);
                if (zL) {
                    this.f4393o.p();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it2 = this.f4400v.iterator();
            while (it2.hasNext()) {
                ((h0) it2.next()).a();
            }
        }
    }

    public void setFailureListener(g0<Throwable> g0Var) {
        this.f4391m = g0Var;
    }

    public void setFallbackResource(int i10) {
        this.f4392n = i10;
    }

    public void setFontAssetDelegate(y1.a aVar) {
        c2.a aVar2 = this.f4393o.f18316s;
    }

    public void setFrame(int i10) {
        this.f4393o.q(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f4393o.f18308k = z10;
    }

    public void setImageAssetDelegate(y1.b bVar) {
        e0 e0Var = this.f4393o;
        e0Var.f18315r = bVar;
        c2.b bVar2 = e0Var.f18313p;
        if (bVar2 != null) {
            bVar2.f3823c = bVar;
        }
    }

    public void setImageAssetsFolder(String str) {
        this.f4393o.f18314q = str;
    }

    @Override // androidx.appcompat.widget.s, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        d();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.s, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        d();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.s, android.widget.ImageView
    public void setImageResource(int i10) {
        d();
        super.setImageResource(i10);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f4393o.f18318u = z10;
    }

    public void setMaxFrame(int i10) {
        this.f4393o.r(i10);
    }

    public void setMaxProgress(float f10) {
        this.f4393o.t(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f4393o.v(str);
    }

    public void setMinFrame(int i10) {
        this.f4393o.w(i10);
    }

    public void setMinProgress(float f10) {
        this.f4393o.y(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        e0 e0Var = this.f4393o;
        if (e0Var.f18323z == z10) {
            return;
        }
        e0Var.f18323z = z10;
        g2.c cVar = e0Var.f18320w;
        if (cVar != null) {
            cVar.u(z10);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        e0 e0Var = this.f4393o;
        e0Var.f18322y = z10;
        i iVar = e0Var.f18305h;
        if (iVar != null) {
            iVar.f18332a.f18389a = z10;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    public void setProgress(float f10) {
        this.f4399u.add(c.SET_PROGRESS);
        this.f4393o.z(f10);
    }

    public void setRenderMode(m0 m0Var) {
        e0 e0Var = this.f4393o;
        e0Var.B = m0Var;
        e0Var.e();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    public void setRepeatCount(int i10) {
        this.f4399u.add(c.SET_REPEAT_COUNT);
        this.f4393o.f18306i.setRepeatCount(i10);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<com.airbnb.lottie.LottieAnimationView$c>] */
    public void setRepeatMode(int i10) {
        this.f4399u.add(c.SET_REPEAT_MODE);
        this.f4393o.f18306i.setRepeatMode(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f4393o.f18309l = z10;
    }

    public void setSpeed(float f10) {
        this.f4393o.f18306i.f9627j = f10;
    }

    public void setTextDelegate(o0 o0Var) {
        Objects.requireNonNull(this.f4393o);
    }

    @Override // android.view.View
    public final void unscheduleDrawable(Drawable drawable) {
        e0 e0Var;
        if (!this.f4396r && drawable == (e0Var = this.f4393o) && e0Var.l()) {
            this.f4397s = false;
            this.f4393o.m();
        } else if (!this.f4396r && (drawable instanceof e0)) {
            e0 e0Var2 = (e0) drawable;
            if (e0Var2.l()) {
                e0Var2.m();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void setMaxFrame(String str) {
        this.f4393o.s(str);
    }

    public void setMinFrame(String str) {
        this.f4393o.x(str);
    }

    public void setAnimation(final String str) {
        k0<i> k0VarA;
        k0<i> k0Var;
        this.f4394p = str;
        this.f4395q = 0;
        if (isInEditMode()) {
            k0Var = new k0<>(new Callable() { // from class: y1.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    LottieAnimationView lottieAnimationView = this.f18303a;
                    String str2 = str;
                    if (!lottieAnimationView.f4398t) {
                        return q.b(lottieAnimationView.getContext(), str2, null);
                    }
                    Context context = lottieAnimationView.getContext();
                    Map<String, k0<i>> map = q.f18405a;
                    return q.b(context, str2, "asset_" + str2);
                }
            }, true);
        } else {
            if (this.f4398t) {
                Context context = getContext();
                Map<String, k0<i>> map = q.f18405a;
                final String strC = d.c("asset_", str);
                final Context applicationContext = context.getApplicationContext();
                k0VarA = q.a(strC, new Callable() { // from class: y1.j
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return q.b(applicationContext, str, strC);
                    }
                });
            } else {
                Context context2 = getContext();
                final String str2 = null;
                Map<String, k0<i>> map2 = q.f18405a;
                final Context applicationContext2 = context2.getApplicationContext();
                k0VarA = q.a(null, new Callable() { // from class: y1.j
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return q.b(applicationContext2, str, str2);
                    }
                });
            }
            k0Var = k0VarA;
        }
        setCompositionTask(k0Var);
    }
}
