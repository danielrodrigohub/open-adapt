package oc;

/* JADX INFO: compiled from: BigfootAnimationFrameData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f12549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f12550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte f12551c;

    public c(byte b10, byte b11, byte b12) {
        this.f12549a = b10;
        this.f12550b = b11;
        this.f12551c = b12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f12549a == cVar.f12549a && this.f12550b == cVar.f12550b && this.f12551c == cVar.f12551c;
    }

    public final int hashCode() {
        return Byte.hashCode(this.f12551c) + ((Byte.hashCode(this.f12550b) + (Byte.hashCode(this.f12549a) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("BigfootAnimationLed(red=");
        sbC.append((int) this.f12549a);
        sbC.append(", green=");
        sbC.append((int) this.f12550b);
        sbC.append(", blue=");
        return a0.b.b(sbC, this.f12551c, ')');
    }
}
