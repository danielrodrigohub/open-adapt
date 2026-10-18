package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import e3.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentMap;
import l3.l;
import r2.m;

/* JADX INFO: compiled from: RequestBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class i<TranscodeType> extends h3.a<i<TranscodeType>> {
    public final Context H;
    public final j I;
    public final Class<TranscodeType> J;
    public final e K;
    public k<?, ? super TranscodeType> L;
    public Object M;
    public List<h3.f<TranscodeType>> N;
    public i<TranscodeType> O;
    public i<TranscodeType> P;
    public boolean Q = true;
    public boolean R;
    public boolean S;

    /* JADX INFO: compiled from: RequestBuilder.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4472a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f4473b;

        static {
            int[] iArr = new int[g.values().length];
            f4473b = iArr;
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4473b[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4473b[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4473b[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f4472a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4472a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4472a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4472a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4472a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4472a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f4472a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f4472a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
    }

    @SuppressLint({"CheckResult"})
    public i(c cVar, j jVar, Class<TranscodeType> cls, Context context) {
        h3.g gVar;
        this.I = jVar;
        this.J = cls;
        this.H = context;
        e eVar = jVar.f4478h.f4422j;
        k kVar = eVar.f4450f.get(cls);
        if (kVar == null) {
            for (Map.Entry<Class<?>, k<?, ?>> entry : eVar.f4450f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    kVar = (k) entry.getValue();
                }
            }
        }
        this.L = kVar == null ? e.f4444k : kVar;
        this.K = cVar.f4422j;
        Iterator<h3.f<Object>> it = jVar.f4486p.iterator();
        while (it.hasNext()) {
            C((h3.f) it.next());
        }
        synchronized (jVar) {
            gVar = jVar.f4487q;
        }
        a(gVar);
    }

    public i<TranscodeType> C(h3.f<TranscodeType> fVar) {
        if (this.C) {
            return clone().C(fVar);
        }
        if (fVar != null) {
            if (this.N == null) {
                this.N = new ArrayList();
            }
            this.N.add(fVar);
        }
        t();
        return this;
    }

    @Override // h3.a
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public i<TranscodeType> a(h3.a<?> aVar) {
        Objects.requireNonNull(aVar, "Argument must not be null");
        return (i) super.a(aVar);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e0  */
    /* JADX WARN: Multi-variable type inference failed */
    public final h3.d E(Object obj, i3.i iVar, h3.e eVar, k kVar, g gVar, int i10, int i11, h3.a aVar) {
        h3.b bVar;
        h3.e bVar2;
        h3.d dVarN;
        int i12;
        int i13;
        int i14;
        int i15;
        if (this.P != null) {
            bVar2 = new h3.b(obj, eVar);
            bVar = bVar2;
        } else {
            bVar = 0;
            bVar2 = eVar;
        }
        i<TranscodeType> iVar2 = this.O;
        if (iVar2 == null) {
            dVarN = N(obj, iVar, aVar, bVar2, kVar, gVar, i10, i11);
        } else {
            if (this.S) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            k kVar2 = iVar2.Q ? kVar : iVar2.L;
            g gVarG = h3.a.l(iVar2.f8115h, 8) ? this.O.f8118k : G(gVar);
            i<TranscodeType> iVar3 = this.O;
            int i16 = iVar3.f8125r;
            int i17 = iVar3.f8124q;
            if (l.j(i10, i11)) {
                i<TranscodeType> iVar4 = this.O;
                if (l.j(iVar4.f8125r, iVar4.f8124q)) {
                    i14 = i17;
                    i15 = i16;
                } else {
                    i15 = aVar.f8125r;
                    i14 = aVar.f8124q;
                }
            } else {
                i14 = i17;
                i15 = i16;
            }
            h3.j jVar = new h3.j(obj, bVar2);
            h3.d dVarN2 = N(obj, iVar, aVar, jVar, kVar, gVar, i10, i11);
            this.S = true;
            i<TranscodeType> iVar5 = this.O;
            h3.d dVarE = iVar5.E(obj, iVar, jVar, kVar2, gVarG, i15, i14, iVar5);
            this.S = false;
            jVar.f8168c = dVarN2;
            jVar.f8169d = dVarE;
            dVarN = jVar;
        }
        if (bVar == 0) {
            return dVarN;
        }
        i<TranscodeType> iVar6 = this.P;
        int i18 = iVar6.f8125r;
        int i19 = iVar6.f8124q;
        if (l.j(i10, i11)) {
            i<TranscodeType> iVar7 = this.P;
            if (l.j(iVar7.f8125r, iVar7.f8124q)) {
                i12 = i19;
                i13 = i18;
            } else {
                i13 = aVar.f8125r;
                i12 = aVar.f8124q;
            }
        } else {
            i12 = i19;
            i13 = i18;
        }
        i<TranscodeType> iVar8 = this.P;
        h3.d dVarE2 = iVar8.E(obj, iVar, bVar, iVar8.L, iVar8.f8118k, i13, i12, iVar8);
        bVar.f8136c = dVarN;
        bVar.f8137d = dVarE2;
        return bVar;
    }

    @Override // h3.a
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public i<TranscodeType> clone() {
        i<TranscodeType> iVar = (i) super.clone();
        iVar.L = iVar.L.a();
        if (iVar.N != null) {
            iVar.N = new ArrayList(iVar.N);
        }
        i<TranscodeType> iVar2 = iVar.O;
        if (iVar2 != null) {
            iVar.O = iVar2.clone();
        }
        i<TranscodeType> iVar3 = iVar.P;
        if (iVar3 != null) {
            iVar.P = iVar3.clone();
        }
        return iVar;
    }

    public final g G(g gVar) {
        int iOrdinal = gVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            return g.IMMEDIATE;
        }
        if (iOrdinal == 2) {
            return g.HIGH;
        }
        if (iOrdinal == 3) {
            return g.NORMAL;
        }
        StringBuilder sbC = a0.b.c("unknown priority: ");
        sbC.append(this.f8118k);
        throw new IllegalArgumentException(sbC.toString());
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.HashSet, java.util.Set<h3.d>] */
    public final i3.i H(i3.i iVar, h3.a aVar) {
        Objects.requireNonNull(iVar, "Argument must not be null");
        if (!this.R) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        h3.d dVarE = E(new Object(), iVar, null, this.L, aVar.f8118k, aVar.f8125r, aVar.f8124q, aVar);
        h3.d dVarE2 = iVar.e();
        if (dVarE.h(dVarE2)) {
            if (!(!aVar.f8123p && dVarE2.i())) {
                Objects.requireNonNull(dVarE2, "Argument must not be null");
                if (!dVarE2.isRunning()) {
                    dVarE2.f();
                }
                return iVar;
            }
        }
        this.I.o(iVar);
        iVar.i(dVarE);
        j jVar = this.I;
        synchronized (jVar) {
            jVar.f4483m.f6357h.add(iVar);
            n nVar = jVar.f4481k;
            nVar.f6335a.add(dVarE);
            if (nVar.f6337c) {
                dVarE.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                nVar.f6336b.add(dVarE);
            } else {
                dVarE.f();
            }
        }
        return iVar;
    }

    public final i3.j<ImageView, TranscodeType> I(ImageView imageView) {
        h3.a aVarN;
        i3.j<ImageView, TranscodeType> eVar;
        l.a();
        Objects.requireNonNull(imageView, "Argument must not be null");
        if (!h3.a.l(this.f8115h, 2048) && this.f8128u && imageView.getScaleType() != null) {
            switch (a.f4472a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVarN = clone().n();
                    break;
                case 2:
                    aVarN = clone().o();
                    break;
                case 3:
                case 4:
                case 5:
                    aVarN = clone().p();
                    break;
                case 6:
                    aVarN = clone().o();
                    break;
                default:
                    aVarN = this;
                    break;
            }
        } else {
            aVarN = this;
        }
        e eVar2 = this.K;
        Class<TranscodeType> cls = this.J;
        Objects.requireNonNull(eVar2.f4447c);
        if (Bitmap.class.equals(cls)) {
            eVar = new i3.b(imageView);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
            }
            eVar = new i3.e(imageView);
        }
        H(eVar, aVarN);
        return eVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public i<TranscodeType> J(Integer num) {
        PackageInfo packageInfo;
        i<TranscodeType> iVarM = M(num);
        Context context = this.H;
        ConcurrentMap<String, p2.f> concurrentMap = k3.b.f9645a;
        String packageName = context.getPackageName();
        p2.f fVarPutIfAbsent = k3.b.f9645a.get(packageName);
        if (fVarPutIfAbsent == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e10) {
                StringBuilder sbC = a0.b.c("Cannot resolve info for");
                sbC.append(context.getPackageName());
                Log.e("AppVersionSignature", sbC.toString(), e10);
                packageInfo = null;
            }
            k3.d dVar = new k3.d(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            fVarPutIfAbsent = k3.b.f9645a.putIfAbsent(packageName, dVar);
            if (fVarPutIfAbsent == null) {
                fVarPutIfAbsent = dVar;
            }
        }
        return iVarM.a(new h3.g().v(new k3.a(context.getResources().getConfiguration().uiMode & 48, fVarPutIfAbsent)));
    }

    public i<TranscodeType> K(Object obj) {
        return M(obj);
    }

    public i<TranscodeType> L(String str) {
        return M(str);
    }

    public final i<TranscodeType> M(Object obj) {
        if (this.C) {
            return clone().M(obj);
        }
        this.M = obj;
        this.R = true;
        t();
        return this;
    }

    public final h3.d N(Object obj, i3.i iVar, h3.a aVar, h3.e eVar, k kVar, g gVar, int i10, int i11) {
        Context context = this.H;
        e eVar2 = this.K;
        Object obj2 = this.M;
        Class<TranscodeType> cls = this.J;
        List<h3.f<TranscodeType>> list = this.N;
        m mVar = eVar2.f4451g;
        Objects.requireNonNull(kVar);
        return new h3.i(context, eVar2, obj, obj2, cls, aVar, i10, i11, gVar, iVar, list, eVar, mVar);
    }
}
