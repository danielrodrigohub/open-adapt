package com.nike.adapt.adk;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import ba.g;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import i8.d;
import p4.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class StopAnimationNotificationResult extends DeviceControllerResult {
    public static final Parcelable.Creator<StopAnimationNotificationResult> CREATOR = new Creator();
    private final g animation;
    private final AdaptCurrentAnimation.AnimationEndingState endingState;
    private final d eventUUID;
    private final Shoe shoe;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Creator implements Parcelable.Creator<StopAnimationNotificationResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final StopAnimationNotificationResult createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new StopAnimationNotificationResult(d.CREATOR.createFromParcel(parcel), Shoe.valueOf(parcel.readString()), (g) parcel.readParcelable(StopAnimationNotificationResult.class.getClassLoader()), AdaptCurrentAnimation.AnimationEndingState.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final StopAnimationNotificationResult[] newArray(int i10) {
            return new StopAnimationNotificationResult[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StopAnimationNotificationResult(d dVar, Shoe shoe, g gVar, AdaptCurrentAnimation.AnimationEndingState animationEndingState) {
        super(null);
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(gVar, "animation");
        h.j(animationEndingState, "endingState");
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.animation = gVar;
        this.endingState = animationEndingState;
    }

    public static /* synthetic */ StopAnimationNotificationResult copy$default(StopAnimationNotificationResult stopAnimationNotificationResult, d dVar, Shoe shoe, g gVar, AdaptCurrentAnimation.AnimationEndingState animationEndingState, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dVar = stopAnimationNotificationResult.getEventUUID();
        }
        if ((i10 & 2) != 0) {
            shoe = stopAnimationNotificationResult.shoe;
        }
        if ((i10 & 4) != 0) {
            gVar = stopAnimationNotificationResult.animation;
        }
        if ((i10 & 8) != 0) {
            animationEndingState = stopAnimationNotificationResult.endingState;
        }
        return stopAnimationNotificationResult.copy(dVar, shoe, gVar, animationEndingState);
    }

    public final d component1() {
        return getEventUUID();
    }

    public final Shoe component2() {
        return this.shoe;
    }

    public final g component3() {
        return this.animation;
    }

    public final AdaptCurrentAnimation.AnimationEndingState component4() {
        return this.endingState;
    }

    public final StopAnimationNotificationResult copy(d dVar, Shoe shoe, g gVar, AdaptCurrentAnimation.AnimationEndingState animationEndingState) {
        h.j(dVar, "eventUUID");
        h.j(shoe, "shoe");
        h.j(gVar, "animation");
        h.j(animationEndingState, "endingState");
        return new StopAnimationNotificationResult(dVar, shoe, gVar, animationEndingState);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StopAnimationNotificationResult)) {
            return false;
        }
        StopAnimationNotificationResult stopAnimationNotificationResult = (StopAnimationNotificationResult) obj;
        return h.c(getEventUUID(), stopAnimationNotificationResult.getEventUUID()) && this.shoe == stopAnimationNotificationResult.shoe && h.c(this.animation, stopAnimationNotificationResult.animation) && this.endingState == stopAnimationNotificationResult.endingState;
    }

    public final g getAnimation() {
        return this.animation;
    }

    public final AdaptCurrentAnimation.AnimationEndingState getEndingState() {
        return this.endingState;
    }

    @Override // com.nike.adapt.adk.DeviceControllerResult
    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }

    public int hashCode() {
        return this.endingState.hashCode() + ((this.animation.hashCode() + f.b(this.shoe, getEventUUID().hashCode() * 31, 31)) * 31);
    }

    public String toString() {
        d eventUUID = getEventUUID();
        Shoe shoe = this.shoe;
        g gVar = this.animation;
        AdaptCurrentAnimation.AnimationEndingState animationEndingState = this.endingState;
        StringBuilder sbG = r0.g("StopAnimationNotificationResult(eventUUID=", eventUUID, ", shoe=", shoe, ", animation=");
        sbG.append(gVar);
        sbG.append(", endingState=");
        sbG.append(animationEndingState);
        sbG.append(")");
        return sbG.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        this.eventUUID.writeToParcel(parcel, i10);
        parcel.writeString(this.shoe.name());
        parcel.writeParcelable(this.animation, i10);
        parcel.writeString(this.endingState.name());
    }
}
