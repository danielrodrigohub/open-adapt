package r2;

import java.security.MessageDigest;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: EngineKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements p2.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class<?> f14359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class<?> f14360f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p2.f f14361g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map<Class<?>, p2.l<?>> f14362h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p2.h f14363i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14364j;

    public p(Object obj, p2.f fVar, int i10, int i11, Map<Class<?>, p2.l<?>> map, Class<?> cls, Class<?> cls2, p2.h hVar) {
        Objects.requireNonNull(obj, "Argument must not be null");
        this.f14356b = obj;
        Objects.requireNonNull(fVar, "Signature must not be null");
        this.f14361g = fVar;
        this.f14357c = i10;
        this.f14358d = i11;
        Objects.requireNonNull(map, "Argument must not be null");
        this.f14362h = map;
        Objects.requireNonNull(cls, "Resource class must not be null");
        this.f14359e = cls;
        Objects.requireNonNull(cls2, "Transcode class must not be null");
        this.f14360f = cls2;
        Objects.requireNonNull(hVar, "Argument must not be null");
        this.f14363i = hVar;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f14356b.equals(pVar.f14356b) && this.f14361g.equals(pVar.f14361g) && this.f14358d == pVar.f14358d && this.f14357c == pVar.f14357c && this.f14362h.equals(pVar.f14362h) && this.f14359e.equals(pVar.f14359e) && this.f14360f.equals(pVar.f14360f) && this.f14363i.equals(pVar.f14363i);
    }

    @Override // p2.f
    public final int hashCode() {
        if (this.f14364j == 0) {
            int iHashCode = this.f14356b.hashCode();
            this.f14364j = iHashCode;
            int iHashCode2 = ((((this.f14361g.hashCode() + (iHashCode * 31)) * 31) + this.f14357c) * 31) + this.f14358d;
            this.f14364j = iHashCode2;
            int iHashCode3 = this.f14362h.hashCode() + (iHashCode2 * 31);
            this.f14364j = iHashCode3;
            int iHashCode4 = this.f14359e.hashCode() + (iHashCode3 * 31);
            this.f14364j = iHashCode4;
            int iHashCode5 = this.f14360f.hashCode() + (iHashCode4 * 31);
            this.f14364j = iHashCode5;
            this.f14364j = this.f14363i.hashCode() + (iHashCode5 * 31);
        }
        return this.f14364j;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("EngineKey{model=");
        sbC.append(this.f14356b);
        sbC.append(", width=");
        sbC.append(this.f14357c);
        sbC.append(", height=");
        sbC.append(this.f14358d);
        sbC.append(", resourceClass=");
        sbC.append(this.f14359e);
        sbC.append(", transcodeClass=");
        sbC.append(this.f14360f);
        sbC.append(", signature=");
        sbC.append(this.f14361g);
        sbC.append(", hashCode=");
        sbC.append(this.f14364j);
        sbC.append(", transformations=");
        sbC.append(this.f14362h);
        sbC.append(", options=");
        sbC.append(this.f14363i);
        sbC.append('}');
        return sbC.toString();
    }
}
