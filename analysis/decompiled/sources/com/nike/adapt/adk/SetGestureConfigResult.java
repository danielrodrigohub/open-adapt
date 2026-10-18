package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.AdaptGestureConfigurationResponse;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SetGestureConfigResult extends DeviceControllerResult {
    public static final Parcelable.Creator<SetGestureConfigResult> CREATOR = new Creator();
    private final d eventUUID;
    private final AdaptGestureConfigurationResponse gestureConfigurationResponse;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<SetGestureConfigResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetGestureConfigResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new SetGestureConfigResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), AdaptGestureConfigurationResponse.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SetGestureConfigResult[] newArray(int i10) {
            return new SetGestureConfigResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetGestureConfigResult(d dVar, Shoe shoe, AdaptGestureConfigurationResponse adaptGestureConfigurationResponse) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptGestureConfigurationResponse, "gestureConfigurationResponse");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.gestureConfigurationResponse = adaptGestureConfigurationResponse;
    }

    public static /* synthetic */ SetGestureConfigResult copy$default(SetGestureConfigResult setGestureConfigResult, d dVar, Shoe shoe, AdaptGestureConfigurationResponse adaptGestureConfigurationResponse, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = setGestureConfigResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = setGestureConfigResult.shoe;
        }
        if ((i10 & 4) != 0) {
            adaptGestureConfigurationResponse = setGestureConfigResult.gestureConfigurationResponse;
        }
        return setGestureConfigResult.copy(dVar, shoe, adaptGestureConfigurationResponse);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final AdaptGestureConfigurationResponse component3() {
        return this.gestureConfigurationResponse;
    }

    public final SetGestureConfigResult copy(d dVar, Shoe shoe, AdaptGestureConfigurationResponse adaptGestureConfigurationResponse) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptGestureConfigurationResponse, "gestureConfigurationResponse");
        return new SetGestureConfigResult(dVar, shoe, adaptGestureConfigurationResponse);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetGestureConfigResult)) {
            return false;
        }
        SetGestureConfigResult setGestureConfigResult = (SetGestureConfigResult) obj;
        return h.c(getEventUUID(), setGestureConfigResult.getEventUUID()) && this.shoe == setGestureConfigResult.shoe && this.gestureConfigurationResponse == setGestureConfigResult.gestureConfigurationResponse;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final AdaptGestureConfigurationResponse getGestureConfigurationResponse() {
        return this.gestureConfigurationResponse;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.gestureConfigurationResponse.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        AdaptGestureConfigurationResponse adaptGestureConfigurationResponse = this.gestureConfigurationResponse;
        StringBuilder sbG = r0.g("SetGestureConfigResult(eventUUID=", eventUUID, ", shoe=", shoe, ", gestureConfigurationResponse=");
        sbG.append(adaptGestureConfigurationResponse);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeString(this.gestureConfigurationResponse.name());
    }
}
