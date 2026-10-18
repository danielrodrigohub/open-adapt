package com.nike.adapt.adk;

import android.os.Parcel;
import android.os.Parcelable;
import ea.m;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AuthFailure extends AdaptConnectionStatusResult {
    public static final Parcelable.Creator<AuthFailure> CREATOR = new Creator();
    private final m authFailureDevice;
    private final d eventUUID;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Creator implements Parcelable.Creator<AuthFailure> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthFailure createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AuthFailure(d.CREATOR.createFromParcel(parcel), (m) parcel.readParcelable(AuthFailure.class.getClassLoader()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthFailure[] newArray(int i10) {
            return new AuthFailure[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthFailure(d dVar, m mVar) {
        super(dVar, Shoe.BOTH, mVar, null);
        h.j(dVar, "eventUUID");
        h.j(mVar, "authFailureDevice");
        this.eventUUID = dVar;
        this.authFailureDevice = mVar;
    }

    public static /* synthetic */ AuthFailure copy$default(AuthFailure authFailure, d dVar, m mVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = authFailure.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            mVar = authFailure.authFailureDevice;
        }
        return authFailure.copy(dVar, mVar);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final m component2() {
        return this.authFailureDevice;
    }

    public final AuthFailure copy(d dVar, m mVar) {
        h.j(dVar, "eventUUID");
        h.j(mVar, "authFailureDevice");
        return new AuthFailure(dVar, mVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthFailure)) {
            return false;
        }
        AuthFailure authFailure = (AuthFailure) obj;
        return h.c(getEventUUID(), authFailure.getEventUUID()) && h.c(this.authFailureDevice, authFailure.authFailureDevice);
    }

    public final m getAuthFailureDevice() {
        return this.authFailureDevice;
    }

    @Override // com.nike.adapt.adk.AdaptConnectionStatusResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public int hashCode() {
        return this.authFailureDevice.hashCode() + (getEventUUID().hashCode() * 31);
    }

    public String toString() {
        return "AuthFailure(eventUUID=" + getEventUUID() + ", authFailureDevice=" + this.authFailureDevice + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.authFailureDevice, i10);
    }
}
