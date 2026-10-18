package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Dob {

    @b("day")
    private final Integer day;

    @b("month")
    private final Integer month;

    @b("year")
    private final Integer year;

    public Dob(Integer num, Integer num2, Integer num3) {
        this.day = num;
        this.month = num2;
        this.year = num3;
    }

    public static /* synthetic */ Dob copy$default(Dob dob, Integer num, Integer num2, Integer num3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = dob.day;
        }
        if ((i10 & 2) != 0) {
            num2 = dob.month;
        }
        if ((i10 & 4) != 0) {
            num3 = dob.year;
        }
        return dob.copy(num, num2, num3);
    }

    public final Integer component1() {
        return this.day;
    }

    public final Integer component2() {
        return this.month;
    }

    public final Integer component3() {
        return this.year;
    }

    public final Dob copy(Integer num, Integer num2, Integer num3) {
        return new Dob(num, num2, num3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Dob)) {
            return false;
        }
        Dob dob = (Dob) obj;
        return h.c(this.day, dob.day) && h.c(this.month, dob.month) && h.c(this.year, dob.year);
    }

    public final Integer getDay() {
        return this.day;
    }

    public final Integer getMonth() {
        return this.month;
    }

    public final Integer getYear() {
        return this.year;
    }

    public int hashCode() {
        Integer num = this.day;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.month;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.year;
        return iHashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    public String toString() {
        return "Dob(day=" + this.day + ", month=" + this.month + ", year=" + this.year + ")";
    }
}
