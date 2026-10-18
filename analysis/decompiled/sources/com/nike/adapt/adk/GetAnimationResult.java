package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GetAnimationResult extends DeviceControllerResult {
    public static final Parcelable.Creator<GetAnimationResult> CREATOR = new Creator();
    private final AdaptCurrentAnimation animation;
    private final d eventUUID;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<GetAnimationResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetAnimationResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new GetAnimationResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), AdaptCurrentAnimation.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GetAnimationResult[] newArray(int i10) {
            return new GetAnimationResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAnimationResult(d dVar, Shoe shoe, AdaptCurrentAnimation adaptCurrentAnimation) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptCurrentAnimation, "animation");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.animation = adaptCurrentAnimation;
    }

    public static /* synthetic */ GetAnimationResult copy$default(GetAnimationResult getAnimationResult, d dVar, Shoe shoe, AdaptCurrentAnimation adaptCurrentAnimation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = getAnimationResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = getAnimationResult.shoe;
        }
        if ((i10 & 4) != 0) {
            adaptCurrentAnimation = getAnimationResult.animation;
        }
        return getAnimationResult.copy(dVar, shoe, adaptCurrentAnimation);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final AdaptCurrentAnimation component3() {
        return this.animation;
    }

    public final GetAnimationResult copy(d dVar, Shoe shoe, AdaptCurrentAnimation adaptCurrentAnimation) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(adaptCurrentAnimation, "animation");
        return new GetAnimationResult(dVar, shoe, adaptCurrentAnimation);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetAnimationResult)) {
            return false;
        }
        GetAnimationResult getAnimationResult = (GetAnimationResult) obj;
        return h.c(getEventUUID(), getAnimationResult.getEventUUID()) && this.shoe == getAnimationResult.shoe && h.c(this.animation, getAnimationResult.animation);
    }

    public final AdaptCurrentAnimation getAnimation() {
        return this.animation;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.animation.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        AdaptCurrentAnimation adaptCurrentAnimation = this.animation;
        StringBuilder sbG = r0.g("GetAnimationResult(eventUUID=", eventUUID, ", shoe=", shoe, ", animation=");
        sbG.append(adaptCurrentAnimation);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        this.animation.writeToParcel(parcel, i10);
    }
}
