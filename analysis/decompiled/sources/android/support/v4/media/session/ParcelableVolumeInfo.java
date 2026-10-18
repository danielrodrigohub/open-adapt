package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f641i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f642j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f643k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f644l;

    public class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ParcelableVolumeInfo[] newArray(int i10) {
            return new ParcelableVolumeInfo[i10];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f640h = parcel.readInt();
        this.f642j = parcel.readInt();
        this.f643k = parcel.readInt();
        this.f644l = parcel.readInt();
        this.f641i = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f640h);
        parcel.writeInt(this.f642j);
        parcel.writeInt(this.f643k);
        parcel.writeInt(this.f644l);
        parcel.writeInt(this.f641i);
    }
}
