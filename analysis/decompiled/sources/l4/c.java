package l4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import m5.g0;

/* JADX INFO: compiled from: SlowMotionData.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements f4.a.b {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<b> f9958h;

    /* JADX INFO: compiled from: SlowMotionData.java */
    public class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, b.class.getClassLoader());
            return new c(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    /* JADX INFO: compiled from: SlowMotionData.java */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f9959h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f9960i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f9961j;

        /* JADX INFO: compiled from: SlowMotionData.java */
        public class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(long j10, long j11, int i10) {
            m5.a.a(j10 < j11);
            this.f9959h = j10;
            this.f9960i = j11;
            this.f9961j = i10;
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
            return this.f9959h == bVar.f9959h && this.f9960i == bVar.f9960i && this.f9961j == bVar.f9961j;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.f9959h), Long.valueOf(this.f9960i), Integer.valueOf(this.f9961j)});
        }

        public final String toString() {
            return g0.m("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f9959h), Long.valueOf(this.f9960i), Integer.valueOf(this.f9961j));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f9959h);
            parcel.writeLong(this.f9960i);
            parcel.writeInt(this.f9961j);
        }
    }

    public c(List<b> list) {
        this.f9958h = list;
        boolean z10 = false;
        if (!list.isEmpty()) {
            long j10 = list.get(0).f9960i;
            for (int i10 = 1; i10 < list.size(); i10++) {
                if (list.get(i10).f9959h < j10) {
                    z10 = true;
                    break;
                }
                j10 = list.get(i10).f9960i;
            }
        }
        m5.a.a(!z10);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f9958h.equals(((c) obj).f9958h);
    }

    public final int hashCode() {
        return this.f9958h.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("SlowMotion: segments=");
        sbC.append(this.f9958h);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(this.f9958h);
    }
}
