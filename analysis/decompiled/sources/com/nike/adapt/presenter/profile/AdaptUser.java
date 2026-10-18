package com.nike.adapt.presenter.profile;

import a1.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import p4.h;

/* JADX INFO: compiled from: AdaptUser.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AdaptUser implements Parcelable {
    public static final Parcelable.Creator<AdaptUser> CREATOR = new a();
    private final String avatarUrl;
    private final Integer dob;
    private final String email;
    private final String firstName;
    private final String hometown;
    private final String lastName;
    private final String nuid;
    private final Long registrationTimestamp;

    /* JADX INFO: compiled from: AdaptUser.kt */
    public static final class a implements Parcelable.Creator<AdaptUser> {
        @Override // android.os.Parcelable.Creator
        public final AdaptUser createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptUser(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AdaptUser[] newArray(int i10) {
            return new AdaptUser[i10];
        }
    }

    public AdaptUser(String str, String str2, String str3, String str4, String str5, Integer num, Long l10, String str6) {
        h.j(str, "nuid");
        this.nuid = str;
        this.firstName = str2;
        this.lastName = str3;
        this.avatarUrl = str4;
        this.hometown = str5;
        this.dob = num;
        this.registrationTimestamp = l10;
        this.email = str6;
    }

    public final String component1() {
        return this.nuid;
    }

    public final String component2() {
        return this.firstName;
    }

    public final String component3() {
        return this.lastName;
    }

    public final String component4() {
        return this.avatarUrl;
    }

    public final String component5() {
        return this.hometown;
    }

    public final Integer component6() {
        return this.dob;
    }

    public final Long component7() {
        return this.registrationTimestamp;
    }

    public final String component8() {
        return this.email;
    }

    public final AdaptUser copy(String str, String str2, String str3, String str4, String str5, Integer num, Long l10, String str6) {
        h.j(str, "nuid");
        return new AdaptUser(str, str2, str3, str4, str5, num, l10, str6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptUser)) {
            return false;
        }
        AdaptUser adaptUser = (AdaptUser) obj;
        return h.c(this.nuid, adaptUser.nuid) && h.c(this.firstName, adaptUser.firstName) && h.c(this.lastName, adaptUser.lastName) && h.c(this.avatarUrl, adaptUser.avatarUrl) && h.c(this.hometown, adaptUser.hometown) && h.c(this.dob, adaptUser.dob) && h.c(this.registrationTimestamp, adaptUser.registrationTimestamp) && h.c(this.email, adaptUser.email);
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final Integer getDob() {
        return this.dob;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final String getHometown() {
        return this.hometown;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final String getNuid() {
        return this.nuid;
    }

    public final Long getRegistrationTimestamp() {
        return this.registrationTimestamp;
    }

    public int hashCode() {
        int iHashCode = this.nuid.hashCode() * 31;
        String str = this.firstName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.lastName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatarUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.hometown;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.dob;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Long l10 = this.registrationTimestamp;
        int iHashCode7 = (iHashCode6 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str5 = this.email;
        return iHashCode7 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        String str = this.nuid;
        String str2 = this.firstName;
        String str3 = this.lastName;
        String str4 = this.avatarUrl;
        String str5 = this.hometown;
        Integer num = this.dob;
        Long l10 = this.registrationTimestamp;
        String str6 = this.email;
        StringBuilder sbA = k1.a.a("AdaptUser(nuid=", str, ", firstName=", str2, ", lastName=");
        d.g(sbA, str3, ", avatarUrl=", str4, ", hometown=");
        sbA.append(str5);
        sbA.append(", dob=");
        sbA.append(num);
        sbA.append(", registrationTimestamp=");
        sbA.append(l10);
        sbA.append(", email=");
        sbA.append(str6);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.nuid);
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.avatarUrl);
        parcel.writeString(this.hometown);
        Integer num = this.dob;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Long l10 = this.registrationTimestamp;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l10.longValue());
        }
        parcel.writeString(this.email);
    }

    public /* synthetic */ AdaptUser(String str, String str2, String str3, String str4, String str5, Integer num, Long l10, String str6, int i10, rd.h hVar) {
        this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, num, (i10 & 64) != 0 ? null : l10, str6);
    }
}
