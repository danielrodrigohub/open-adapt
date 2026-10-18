package p3;

/* JADX INFO: compiled from: AuxEffectInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12835a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f12836b = 0.0f;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        return this.f12835a == tVar.f12835a && Float.compare(tVar.f12836b, this.f12836b) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f12836b) + ((527 + this.f12835a) * 31);
    }
}
