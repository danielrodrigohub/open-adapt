package l4;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: MotionPhotoMetadata.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f4.a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f9953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f9954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f9955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f9956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f9957l;

    /* JADX INFO: compiled from: MotionPhotoMetadata.java */
    public class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(long j10, long j11, long j12, long j13, long j14) {
        this.f9953h = j10;
        this.f9954i = j11;
        this.f9955j = j12;
        this.f9956k = j13;
        this.f9957l = j14;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f9953h == bVar.f9953h && this.f9954i == bVar.f9954i && this.f9955j == bVar.f9955j && this.f9956k == bVar.f9956k && this.f9957l == bVar.f9957l;
    }

    public final int hashCode() {
        return f1.b.i(this.f9957l) + ((f1.b.i(this.f9956k) + ((f1.b.i(this.f9955j) + ((f1.b.i(this.f9954i) + ((f1.b.i(this.f9953h) + 527) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Motion photo metadata: photoStartPosition=");
        sbC.append(this.f9953h);
        sbC.append(", photoSize=");
        sbC.append(this.f9954i);
        sbC.append(", photoPresentationTimestampUs=");
        sbC.append(this.f9955j);
        sbC.append(", videoStartPosition=");
        sbC.append(this.f9956k);
        sbC.append(", videoSize=");
        sbC.append(this.f9957l);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f9953h);
        parcel.writeLong(this.f9954i);
        parcel.writeLong(this.f9955j);
        parcel.writeLong(this.f9956k);
        parcel.writeLong(this.f9957l);
    }

    public b(Parcel parcel) {
        this.f9953h = parcel.readLong();
        this.f9954i = parcel.readLong();
        this.f9955j = parcel.readLong();
        this.f9956k = parcel.readLong();
        this.f9957l = parcel.readLong();
    }
}
