package kc;

import p4.h;

/* JADX INFO: compiled from: NoBluetoothGattExists.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends Exception {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9796h;

    public f() {
        super("No Bluetooth Gatt is provided, check init() has been called!");
        this.f9796h = "No Bluetooth Gatt is provided, check init() has been called!";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && h.c(this.f9796h, ((f) obj).f9796h);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f9796h;
    }

    public final int hashCode() {
        return this.f9796h.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return a0.d.d(a0.b.c("NoBluetoothGattExists(message="), this.f9796h, ')');
    }
}
