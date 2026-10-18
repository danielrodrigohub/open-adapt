package com.nike.adapt.network.dataopt.permissions.model;

import a1.f;
import androidx.annotation.Keep;
import f7.b;
import k1.a;
import p4.h;

/* JADX INFO: compiled from: Permissions.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Permissions {

    @b("consent")
    private final String consent;

    @b("permission")
    private final String permission;

    @b("principal")
    private final String principal;

    public Permissions(String str, String str2, String str3) {
        h.j(str, "principal");
        h.j(str2, "permission");
        h.j(str3, "consent");
        this.principal = str;
        this.permission = str2;
        this.consent = str3;
    }

    public static /* synthetic */ Permissions copy$default(Permissions permissions, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = permissions.principal;
        }
        if ((i10 & 2) != 0) {
            str2 = permissions.permission;
        }
        if ((i10 & 4) != 0) {
            str3 = permissions.consent;
        }
        return permissions.copy(str, str2, str3);
    }

    public final String component1() {
        return this.principal;
    }

    public final String component2() {
        return this.permission;
    }

    public final String component3() {
        return this.consent;
    }

    public final Permissions copy(String str, String str2, String str3) {
        h.j(str, "principal");
        h.j(str2, "permission");
        h.j(str3, "consent");
        return new Permissions(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Permissions)) {
            return false;
        }
        Permissions permissions = (Permissions) obj;
        return h.c(this.principal, permissions.principal) && h.c(this.permission, permissions.permission) && h.c(this.consent, permissions.consent);
    }

    public final String getConsent() {
        return this.consent;
    }

    public final String getPermission() {
        return this.permission;
    }

    public final String getPrincipal() {
        return this.principal;
    }

    public int hashCode() {
        return this.consent.hashCode() + f.c(this.permission, this.principal.hashCode() * 31, 31);
    }

    public String toString() {
        String str = this.principal;
        String str2 = this.permission;
        return f.d(a.a("Permissions(principal=", str, ", permission=", str2, ", consent="), this.consent, ")");
    }
}
