package h3;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import h3.a;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.http2.Http2;
import r2.l;
import y2.m;
import y2.p;
import y2.r;

/* JADX INFO: compiled from: BaseRequestOptions.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    public boolean A;
    public Resources.Theme B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean G;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8115h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f8119l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8120m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f8121n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8122o;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f8127t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Drawable f8129v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f8130w;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f8116i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public l f8117j = l.f14304c;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public com.bumptech.glide.g f8118k = com.bumptech.glide.g.NORMAL;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f8123p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8124q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8125r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public p2.f f8126s = k3.c.f9646b;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f8128u = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public p2.h f8131x = new p2.h();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Map<Class<?>, p2.l<?>> f8132y = new l3.b();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Class<?> f8133z = Object.class;
    public boolean F = true;

    public static boolean l(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    public final T A(m mVar, p2.l<Bitmap> lVar) {
        if (this.C) {
            return (T) clone().A(mVar, lVar);
        }
        f(mVar);
        return (T) y(lVar);
    }

    public a B() {
        if (this.C) {
            return clone().B();
        }
        this.G = true;
        this.f8115h |= 1048576;
        t();
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [java.util.Map<java.lang.Class<?>, p2.l<?>>, l3.b] */
    public T a(a<?> aVar) {
        if (this.C) {
            return (T) clone().a(aVar);
        }
        if (l(aVar.f8115h, 2)) {
            this.f8116i = aVar.f8116i;
        }
        if (l(aVar.f8115h, 262144)) {
            this.D = aVar.D;
        }
        if (l(aVar.f8115h, 1048576)) {
            this.G = aVar.G;
        }
        if (l(aVar.f8115h, 4)) {
            this.f8117j = aVar.f8117j;
        }
        if (l(aVar.f8115h, 8)) {
            this.f8118k = aVar.f8118k;
        }
        if (l(aVar.f8115h, 16)) {
            this.f8119l = aVar.f8119l;
            this.f8120m = 0;
            this.f8115h &= -33;
        }
        if (l(aVar.f8115h, 32)) {
            this.f8120m = aVar.f8120m;
            this.f8119l = null;
            this.f8115h &= -17;
        }
        if (l(aVar.f8115h, 64)) {
            this.f8121n = aVar.f8121n;
            this.f8122o = 0;
            this.f8115h &= -129;
        }
        if (l(aVar.f8115h, 128)) {
            this.f8122o = aVar.f8122o;
            this.f8121n = null;
            this.f8115h &= -65;
        }
        if (l(aVar.f8115h, 256)) {
            this.f8123p = aVar.f8123p;
        }
        if (l(aVar.f8115h, 512)) {
            this.f8125r = aVar.f8125r;
            this.f8124q = aVar.f8124q;
        }
        if (l(aVar.f8115h, 1024)) {
            this.f8126s = aVar.f8126s;
        }
        if (l(aVar.f8115h, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH)) {
            this.f8133z = aVar.f8133z;
        }
        if (l(aVar.f8115h, 8192)) {
            this.f8129v = aVar.f8129v;
            this.f8130w = 0;
            this.f8115h &= -16385;
        }
        if (l(aVar.f8115h, Http2.INITIAL_MAX_FRAME_SIZE)) {
            this.f8130w = aVar.f8130w;
            this.f8129v = null;
            this.f8115h &= -8193;
        }
        if (l(aVar.f8115h, 32768)) {
            this.B = aVar.B;
        }
        if (l(aVar.f8115h, 65536)) {
            this.f8128u = aVar.f8128u;
        }
        if (l(aVar.f8115h, 131072)) {
            this.f8127t = aVar.f8127t;
        }
        if (l(aVar.f8115h, 2048)) {
            this.f8132y.putAll(aVar.f8132y);
            this.F = aVar.F;
        }
        if (l(aVar.f8115h, 524288)) {
            this.E = aVar.E;
        }
        if (!this.f8128u) {
            this.f8132y.clear();
            int i10 = this.f8115h & (-2049);
            this.f8127t = false;
            this.f8115h = i10 & (-131073);
            this.F = true;
        }
        this.f8115h |= aVar.f8115h;
        this.f8131x.d(aVar.f8131x);
        t();
        return this;
    }

    public T b() {
        if (this.A && !this.C) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.C = true;
        return (T) m();
    }

    @Override // 
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public T clone() {
        try {
            T t10 = (T) super.clone();
            p2.h hVar = new p2.h();
            t10.f8131x = hVar;
            hVar.d(this.f8131x);
            l3.b bVar = new l3.b();
            t10.f8132y = bVar;
            bVar.putAll(this.f8132y);
            t10.A = false;
            t10.C = false;
            return t10;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public T d(Class<?> cls) {
        if (this.C) {
            return (T) clone().d(cls);
        }
        this.f8133z = cls;
        this.f8115h |= AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
        t();
        return this;
    }

    public T e(l lVar) {
        if (this.C) {
            return (T) clone().e(lVar);
        }
        this.f8117j = lVar;
        this.f8115h |= 4;
        t();
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [java.util.Map<java.lang.Class<?>, p2.l<?>>, p.g] */
    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (Float.compare(aVar.f8116i, this.f8116i) == 0 && this.f8120m == aVar.f8120m && l3.l.b(this.f8119l, aVar.f8119l) && this.f8122o == aVar.f8122o && l3.l.b(this.f8121n, aVar.f8121n) && this.f8130w == aVar.f8130w && l3.l.b(this.f8129v, aVar.f8129v) && this.f8123p == aVar.f8123p && this.f8124q == aVar.f8124q && this.f8125r == aVar.f8125r && this.f8127t == aVar.f8127t && this.f8128u == aVar.f8128u && this.D == aVar.D && this.E == aVar.E && this.f8117j.equals(aVar.f8117j) && this.f8118k == aVar.f8118k && this.f8131x.equals(aVar.f8131x) && this.f8132y.equals(aVar.f8132y) && this.f8133z.equals(aVar.f8133z) && l3.l.b(this.f8126s, aVar.f8126s) && l3.l.b(this.B, aVar.B)) {
                return true;
            }
        }
        return false;
    }

    public T f(m mVar) {
        return (T) u(m.f18463f, mVar);
    }

    public T g(int i10) {
        if (this.C) {
            return (T) clone().g(i10);
        }
        this.f8120m = i10;
        int i11 = this.f8115h | 32;
        this.f8119l = null;
        this.f8115h = i11 & (-17);
        t();
        return this;
    }

    public T h(Drawable drawable) {
        if (this.C) {
            return (T) clone().h(drawable);
        }
        this.f8119l = drawable;
        int i10 = this.f8115h | 16;
        this.f8120m = 0;
        this.f8115h = i10 & (-33);
        t();
        return this;
    }

    public final int hashCode() {
        float f10 = this.f8116i;
        char[] cArr = l3.l.f9945a;
        return l3.l.g(this.B, l3.l.g(this.f8126s, l3.l.g(this.f8133z, l3.l.g(this.f8132y, l3.l.g(this.f8131x, l3.l.g(this.f8118k, l3.l.g(this.f8117j, (((((((((((((l3.l.g(this.f8129v, (l3.l.g(this.f8121n, (l3.l.g(this.f8119l, ((Float.floatToIntBits(f10) + 527) * 31) + this.f8120m) * 31) + this.f8122o) * 31) + this.f8130w) * 31) + (this.f8123p ? 1 : 0)) * 31) + this.f8124q) * 31) + this.f8125r) * 31) + (this.f8127t ? 1 : 0)) * 31) + (this.f8128u ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0))))))));
    }

    public T i(int i10) {
        if (this.C) {
            return (T) clone().i(i10);
        }
        this.f8130w = i10;
        int i11 = this.f8115h | Http2.INITIAL_MAX_FRAME_SIZE;
        this.f8129v = null;
        this.f8115h = i11 & (-8193);
        t();
        return this;
    }

    public T j(Drawable drawable) {
        if (this.C) {
            return (T) clone().j(drawable);
        }
        this.f8129v = drawable;
        int i10 = this.f8115h | 8192;
        this.f8130w = 0;
        this.f8115h = i10 & (-16385);
        t();
        return this;
    }

    public T k() {
        T t10 = (T) A(m.f18458a, new r());
        t10.F = true;
        return t10;
    }

    public T m() {
        this.A = true;
        return this;
    }

    public T n() {
        return (T) q(m.f18460c, new y2.i());
    }

    public T o() {
        T t10 = (T) q(m.f18459b, new y2.j());
        t10.F = true;
        return t10;
    }

    public T p() {
        T t10 = (T) q(m.f18458a, new r());
        t10.F = true;
        return t10;
    }

    public final T q(m mVar, p2.l<Bitmap> lVar) {
        if (this.C) {
            return (T) clone().q(mVar, lVar);
        }
        f(mVar);
        return (T) z(lVar, false);
    }

    public T r(int i10, int i11) {
        if (this.C) {
            return (T) clone().r(i10, i11);
        }
        this.f8125r = i10;
        this.f8124q = i11;
        this.f8115h |= 512;
        t();
        return this;
    }

    public a s() {
        com.bumptech.glide.g gVar = com.bumptech.glide.g.LOW;
        if (this.C) {
            return clone().s();
        }
        this.f8118k = gVar;
        this.f8115h |= 8;
        t();
        return this;
    }

    public final T t() {
        if (this.A) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [l3.b, p.a<p2.g<?>, java.lang.Object>] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public <Y> T u(p2.g<Y> gVar, Y y7) {
        if (this.C) {
            return (T) clone().u(gVar, y7);
        }
        Objects.requireNonNull(gVar, "Argument must not be null");
        this.f8131x.f12648b.put((p2.g<?>) gVar, y7);
        t();
        return this;
    }

    public T v(p2.f fVar) {
        if (this.C) {
            return (T) clone().v(fVar);
        }
        this.f8126s = fVar;
        this.f8115h |= 1024;
        t();
        return this;
    }

    public a w() {
        if (this.C) {
            return clone().w();
        }
        this.f8123p = false;
        this.f8115h |= 256;
        t();
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map<java.lang.Class<?>, p2.l<?>>, l3.b] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final <Y> T x(Class<Y> cls, p2.l<Y> lVar, boolean z10) {
        if (this.C) {
            return (T) clone().x(cls, lVar, z10);
        }
        Objects.requireNonNull(lVar, "Argument must not be null");
        this.f8132y.put((Class<?>) cls, (p2.l<?>) lVar);
        int i10 = this.f8115h | 2048;
        this.f8128u = true;
        int i11 = i10 | 65536;
        this.f8115h = i11;
        this.F = false;
        if (z10) {
            this.f8115h = i11 | 131072;
            this.f8127t = true;
        }
        t();
        return this;
    }

    public T y(p2.l<Bitmap> lVar) {
        return (T) z(lVar, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T z(p2.l<Bitmap> lVar, boolean z10) {
        if (this.C) {
            return (T) clone().z(lVar, z10);
        }
        p pVar = new p(lVar, z10);
        x(Bitmap.class, lVar, z10);
        x(Drawable.class, pVar, z10);
        x(BitmapDrawable.class, pVar, z10);
        x(c3.c.class, new c3.f(lVar), z10);
        t();
        return this;
    }
}
