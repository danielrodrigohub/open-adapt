package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Email {

    @b("address")
    private final String address;

    @b("verified")
    private final boolean verified;

    public Email(String str, boolean z10) {
        h.j(str, "address");
        this.address = str;
        this.verified = z10;
    }

    public static /* synthetic */ Email copy$default(Email email, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = email.address;
        }
        if ((i10 & 2) != 0) {
            z10 = email.verified;
        }
        return email.copy(str, z10);
    }

    public final String component1() {
        return this.address;
    }

    public final boolean component2() {
        return this.verified;
    }

    public final Email copy(String str, boolean z10) {
        h.j(str, "address");
        return new Email(str, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Email)) {
            return false;
        }
        Email email = (Email) obj;
        return h.c(this.address, email.address) && this.verified == email.verified;
    }

    public final String getAddress() {
        return this.address;
    }

    public final boolean getVerified() {
        return this.verified;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.address.hashCode() * 31;
        boolean z10 = this.verified;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode + r10;
    }

    public String toString() {
        return "Email(address=" + this.address + ", verified=" + this.verified + ")";
    }
}
