package m4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: SpliceScheduleCommand.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends m4.b {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<c> f10345h;

    /* JADX INFO: compiled from: SpliceScheduleCommand.java */
    public class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(List<c> list) {
        this.f10345h = Collections.unmodifiableList(list);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int size = this.f10345h.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            c cVar = this.f10345h.get(i11);
            parcel.writeLong(cVar.f10348a);
            parcel.writeByte(cVar.f10349b ? (byte) 1 : (byte) 0);
            parcel.writeByte(cVar.f10350c ? (byte) 1 : (byte) 0);
            parcel.writeByte(cVar.f10351d ? (byte) 1 : (byte) 0);
            int size2 = cVar.f10353f.size();
            parcel.writeInt(size2);
            for (int i12 = 0; i12 < size2; i12++) {
                b bVar = cVar.f10353f.get(i12);
                parcel.writeInt(bVar.f10346a);
                parcel.writeLong(bVar.f10347b);
            }
            parcel.writeLong(cVar.f10352e);
            parcel.writeByte(cVar.f10354g ? (byte) 1 : (byte) 0);
            parcel.writeLong(cVar.f10355h);
            parcel.writeInt(cVar.f10356i);
            parcel.writeInt(cVar.f10357j);
            parcel.writeInt(cVar.f10358k);
        }
    }

    /* JADX INFO: compiled from: SpliceScheduleCommand.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10347b;

        public b(int i10, long j10) {
            this.f10346a = i10;
            this.f10347b = j10;
        }

        public b(int i10, long j10, a aVar) {
            this.f10346a = i10;
            this.f10347b = j10;
        }
    }

    public f(Parcel parcel) {
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(new c(parcel));
        }
        this.f10345h = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: compiled from: SpliceScheduleCommand.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f10348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f10349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f10350c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f10351d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f10352e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<b> f10353f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f10354g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f10355h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f10356i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f10357j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f10358k;

        public c(long j10, boolean z10, boolean z11, boolean z12, List<b> list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
            this.f10348a = j10;
            this.f10349b = z10;
            this.f10350c = z11;
            this.f10351d = z12;
            this.f10353f = Collections.unmodifiableList(list);
            this.f10352e = j11;
            this.f10354g = z13;
            this.f10355h = j12;
            this.f10356i = i10;
            this.f10357j = i11;
            this.f10358k = i12;
        }

        public c(Parcel parcel) {
            this.f10348a = parcel.readLong();
            this.f10349b = parcel.readByte() == 1;
            this.f10350c = parcel.readByte() == 1;
            this.f10351d = parcel.readByte() == 1;
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new b(parcel.readInt(), parcel.readLong()));
            }
            this.f10353f = Collections.unmodifiableList(arrayList);
            this.f10352e = parcel.readLong();
            this.f10354g = parcel.readByte() == 1;
            this.f10355h = parcel.readLong();
            this.f10356i = parcel.readInt();
            this.f10357j = parcel.readInt();
            this.f10358k = parcel.readInt();
        }
    }
}
