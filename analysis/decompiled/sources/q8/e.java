package q8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.adk.model.Battery;

/* JADX INFO: compiled from: BatteryEventAnimator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f14159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Battery f14160i;

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    public static final class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new e(parcel.readInt() != 0, Battery.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(boolean z10, Battery battery) {
        p4.h.j(battery, "battery");
        this.f14159h = z10;
        this.f14160i = battery;
    }

    public final float a() {
        return this.f14160i.getPercent() * 0.01f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f14159h == eVar.f14159h && p4.h.c(this.f14160i, eVar.f14160i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final int hashCode() {
        boolean z10 = this.f14159h;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return this.f14160i.hashCode() + (r10 * 31);
    }

    public final String toString() {
        return "BatteryInfoState(isRightShoe=" + this.f14159h + ", battery=" + this.f14160i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f14159h ? 1 : 0);
        this.f14160i.writeToParcel(parcel, i10);
    }
}
