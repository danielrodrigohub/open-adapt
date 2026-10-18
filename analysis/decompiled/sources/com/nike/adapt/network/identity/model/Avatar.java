package com.nike.adapt.network.identity.model;

import a1.f;
import androidx.annotation.Keep;
import f7.b;
import k1.a;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Avatar {

    @b("large")
    private final String large;

    @b("medium")
    private final String medium;

    @b("small")
    private final String small;

    public Avatar(String str, String str2, String str3) {
        this.small = str;
        this.medium = str2;
        this.large = str3;
    }

    public static /* synthetic */ Avatar copy$default(Avatar avatar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = avatar.small;
        }
        if ((i10 & 2) != 0) {
            str2 = avatar.medium;
        }
        if ((i10 & 4) != 0) {
            str3 = avatar.large;
        }
        return avatar.copy(str, str2, str3);
    }

    public final String component1() {
        return this.small;
    }

    public final String component2() {
        return this.medium;
    }

    public final String component3() {
        return this.large;
    }

    public final Avatar copy(String str, String str2, String str3) {
        return new Avatar(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Avatar)) {
            return false;
        }
        Avatar avatar = (Avatar) obj;
        return h.c(this.small, avatar.small) && h.c(this.medium, avatar.medium) && h.c(this.large, avatar.large);
    }

    public final String getLarge() {
        return this.large;
    }

    public final String getMedium() {
        return this.medium;
    }

    public final String getSmall() {
        return this.small;
    }

    public int hashCode() {
        String str = this.small;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.medium;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.large;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        String str = this.small;
        String str2 = this.medium;
        return f.d(a.a("Avatar(small=", str, ", medium=", str2, ", large="), this.large, ")");
    }
}
