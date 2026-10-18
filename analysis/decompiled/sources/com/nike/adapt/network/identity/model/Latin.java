package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Latin {

    @b("family")
    private final String family;

    @b("given")
    private final String given;

    public Latin(String str, String str2) {
        this.given = str;
        this.family = str2;
    }

    public static /* synthetic */ Latin copy$default(Latin latin, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = latin.given;
        }
        if ((i10 & 2) != 0) {
            str2 = latin.family;
        }
        return latin.copy(str, str2);
    }

    public final String component1() {
        return this.given;
    }

    public final String component2() {
        return this.family;
    }

    public final Latin copy(String str, String str2) {
        return new Latin(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Latin)) {
            return false;
        }
        Latin latin = (Latin) obj;
        return h.c(this.given, latin.given) && h.c(this.family, latin.family);
    }

    public final String getFamily() {
        return this.family;
    }

    public final String getGiven() {
        return this.given;
    }

    public int hashCode() {
        String str = this.given;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.family;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return a0.b.a("Latin(given=", this.given, ", family=", this.family, ")");
    }
}
