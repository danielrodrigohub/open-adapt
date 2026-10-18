package m4;

import android.os.Parcel;
import android.os.Parcelable;
import m5.w;

/* JADX INFO: compiled from: TimeSignalCommand.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends b {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f10360i;

    /* JADX INFO: compiled from: TimeSignalCommand.java */
    public class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            return new g(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(long j10, long j11) {
        this.f10359h = j10;
        this.f10360i = j11;
    }

    public static long a(w wVar, long j10) {
        long jT = wVar.t();
        if ((128 & jT) != 0) {
            return 8589934591L & ((((jT & 1) << 32) | wVar.u()) + j10);
        }
        return -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f10359h);
        parcel.writeLong(this.f10360i);
    }

    public g(long j10, long j11, a aVar) {
        this.f10359h = j10;
        this.f10360i = j11;
    }
}
