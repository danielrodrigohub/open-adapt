package ja;

import p4.h;

/* JADX INFO: compiled from: AdaptKitRequirements.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.support.v4.media.a f9480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.support.v4.media.a f9481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.support.v4.media.a f9482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.support.v4.media.a f9483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final android.support.v4.media.a f9484e;

    public a(android.support.v4.media.a aVar, android.support.v4.media.a aVar2, android.support.v4.media.a aVar3, android.support.v4.media.a aVar4, android.support.v4.media.a aVar5) {
        this.f9480a = aVar;
        this.f9481b = aVar2;
        this.f9482c = aVar3;
        this.f9483d = aVar4;
        this.f9484e = aVar5;
    }

    @Override // ja.b
    public final android.support.v4.media.a a() {
        return this.f9481b;
    }

    @Override // ja.b
    public final android.support.v4.media.a b() {
        return this.f9480a;
    }

    @Override // ja.b
    public final android.support.v4.media.a c() {
        return this.f9482c;
    }

    @Override // ja.b
    public final android.support.v4.media.a d() {
        return this.f9483d;
    }

    @Override // ja.b
    public final android.support.v4.media.a e() {
        return this.f9484e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.c(this.f9480a, aVar.f9480a) && h.c(this.f9481b, aVar.f9481b) && h.c(this.f9482c, aVar.f9482c) && h.c(this.f9483d, aVar.f9483d) && h.c(this.f9484e, aVar.f9484e);
    }

    @Override // ja.b
    public final boolean f() {
        return ((this.f9481b instanceof d) || (this.f9482c instanceof d) || (this.f9480a instanceof d) || (this.f9483d instanceof d) || (this.f9484e instanceof d)) ? false : true;
    }

    public final int hashCode() {
        return this.f9484e.hashCode() + ((this.f9483d.hashCode() + ((this.f9482c.hashCode() + ((this.f9481b.hashCode() + (this.f9480a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdaptKitRequirements(locationPermissionMissing=" + this.f9480a + ", locationTurnedOffByUser=" + this.f9481b + ", bluetoothIsTurnedOff=" + this.f9482c + ", nearbyDevicesPermissionMissing=" + this.f9483d + ", bluetoothConnectPermissionMissing=" + this.f9484e + ")";
    }
}
