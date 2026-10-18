package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import ca.a;
import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import i8.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetGestureConfigResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetGestureConfigResult> CREATOR = new Creator();
    private final d eventUUID;
    private final List<AdaptGestureConfiguration> gestureConfigResult;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetGestureConfigResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetGestureConfigResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            d dVarCreateFromParcel = d.CREATOR.createFromParcel(parcel);
            Shoe shoeValueOf = Shoe.valueOf(parcel.readString());
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 != i10; i11++) {
                arrayList.add(parcel.readParcelable(GetGestureConfigResult.class.getClassLoader()));
            }
            return new GetGestureConfigResult(dVarCreateFromParcel, shoeValueOf, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetGestureConfigResult[] newArray(int i10) {
            return new GetGestureConfigResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GetGestureConfigResult(d dVar, Shoe shoe, List<? extends AdaptGestureConfiguration> list) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(list, "gestureConfigResult");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.gestureConfigResult = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetGestureConfigResult copy$default(GetGestureConfigResult getGestureConfigResult, d dVar, Shoe shoe, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getGestureConfigResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getGestureConfigResult.shoe;
        }
        if ((i10 & 4) != 0) {
            list = getGestureConfigResult.gestureConfigResult;
        }
        return getGestureConfigResult.copy(dVar, shoe, list);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final List<AdaptGestureConfiguration> component3() {
        return this.gestureConfigResult;
    }

    public final GetGestureConfigResult copy(d dVar, Shoe shoe, List<? extends AdaptGestureConfiguration> list) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(list, "gestureConfigResult");
        return new GetGestureConfigResult(dVar, shoe, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetGestureConfigResult)) {
            return false;
        }
        GetGestureConfigResult getGestureConfigResult = (GetGestureConfigResult) obj;
        return h.c(getEventUUID(), getGestureConfigResult.getEventUUID()) && this.shoe == getGestureConfigResult.shoe && h.c(this.gestureConfigResult, getGestureConfigResult.gestureConfigResult);
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final List<AdaptGestureConfiguration> getGestureConfigResult() {
        return this.gestureConfigResult;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.gestureConfigResult.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        List<AdaptGestureConfiguration> list = this.gestureConfigResult;
        StringBuilder sbG = r0.g("GetGestureConfigResult(eventUUID=", eventUUID, ", shoe=", shoe, ", gestureConfigResult=");
        sbG.append(list);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        Iterator itD = a.d(this.gestureConfigResult, parcel);
        while (itD.hasNext()) {
            parcel.writeParcelable((Parcelable) itD.next(), i10);
        }
    }
}
