package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;
import p4.h;

/* JADX INFO: compiled from: AdaptCurrentAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptCurrentAnimation implements Parcelable {
    public static final Parcelable.Creator<AdaptCurrentAnimation> CREATOR = new Creator();
    private final AnimationEndingState endingState;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f5676id;
    private final AdaptRunningState runningState;
    private final int secondsRemaining;

    /* JADX INFO: compiled from: AdaptCurrentAnimation.kt */
    public enum AdaptRunningState {
        RUNNING,
        STOPPED,
        QUEUED,
        INTERRUPTED,
        UNRECOGNIZED
    }

    /* JADX INFO: compiled from: AdaptCurrentAnimation.kt */
    public enum AnimationEndingState {
        NOT_SET,
        TIMEOUT,
        CANCELED,
        BATTERY_OVERTEMP,
        CRITICAL_BATTERY,
        UNRECOGNIZED
    }

    /* JADX INFO: compiled from: AdaptCurrentAnimation.kt */
    public static final class Creator implements Parcelable.Creator<AdaptCurrentAnimation> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptCurrentAnimation createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AdaptCurrentAnimation(parcel.readInt(), parcel.readInt(), AdaptRunningState.valueOf(parcel.readString()), AnimationEndingState.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptCurrentAnimation[] newArray(int i10) {
            return new AdaptCurrentAnimation[i10];
        }
    }

    public AdaptCurrentAnimation(int i10, int i11, AdaptRunningState adaptRunningState, AnimationEndingState animationEndingState) {
        h.j(adaptRunningState, "runningState");
        h.j(animationEndingState, "endingState");
        this.f5676id = i10;
        this.secondsRemaining = i11;
        this.runningState = adaptRunningState;
        this.endingState = animationEndingState;
    }

    public static /* synthetic */ AdaptCurrentAnimation copy$default(AdaptCurrentAnimation adaptCurrentAnimation, int i10, int i11, AdaptRunningState adaptRunningState, AnimationEndingState animationEndingState, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = adaptCurrentAnimation.f5676id;
        }
        if ((i12 & 2) != 0) {
            i11 = adaptCurrentAnimation.secondsRemaining;
        }
        if ((i12 & 4) != 0) {
            adaptRunningState = adaptCurrentAnimation.runningState;
        }
        if ((i12 & 8) != 0) {
            animationEndingState = adaptCurrentAnimation.endingState;
        }
        return adaptCurrentAnimation.copy(i10, i11, adaptRunningState, animationEndingState);
    }

    public final int component1() {
        return this.f5676id;
    }

    public final int component2() {
        return this.secondsRemaining;
    }

    public final AdaptRunningState component3() {
        return this.runningState;
    }

    public final AnimationEndingState component4() {
        return this.endingState;
    }

    public final AdaptCurrentAnimation copy(int i10, int i11, AdaptRunningState adaptRunningState, AnimationEndingState animationEndingState) {
        h.j(adaptRunningState, "runningState");
        h.j(animationEndingState, "endingState");
        return new AdaptCurrentAnimation(i10, i11, adaptRunningState, animationEndingState);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptCurrentAnimation)) {
            return false;
        }
        AdaptCurrentAnimation adaptCurrentAnimation = (AdaptCurrentAnimation) obj;
        return this.f5676id == adaptCurrentAnimation.f5676id && this.secondsRemaining == adaptCurrentAnimation.secondsRemaining && this.runningState == adaptCurrentAnimation.runningState && this.endingState == adaptCurrentAnimation.endingState;
    }

    public final AnimationEndingState getEndingState() {
        return this.endingState;
    }

    public final int getId() {
        return this.f5676id;
    }

    public final AdaptRunningState getRunningState() {
        return this.runningState;
    }

    public final int getSecondsRemaining() {
        return this.secondsRemaining;
    }

    public int hashCode() {
        return this.endingState.hashCode() + ((this.runningState.hashCode() + r0.e(this.secondsRemaining, Integer.hashCode(this.f5676id) * 31, 31)) * 31);
    }

    public final boolean isRunning() {
        AdaptRunningState adaptRunningState = this.runningState;
        return (adaptRunningState == AdaptRunningState.RUNNING || adaptRunningState == AdaptRunningState.QUEUED || adaptRunningState == AdaptRunningState.INTERRUPTED) && this.secondsRemaining > 0;
    }

    public String toString() {
        int i10 = this.f5676id;
        int i11 = this.secondsRemaining;
        AdaptRunningState adaptRunningState = this.runningState;
        AnimationEndingState animationEndingState = this.endingState;
        StringBuilder sbB = s.b("AdaptCurrentAnimation(id=", i10, ", secondsRemaining=", i11, ", runningState=");
        sbB.append(adaptRunningState);
        sbB.append(", endingState=");
        sbB.append(animationEndingState);
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.f5676id);
        parcel.writeInt(this.secondsRemaining);
        parcel.writeString(this.runningState.name());
        parcel.writeString(this.endingState.name());
    }
}
