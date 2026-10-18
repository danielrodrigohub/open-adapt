package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Name {

    @b("latin")
    private final Latin latin;

    public Name(Latin latin) {
        this.latin = latin;
    }

    public static /* synthetic */ Name copy$default(Name name, Latin latin, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            latin = name.latin;
        }
        return name.copy(latin);
    }

    public final Latin component1() {
        return this.latin;
    }

    public final Name copy(Latin latin) {
        return new Name(latin);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Name) && h.c(this.latin, ((Name) obj).latin);
    }

    public final Latin getLatin() {
        return this.latin;
    }

    public int hashCode() {
        Latin latin = this.latin;
        if (latin == null) {
            return 0;
        }
        return latin.hashCode();
    }

    public String toString() {
        return "Name(latin=" + this.latin + ")";
    }
}
