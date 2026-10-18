package l4;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: SmtaMetadataEntry.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements f4.a.b {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f9964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9965i;

    /* JADX INFO: compiled from: SmtaMetadataEntry.java */
    public class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(float f10, int i10) {
        this.f9964h = f10;
        this.f9965i = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f9964h == eVar.f9964h && this.f9965i == eVar.f9965i;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f9964h).hashCode() + 527) * 31) + this.f9965i;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("smta: captureFrameRate=");
        sbC.append(this.f9964h);
        sbC.append(", svcTemporalLayerCount=");
        sbC.append(this.f9965i);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.f9964h);
        parcel.writeInt(this.f9965i);
    }

    public e(Parcel parcel) {
        this.f9964h = parcel.readFloat();
        this.f9965i = parcel.readInt();
    }
}
