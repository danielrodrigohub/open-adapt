package android.support.v4.media;

import a0.b;
import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f633i;

    public class a implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        public final RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        public final RatingCompat[] newArray(int i10) {
            return new RatingCompat[i10];
        }
    }

    public RatingCompat(int i10, float f10) {
        this.f632h = i10;
        this.f633i = f10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f632h;
    }

    public final String toString() {
        StringBuilder sbC = b.c("Rating:style=");
        sbC.append(this.f632h);
        sbC.append(" rating=");
        float f10 = this.f633i;
        sbC.append(f10 < 0.0f ? "unrated" : String.valueOf(f10));
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f632h);
        parcel.writeFloat(this.f633i);
    }
}
