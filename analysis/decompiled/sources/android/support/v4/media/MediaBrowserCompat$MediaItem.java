package android.support.v4.media;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public class MediaBrowserCompat$MediaItem implements Parcelable {
    public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MediaDescriptionCompat f621i;

    public class a implements Parcelable.Creator<MediaBrowserCompat$MediaItem> {
        @Override // android.os.Parcelable.Creator
        public final MediaBrowserCompat$MediaItem createFromParcel(Parcel parcel) {
            return new MediaBrowserCompat$MediaItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final MediaBrowserCompat$MediaItem[] newArray(int i10) {
            return new MediaBrowserCompat$MediaItem[i10];
        }
    }

    public MediaBrowserCompat$MediaItem(Parcel parcel) {
        this.f620h = parcel.readInt();
        this.f621i = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "MediaItem{mFlags=" + this.f620h + ", mDescription=" + this.f621i + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f620h);
        this.f621i.writeToParcel(parcel, i10);
    }
}
