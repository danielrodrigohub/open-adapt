package j5;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.RandomAccess;
import m5.g0;
import n3.r0;
import n3.s0;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.ws.WebSocketProtocol;
import p4.t0;
import p4.u0;
import u6.m0;
import u6.o0;
import u6.p0;
import u6.v;

/* JADX INFO: compiled from: DefaultTrackSelector.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends n {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final o0<Integer> f9315i = o0.a(j5.g.f9309i);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final o0<Integer> f9316j = o0.a(j5.f.f9305i);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f9317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l.b f9318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f9319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c f9320f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e f9321g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p3.d f9322h;

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class a extends g<a> implements Comparable<a> {
        public final int A;
        public final boolean B;
        public final boolean C;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f9323l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final boolean f9324m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f9325n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final c f9326o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final boolean f9327p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final int f9328q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final int f9329r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final int f9330s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final boolean f9331t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final int f9332u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final int f9333v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final boolean f9334w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final int f9335x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final int f9336y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public final int f9337z;

        /* JADX WARN: Code duplicated, block: B:90:0x0151  */
        public a(int i10, t0 t0Var, int i11, c cVar, int i12, boolean z10, t6.i<s0> iVar) {
            int i13;
            int iG;
            String[] strArrSplit;
            int iG2;
            super(i10, t0Var, i11);
            this.f9326o = cVar;
            this.f9325n = i.j(this.f9361k.f11678j);
            int i14 = 0;
            this.f9327p = i.h(i12, false);
            int i15 = 0;
            while (true) {
                i13 = Integer.MAX_VALUE;
                if (i15 >= cVar.f9403u.size()) {
                    iG = 0;
                    i15 = Integer.MAX_VALUE;
                    break;
                } else {
                    iG = i.g(this.f9361k, cVar.f9403u.get(i15), false);
                    if (iG > 0) {
                        break;
                    } else {
                        i15++;
                    }
                }
            }
            this.f9329r = i15;
            this.f9328q = iG;
            this.f9330s = i.e(this.f9361k.f11680l, cVar.f9404v);
            s0 s0Var = this.f9361k;
            int i16 = s0Var.f11680l;
            this.f9331t = i16 == 0 || (i16 & 1) != 0;
            this.f9334w = (s0Var.f11679k & 1) != 0;
            int i17 = s0Var.F;
            this.f9335x = i17;
            this.f9336y = s0Var.G;
            int i18 = s0Var.f11683o;
            this.f9337z = i18;
            this.f9324m = (i18 == -1 || i18 <= cVar.f9406x) && (i17 == -1 || i17 <= cVar.f9405w) && ((j5.h) iVar).apply(s0Var);
            Configuration configuration = Resources.getSystem().getConfiguration();
            int i19 = g0.f10384a;
            if (i19 >= 24) {
                strArrSplit = configuration.getLocales().toLanguageTags().split(",", -1);
            } else {
                String[] strArr = new String[1];
                Locale locale = configuration.locale;
                strArr[0] = i19 >= 21 ? locale.toLanguageTag() : locale.toString();
                strArrSplit = strArr;
            }
            while (i14 < strArrSplit.length) {
                strArrSplit[i14] = g0.M(strArrSplit[i14]);
                i14++;
            }
            int i20 = 0;
            while (true) {
                if (i20 >= strArrSplit.length) {
                    iG2 = 0;
                    i20 = Integer.MAX_VALUE;
                    break;
                } else {
                    iG2 = i.g(this.f9361k, strArrSplit[i20], false);
                    if (iG2 > 0) {
                        break;
                    } else {
                        i20++;
                    }
                }
            }
            this.f9332u = i20;
            this.f9333v = iG2;
            for (int i21 = 0; i21 < cVar.f9407y.size(); i21++) {
                String str = this.f9361k.f11687s;
                if (str != null && str.equals(cVar.f9407y.get(i21))) {
                    i13 = i21;
                    break;
                }
            }
            this.A = i13;
            this.B = (i12 & 128) == 128;
            this.C = (i12 & 64) == 64;
            if (i.h(i12, this.f9326o.S) && (this.f9324m || this.f9326o.M)) {
                if (i.h(i12, false) && this.f9324m && this.f9361k.f11683o != -1) {
                    c cVar2 = this.f9326o;
                    if (cVar2.E || cVar2.D || (!cVar2.U && z10)) {
                        i14 = 1;
                    } else {
                        i14 = 2;
                    }
                } else {
                    i14 = 1;
                }
            }
            this.f9323l = i14;
        }

        @Override // j5.i.g
        public final int b() {
            return this.f9323l;
        }

        @Override // j5.i.g
        public final boolean g(g gVar) {
            int i10;
            String str;
            int i11;
            a aVar = (a) gVar;
            c cVar = this.f9326o;
            if ((cVar.P || ((i11 = this.f9361k.F) != -1 && i11 == aVar.f9361k.F)) && (cVar.N || ((str = this.f9361k.f11687s) != null && TextUtils.equals(str, aVar.f9361k.f11687s)))) {
                c cVar2 = this.f9326o;
                if ((cVar2.O || ((i10 = this.f9361k.G) != -1 && i10 == aVar.f9361k.G)) && (cVar2.Q || (this.B == aVar.B && this.C == aVar.C))) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public final int compareTo(a aVar) {
            Object objB = (this.f9324m && this.f9327p) ? i.f9315i : i.f9315i.b();
            u6.p pVarD = u6.p.f15963a.d(this.f9327p, aVar.f9327p);
            Integer numValueOf = Integer.valueOf(this.f9329r);
            Integer numValueOf2 = Integer.valueOf(aVar.f9329r);
            u6.s0 s0Var = u6.s0.f15992h;
            u6.p pVarC = pVarD.c(numValueOf, numValueOf2, s0Var).a(this.f9328q, aVar.f9328q).a(this.f9330s, aVar.f9330s).d(this.f9334w, aVar.f9334w).d(this.f9331t, aVar.f9331t).c(Integer.valueOf(this.f9332u), Integer.valueOf(aVar.f9332u), s0Var).a(this.f9333v, aVar.f9333v).d(this.f9324m, aVar.f9324m).c(Integer.valueOf(this.A), Integer.valueOf(aVar.A), s0Var).c(Integer.valueOf(this.f9337z), Integer.valueOf(aVar.f9337z), this.f9326o.D ? i.f9315i.b() : i.f9316j).d(this.B, aVar.B).d(this.C, aVar.C).c(Integer.valueOf(this.f9335x), Integer.valueOf(aVar.f9335x), objB).c(Integer.valueOf(this.f9336y), Integer.valueOf(aVar.f9336y), objB);
            Integer numValueOf3 = Integer.valueOf(this.f9337z);
            Integer numValueOf4 = Integer.valueOf(aVar.f9337z);
            if (!g0.a(this.f9325n, aVar.f9325n)) {
                objB = i.f9316j;
            }
            return pVarC.c(numValueOf3, numValueOf4, objB).f();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class b implements Comparable<b> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f9338h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f9339i;

        public b(s0 s0Var, int i10) {
            this.f9338h = (s0Var.f11679k & 1) != 0;
            this.f9339i = i.h(i10, false);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final int compareTo(b bVar) {
            return u6.p.f15963a.d(this.f9339i, bVar.f9339i).d(this.f9338h, bVar.f9338h).f();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class d implements n3.h {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final n3.h.a<d> f9340k = r0.f11670h;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f9341h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int[] f9342i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f9343j;

        public d(int i10, int[] iArr, int i11) {
            this.f9341h = i10;
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f9342i = iArrCopyOf;
            this.f9343j = i11;
            Arrays.sort(iArrCopyOf);
        }

        public static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt(b(0), this.f9341h);
            bundle.putIntArray(b(1), this.f9342i);
            bundle.putInt(b(2), this.f9343j);
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f9341h == dVar.f9341h && Arrays.equals(this.f9342i, dVar.f9342i) && this.f9343j == dVar.f9343j;
        }

        public final int hashCode() {
            return ((Arrays.hashCode(this.f9342i) + (this.f9341h * 31)) * 31) + this.f9343j;
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Spatializer f9344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f9345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Handler f9346c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public a f9347d;

        /* JADX INFO: compiled from: DefaultTrackSelector.java */
        public class a implements Spatializer.OnSpatializerStateChangedListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ i f9348a;

            public a(i iVar) {
                this.f9348a = iVar;
            }

            @Override // android.media.Spatializer.OnSpatializerStateChangedListener
            public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
                i iVar = this.f9348a;
                o0<Integer> o0Var = i.f9315i;
                iVar.i();
            }

            @Override // android.media.Spatializer.OnSpatializerStateChangedListener
            public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
                i iVar = this.f9348a;
                o0<Integer> o0Var = i.f9315i;
                iVar.i();
            }
        }

        public e(Spatializer spatializer) {
            this.f9344a = spatializer;
            this.f9345b = spatializer.getImmersiveAudioLevel() != 0;
        }

        public static e f(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return null;
            }
            return new e(audioManager.getSpatializer());
        }

        public final boolean a(p3.d dVar, s0 s0Var) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(g0.p(("audio/eac3-joc".equals(s0Var.f11687s) && s0Var.F == 16) ? 12 : s0Var.F));
            int i10 = s0Var.G;
            if (i10 != -1) {
                channelMask.setSampleRate(i10);
            }
            return this.f9344a.canBeSpatialized(dVar.b().f12693a, channelMask.build());
        }

        public final void b(i iVar, Looper looper) {
            if (this.f9347d == null && this.f9346c == null) {
                this.f9347d = new a(iVar);
                Handler handler = new Handler(looper);
                this.f9346c = handler;
                this.f9344a.addOnSpatializerStateChangedListener(new j(handler), this.f9347d);
            }
        }

        public final boolean c() {
            return this.f9344a.isAvailable();
        }

        public final boolean d() {
            return this.f9344a.isEnabled();
        }

        public final void e() {
            a aVar = this.f9347d;
            if (aVar == null || this.f9346c == null) {
                return;
            }
            this.f9344a.removeOnSpatializerStateChangedListener(aVar);
            Handler handler = this.f9346c;
            int i10 = g0.f10384a;
            handler.removeCallbacksAndMessages(null);
            this.f9346c = null;
            this.f9347d = null;
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class f extends g<f> implements Comparable<f> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f9349l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final boolean f9350m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final boolean f9351n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final boolean f9352o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final int f9353p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final int f9354q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final int f9355r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final int f9356s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final boolean f9357t;

        public f(int i10, t0 t0Var, int i11, c cVar, int i12, String str) {
            int iG;
            super(i10, t0Var, i11);
            int i13 = 0;
            this.f9350m = i.h(i12, false);
            int i14 = this.f9361k.f11679k & (~cVar.B);
            this.f9351n = (i14 & 1) != 0;
            this.f9352o = (i14 & 2) != 0;
            int i15 = Integer.MAX_VALUE;
            v<String> vVarV = cVar.f9408z.isEmpty() ? v.v("") : cVar.f9408z;
            int i16 = 0;
            while (true) {
                if (i16 >= vVarV.size()) {
                    iG = 0;
                    break;
                }
                iG = i.g(this.f9361k, vVarV.get(i16), cVar.C);
                if (iG > 0) {
                    i15 = i16;
                    break;
                }
                i16++;
            }
            this.f9353p = i15;
            this.f9354q = iG;
            int iE = i.e(this.f9361k.f11680l, cVar.A);
            this.f9355r = iE;
            this.f9357t = (this.f9361k.f11680l & 1088) != 0;
            int iG2 = i.g(this.f9361k, str, i.j(str) == null);
            this.f9356s = iG2;
            boolean z10 = iG > 0 || (cVar.f9408z.isEmpty() && iE > 0) || this.f9351n || (this.f9352o && iG2 > 0);
            if (i.h(i12, cVar.S) && z10) {
                i13 = 1;
            }
            this.f9349l = i13;
        }

        @Override // j5.i.g
        public final int b() {
            return this.f9349l;
        }

        @Override // j5.i.g
        public final /* bridge */ /* synthetic */ boolean g(g gVar) {
            return false;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public final int compareTo(f fVar) {
            u6.p pVarD = u6.p.f15963a.d(this.f9350m, fVar.f9350m);
            Integer numValueOf = Integer.valueOf(this.f9353p);
            Integer numValueOf2 = Integer.valueOf(fVar.f9353p);
            o0 o0Var = m0.f15961h;
            u6.s0 s0Var = u6.s0.f15992h;
            u6.p pVarD2 = pVarD.c(numValueOf, numValueOf2, s0Var).a(this.f9354q, fVar.f9354q).a(this.f9355r, fVar.f9355r).d(this.f9351n, fVar.f9351n);
            Boolean boolValueOf = Boolean.valueOf(this.f9352o);
            Boolean boolValueOf2 = Boolean.valueOf(fVar.f9352o);
            if (this.f9354q != 0) {
                o0Var = s0Var;
            }
            u6.p pVarA = pVarD2.c(boolValueOf, boolValueOf2, o0Var).a(this.f9356s, fVar.f9356s);
            if (this.f9355r == 0) {
                pVarA = pVarA.e(this.f9357t, fVar.f9357t);
            }
            return pVarA.f();
        }
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static abstract class g<T extends g<T>> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f9358h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final t0 f9359i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f9360j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final s0 f9361k;

        /* JADX INFO: compiled from: DefaultTrackSelector.java */
        public interface a<T extends g<T>> {
            List<T> a(int i10, t0 t0Var, int[] iArr);
        }

        public g(int i10, t0 t0Var, int i11) {
            this.f9358h = i10;
            this.f9359i = t0Var;
            this.f9360j = i11;
            this.f9361k = t0Var.f13224k[i11];
        }

        public abstract int b();

        public abstract boolean g(T t10);
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class h extends g<h> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f9362l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final c f9363m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final boolean f9364n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final boolean f9365o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final int f9366p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final int f9367q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final int f9368r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final int f9369s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final boolean f9370t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final boolean f9371u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final int f9372v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final boolean f9373w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final boolean f9374x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final int f9375y;

        /* JADX WARN: Code duplicated, block: B:106:0x012a  */
        /* JADX WARN: Code duplicated, block: B:136:0x0173  */
        /* JADX WARN: Code duplicated, block: B:31:0x004b  */
        /* JADX WARN: Code duplicated, block: B:51:0x0079  */
        public h(int i10, t0 t0Var, int i11, c cVar, int i12, int i13, boolean z10) {
            boolean z11;
            boolean z12;
            int i14;
            s0 s0Var;
            int i15;
            int i16;
            int i17;
            s0 s0Var2;
            int i18;
            int i19;
            int i20;
            super(i10, t0Var, i11);
            this.f9363m = cVar;
            int i21 = cVar.K ? 24 : 16;
            int i22 = 0;
            this.f9371u = cVar.J && (i13 & i21) != 0;
            if (!z10 || (((i18 = (s0Var2 = this.f9361k).f11692x) != -1 && i18 > cVar.f9390h) || ((i19 = s0Var2.f11693y) != -1 && i19 > cVar.f9391i))) {
                z11 = false;
            } else {
                float f10 = s0Var2.f11694z;
                if ((f10 == -1.0f || f10 <= cVar.f9392j) && ((i20 = s0Var2.f11683o) == -1 || i20 <= cVar.f9393k)) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            this.f9362l = z11;
            if (!z10 || (((i15 = (s0Var = this.f9361k).f11692x) != -1 && i15 < cVar.f9394l) || ((i16 = s0Var.f11693y) != -1 && i16 < cVar.f9395m))) {
                z12 = false;
            } else {
                float f11 = s0Var.f11694z;
                if ((f11 == -1.0f || f11 >= cVar.f9396n) && ((i17 = s0Var.f11683o) == -1 || i17 >= cVar.f9397o)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
            }
            this.f9364n = z12;
            this.f9365o = i.h(i12, false);
            s0 s0Var3 = this.f9361k;
            this.f9366p = s0Var3.f11683o;
            int i23 = s0Var3.f11692x;
            this.f9367q = (i23 == -1 || (i14 = s0Var3.f11693y) == -1) ? -1 : i23 * i14;
            this.f9369s = i.e(s0Var3.f11680l, cVar.f9402t);
            int i24 = this.f9361k.f11680l;
            this.f9370t = i24 == 0 || (i24 & 1) != 0;
            int i25 = Integer.MAX_VALUE;
            for (int i26 = 0; i26 < cVar.f9401s.size(); i26++) {
                String str = this.f9361k.f11687s;
                if (str != null && str.equals(cVar.f9401s.get(i26))) {
                    i25 = i26;
                    break;
                }
            }
            this.f9368r = i25;
            this.f9373w = (i12 & 128) == 128;
            this.f9374x = (i12 & 64) == 64;
            s0 s0Var4 = this.f9361k;
            String str2 = s0Var4.f11687s;
            int i27 = 3;
            if (str2 != null) {
                switch (str2) {
                    case "video/av01":
                        i27 = 4;
                        break;
                    case "video/hevc":
                        break;
                    case "video/avc":
                        i27 = 1;
                        break;
                    case "video/x-vnd.on2.vp9":
                        i27 = 2;
                        break;
                    default:
                        i27 = 0;
                        break;
                }
            } else {
                i27 = 0;
            }
            this.f9375y = i27;
            if ((s0Var4.f11680l & Http2.INITIAL_MAX_FRAME_SIZE) == 0 && i.h(i12, this.f9363m.S) && (this.f9362l || this.f9363m.I)) {
                if (i.h(i12, false) && this.f9364n && this.f9362l && this.f9361k.f11683o != -1) {
                    c cVar2 = this.f9363m;
                    if (cVar2.E || cVar2.D || (i21 & i12) == 0) {
                        i22 = 1;
                    } else {
                        i22 = 2;
                    }
                } else {
                    i22 = 1;
                }
            }
            this.f9372v = i22;
        }

        public static int i(h hVar, h hVar2) {
            u6.p pVarD = u6.p.f15963a.d(hVar.f9365o, hVar2.f9365o).a(hVar.f9369s, hVar2.f9369s).d(hVar.f9370t, hVar2.f9370t).d(hVar.f9362l, hVar2.f9362l).d(hVar.f9364n, hVar2.f9364n).c(Integer.valueOf(hVar.f9368r), Integer.valueOf(hVar2.f9368r), u6.s0.f15992h).d(hVar.f9373w, hVar2.f9373w).d(hVar.f9374x, hVar2.f9374x);
            if (hVar.f9373w && hVar.f9374x) {
                pVarD = pVarD.a(hVar.f9375y, hVar2.f9375y);
            }
            return pVarD.f();
        }

        public static int j(h hVar, h hVar2) {
            Object objB = (hVar.f9362l && hVar.f9365o) ? i.f9315i : i.f9315i.b();
            return u6.p.f15963a.c(Integer.valueOf(hVar.f9366p), Integer.valueOf(hVar2.f9366p), hVar.f9363m.D ? i.f9315i.b() : i.f9316j).c(Integer.valueOf(hVar.f9367q), Integer.valueOf(hVar2.f9367q), objB).c(Integer.valueOf(hVar.f9366p), Integer.valueOf(hVar2.f9366p), objB).f();
        }

        @Override // j5.i.g
        public final int b() {
            return this.f9372v;
        }

        @Override // j5.i.g
        public final boolean g(g gVar) {
            h hVar = (h) gVar;
            return (this.f9371u || g0.a(this.f9361k.f11687s, hVar.f9361k.f11687s)) && (this.f9363m.L || (this.f9373w == hVar.f9373w && this.f9374x == hVar.f9374x));
        }
    }

    public i(Context context) {
        j5.a.b bVar = new j5.a.b();
        c cVar = c.X;
        c cVarE = new c.a(context).e();
        this.f9317c = new Object();
        if (context != null) {
            context.getApplicationContext();
        }
        this.f9318d = bVar;
        this.f9320f = cVarE;
        this.f9322h = p3.d.f12686n;
        boolean z10 = context != null && g0.K(context);
        this.f9319e = z10;
        if (!z10 && context != null && g0.f10384a >= 32) {
            this.f9321g = e.f(context);
        }
        if (this.f9320f.R && context == null) {
            m5.p.g("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static int e(int i10, int i11) {
        if (i10 == 0 || i10 != i11) {
            return Integer.bitCount(i10 & i11);
        }
        return Integer.MAX_VALUE;
    }

    public static void f(u0 u0Var, q qVar, Map<Integer, p> map) {
        p pVar;
        for (int i10 = 0; i10 < u0Var.f13235h; i10++) {
            p pVar2 = qVar.F.get(u0Var.b(i10));
            if (pVar2 != null && ((pVar = map.get(Integer.valueOf(pVar2.f9388h.f13223j))) == null || (pVar.f9389i.isEmpty() && !pVar2.f9389i.isEmpty()))) {
                map.put(Integer.valueOf(pVar2.f9388h.f13223j), pVar2);
            }
        }
    }

    public static int g(s0 s0Var, String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(s0Var.f11678j)) {
            return 4;
        }
        String strJ = j(str);
        String strJ2 = j(s0Var.f11678j);
        if (strJ2 == null || strJ == null) {
            return (z10 && strJ2 == null) ? 1 : 0;
        }
        if (strJ2.startsWith(strJ) || strJ.startsWith(strJ2)) {
            return 3;
        }
        int i10 = g0.f10384a;
        return strJ2.split("-", 2)[0].equals(strJ.split("-", 2)[0]) ? 2 : 0;
    }

    public static boolean h(int i10, boolean z10) {
        int i11 = i10 & 7;
        return i11 == 4 || (z10 && i11 == 3);
    }

    public static String j(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    @Override // j5.s
    public final void b() {
        e eVar;
        synchronized (this.f9317c) {
            if (g0.f10384a >= 32 && (eVar = this.f9321g) != null) {
                eVar.e();
            }
        }
        this.f9435a = null;
        this.f9436b = null;
    }

    @Override // j5.s
    public final void d(p3.d dVar) {
        boolean z10;
        synchronized (this.f9317c) {
            z10 = !this.f9322h.equals(dVar);
            this.f9322h = dVar;
        }
        if (z10) {
            i();
        }
    }

    public final void i() {
        boolean z10;
        s.a aVar;
        e eVar;
        synchronized (this.f9317c) {
            z10 = this.f9320f.R && !this.f9319e && g0.f10384a >= 32 && (eVar = this.f9321g) != null && eVar.f9345b;
        }
        if (!z10 || (aVar = this.f9435a) == null) {
            return;
        }
        ((n3.o0) aVar).f11564o.e(10);
    }

    public final <T extends g<T>> Pair<l.a, Integer> k(int i10, n.a aVar, int[][][] iArr, g.a<T> aVar2, Comparator<List<T>> comparator) {
        int i11;
        RandomAccess randomAccessV;
        n.a aVar3 = aVar;
        ArrayList arrayList = new ArrayList();
        int i12 = aVar3.f9381a;
        int i13 = 0;
        while (i13 < i12) {
            if (i10 == aVar3.f9382b[i13]) {
                u0 u0Var = aVar3.f9383c[i13];
                for (int i14 = 0; i14 < u0Var.f13235h; i14++) {
                    t0 t0VarB = u0Var.b(i14);
                    List<T> listA = aVar2.a(i13, t0VarB, iArr[i13][i14]);
                    boolean[] zArr = new boolean[t0VarB.f13221h];
                    int i15 = 0;
                    while (i15 < t0VarB.f13221h) {
                        T t10 = listA.get(i15);
                        int iB = t10.b();
                        if (zArr[i15] || iB == 0) {
                            i11 = i12;
                        } else {
                            if (iB == 1) {
                                randomAccessV = v.v(t10);
                                i11 = i12;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(t10);
                                int i16 = i15 + 1;
                                while (i16 < t0VarB.f13221h) {
                                    T t11 = listA.get(i16);
                                    int i17 = i12;
                                    if (t11.b() == 2 && t10.g(t11)) {
                                        arrayList2.add(t11);
                                        zArr[i16] = true;
                                    }
                                    i16++;
                                    i12 = i17;
                                }
                                i11 = i12;
                                randomAccessV = arrayList2;
                            }
                            arrayList.add(randomAccessV);
                        }
                        i15++;
                        i12 = i11;
                    }
                }
            }
            i13++;
            aVar3 = aVar;
            i12 = i12;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i18 = 0; i18 < list.size(); i18++) {
            iArr2[i18] = ((g) list.get(i18)).f9360j;
        }
        g gVar = (g) list.get(0);
        return Pair.create(new l.a(gVar.f9359i, iArr2, 0), Integer.valueOf(gVar.f9358h));
    }

    /* JADX INFO: compiled from: DefaultTrackSelector.java */
    public static final class c extends q {
        public static final c X = new a().e();
        public final boolean I;
        public final boolean J;
        public final boolean K;
        public final boolean L;
        public final boolean M;
        public final boolean N;
        public final boolean O;
        public final boolean P;
        public final boolean Q;
        public final boolean R;
        public final boolean S;
        public final boolean T;
        public final boolean U;
        public final SparseArray<Map<u0, d>> V;
        public final SparseBooleanArray W;

        static {
            y0.m mVar = y0.m.f18253h;
        }

        public c(a aVar) {
            super(aVar);
            this.I = aVar.A;
            this.J = aVar.B;
            this.K = aVar.C;
            this.L = aVar.D;
            this.M = aVar.E;
            this.N = aVar.F;
            this.O = aVar.G;
            this.P = aVar.H;
            this.Q = aVar.I;
            this.R = aVar.J;
            this.S = aVar.K;
            this.T = aVar.L;
            this.U = aVar.M;
            this.V = aVar.N;
            this.W = aVar.O;
        }

        @Override // j5.q, n3.h
        public final Bundle a() {
            Bundle bundleA = super.a();
            bundleA.putBoolean(q.b(1000), this.I);
            bundleA.putBoolean(q.b(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY), this.J);
            bundleA.putBoolean(q.b(1002), this.K);
            bundleA.putBoolean(q.b(1014), this.L);
            bundleA.putBoolean(q.b(1003), this.M);
            bundleA.putBoolean(q.b(1004), this.N);
            bundleA.putBoolean(q.b(WebSocketProtocol.CLOSE_NO_STATUS_CODE), this.O);
            bundleA.putBoolean(q.b(1006), this.P);
            bundleA.putBoolean(q.b(1015), this.Q);
            bundleA.putBoolean(q.b(1016), this.R);
            bundleA.putBoolean(q.b(1007), this.S);
            bundleA.putBoolean(q.b(1008), this.T);
            bundleA.putBoolean(q.b(1009), this.U);
            SparseArray<Map<u0, d>> sparseArray = this.V;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                int iKeyAt = sparseArray.keyAt(i10);
                for (Map.Entry<u0, d> entry : sparseArray.valueAt(i10).entrySet()) {
                    d value = entry.getValue();
                    if (value != null) {
                        sparseArray2.put(arrayList2.size(), value);
                    }
                    arrayList2.add(entry.getKey());
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
                bundleA.putIntArray(q.b(1010), w6.a.d(arrayList));
                bundleA.putParcelableArrayList(q.b(1011), m5.b.b(arrayList2));
                String strB = q.b(1012);
                SparseArray<? extends Parcelable> sparseArray3 = new SparseArray<>(sparseArray2.size());
                for (int i11 = 0; i11 < sparseArray2.size(); i11++) {
                    sparseArray3.put(sparseArray2.keyAt(i11), ((n3.h) sparseArray2.valueAt(i11)).a());
                }
                bundleA.putSparseParcelableArray(strB, sparseArray3);
            }
            String strB2 = q.b(1013);
            SparseBooleanArray sparseBooleanArray = this.W;
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i12 = 0; i12 < sparseBooleanArray.size(); i12++) {
                iArr[i12] = sparseBooleanArray.keyAt(i12);
            }
            bundleA.putIntArray(strB2, iArr);
            return bundleA;
        }

        @Override // j5.q
        public final boolean equals(Object obj) {
            boolean z10;
            boolean z11;
            boolean z12;
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (super.equals(cVar) && this.I == cVar.I && this.J == cVar.J && this.K == cVar.K && this.L == cVar.L && this.M == cVar.M && this.N == cVar.N && this.O == cVar.O && this.P == cVar.P && this.Q == cVar.Q && this.R == cVar.R && this.S == cVar.S && this.T == cVar.T && this.U == cVar.U) {
                SparseBooleanArray sparseBooleanArray = this.W;
                SparseBooleanArray sparseBooleanArray2 = cVar.W;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            z10 = true;
                            break;
                        }
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                            z10 = false;
                            break;
                        }
                        i10++;
                    }
                } else {
                    z10 = false;
                    break;
                }
                if (z10) {
                    SparseArray<Map<u0, d>> sparseArray = this.V;
                    SparseArray<Map<u0, d>> sparseArray2 = cVar.V;
                    int size2 = sparseArray.size();
                    if (sparseArray2.size() == size2) {
                        int i11 = 0;
                        while (true) {
                            if (i11 < size2) {
                                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                                if (iIndexOfKey >= 0) {
                                    Map<u0, d> mapValueAt = sparseArray.valueAt(i11);
                                    Map<u0, d> mapValueAt2 = sparseArray2.valueAt(iIndexOfKey);
                                    if (mapValueAt2.size() == mapValueAt.size()) {
                                        Iterator<Map.Entry<u0, d>> it = mapValueAt.entrySet().iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                z12 = true;
                                                break;
                                            }
                                            Map.Entry<u0, d> next = it.next();
                                            u0 key = next.getKey();
                                            if (!mapValueAt2.containsKey(key) || !g0.a(next.getValue(), mapValueAt2.get(key))) {
                                                z12 = false;
                                                break;
                                            }
                                        }
                                    } else {
                                        z12 = false;
                                        break;
                                    }
                                    if (z12) {
                                        i11++;
                                    }
                                }
                                z11 = false;
                                break;
                            }
                            z11 = true;
                            break;
                        }
                    }
                    z11 = false;
                    break;
                    if (z11) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // j5.q
        public final int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0)) * 31) + (this.Q ? 1 : 0)) * 31) + (this.R ? 1 : 0)) * 31) + (this.S ? 1 : 0)) * 31) + (this.T ? 1 : 0)) * 31) + (this.U ? 1 : 0);
        }

        /* JADX INFO: compiled from: DefaultTrackSelector.java */
        public static final class a extends q.a {
            public boolean A;
            public boolean B;
            public boolean C;
            public boolean D;
            public boolean E;
            public boolean F;
            public boolean G;
            public boolean H;
            public boolean I;
            public boolean J;
            public boolean K;
            public boolean L;
            public boolean M;
            public final SparseArray<Map<u0, d>> N;
            public final SparseBooleanArray O;

            public a(Context context) {
                super.b(context);
                super.d(context);
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                f();
            }

            @Override // j5.q.a
            public final q.a c(int i10, int i11) {
                this.f9417i = i10;
                this.f9418j = i11;
                this.f9419k = true;
                return this;
            }

            public final c e() {
                return new c(this);
            }

            public final void f() {
                this.A = true;
                this.B = false;
                this.C = true;
                this.D = false;
                this.E = true;
                this.F = false;
                this.G = false;
                this.H = false;
                this.I = false;
                this.J = true;
                this.K = true;
                this.L = false;
                this.M = true;
            }

            @Deprecated
            public a() {
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                f();
            }

            public a(Bundle bundle) {
                v<Object> vVarA;
                SparseArray sparseArray;
                SparseBooleanArray sparseBooleanArray;
                super(bundle);
                f();
                c cVar = c.X;
                this.A = bundle.getBoolean(q.b(1000), cVar.I);
                this.B = bundle.getBoolean(q.b(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY), cVar.J);
                this.C = bundle.getBoolean(q.b(1002), cVar.K);
                this.D = bundle.getBoolean(q.b(1014), cVar.L);
                this.E = bundle.getBoolean(q.b(1003), cVar.M);
                this.F = bundle.getBoolean(q.b(1004), cVar.N);
                this.G = bundle.getBoolean(q.b(WebSocketProtocol.CLOSE_NO_STATUS_CODE), cVar.O);
                this.H = bundle.getBoolean(q.b(1006), cVar.P);
                this.I = bundle.getBoolean(q.b(1015), cVar.Q);
                this.J = bundle.getBoolean(q.b(1016), cVar.R);
                this.K = bundle.getBoolean(q.b(1007), cVar.S);
                this.L = bundle.getBoolean(q.b(1008), cVar.T);
                this.M = bundle.getBoolean(q.b(1009), cVar.U);
                this.N = new SparseArray<>();
                int[] intArray = bundle.getIntArray(q.b(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(q.b(1011));
                if (parcelableArrayList == null) {
                    vVarA = p0.f15967l;
                } else {
                    vVarA = m5.b.a(u0.f13234l, parcelableArrayList);
                }
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(q.b(1012));
                if (sparseParcelableArray == null) {
                    sparseArray = new SparseArray();
                } else {
                    n3.h.a<d> aVar = d.f9340k;
                    SparseArray sparseArray2 = new SparseArray(sparseParcelableArray.size());
                    for (int i10 = 0; i10 < sparseParcelableArray.size(); i10++) {
                        sparseArray2.put(sparseParcelableArray.keyAt(i10), aVar.d((Bundle) sparseParcelableArray.valueAt(i10)));
                    }
                    sparseArray = sparseArray2;
                }
                if (intArray != null && intArray.length == ((p0) vVarA).f15969k) {
                    for (int i11 = 0; i11 < intArray.length; i11++) {
                        int i12 = intArray[i11];
                        u0 u0Var = (u0) ((p0) vVarA).get(i11);
                        d dVar = (d) sparseArray.get(i11);
                        Map<u0, d> map = this.N.get(i12);
                        if (map == null) {
                            map = new HashMap<>();
                            this.N.put(i12, map);
                        }
                        if (!map.containsKey(u0Var) || !g0.a(map.get(u0Var), dVar)) {
                            map.put(u0Var, dVar);
                        }
                    }
                }
                int[] intArray2 = bundle.getIntArray(q.b(1013));
                if (intArray2 == null) {
                    sparseBooleanArray = new SparseBooleanArray();
                } else {
                    SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(intArray2.length);
                    for (int i13 : intArray2) {
                        sparseBooleanArray2.append(i13, true);
                    }
                    sparseBooleanArray = sparseBooleanArray2;
                }
                this.O = sparseBooleanArray;
            }
        }
    }
}
