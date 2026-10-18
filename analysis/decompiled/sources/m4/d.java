package m4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: SpliceInsertCommand.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends m4.b {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f10330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f10331j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f10332k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f10333l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f10334m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f10335n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<b> f10336o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f10337p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f10338q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f10339r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f10340s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f10341t;

    /* JADX INFO: compiled from: SpliceInsertCommand.java */
    public class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List<b> list, boolean z14, long j13, int i10, int i11, int i12) {
        this.f10329h = j10;
        this.f10330i = z10;
        this.f10331j = z11;
        this.f10332k = z12;
        this.f10333l = z13;
        this.f10334m = j11;
        this.f10335n = j12;
        this.f10336o = Collections.unmodifiableList(list);
        this.f10337p = z14;
        this.f10338q = j13;
        this.f10339r = i10;
        this.f10340s = i11;
        this.f10341t = i12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f10329h);
        parcel.writeByte(this.f10330i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f10331j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f10332k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f10333l ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f10334m);
        parcel.writeLong(this.f10335n);
        int size = this.f10336o.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = this.f10336o.get(i11);
            parcel.writeInt(bVar.f10342a);
            parcel.writeLong(bVar.f10343b);
            parcel.writeLong(bVar.f10344c);
        }
        parcel.writeByte(this.f10337p ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f10338q);
        parcel.writeInt(this.f10339r);
        parcel.writeInt(this.f10340s);
        parcel.writeInt(this.f10341t);
    }

    /* JADX INFO: compiled from: SpliceInsertCommand.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10342a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f10344c;

        public b(int i10, long j10, long j11) {
            this.f10342a = i10;
            this.f10343b = j10;
            this.f10344c = j11;
        }

        public b(int i10, long j10, long j11, a aVar) {
            this.f10342a = i10;
            this.f10343b = j10;
            this.f10344c = j11;
        }
    }

    public d(Parcel parcel) {
        this.f10329h = parcel.readLong();
        this.f10330i = parcel.readByte() == 1;
        this.f10331j = parcel.readByte() == 1;
        this.f10332k = parcel.readByte() == 1;
        this.f10333l = parcel.readByte() == 1;
        this.f10334m = parcel.readLong();
        this.f10335n = parcel.readLong();
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(new b(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.f10336o = Collections.unmodifiableList(arrayList);
        this.f10337p = parcel.readByte() == 1;
        this.f10338q = parcel.readLong();
        this.f10339r = parcel.readInt();
        this.f10340s = parcel.readInt();
        this.f10341t = parcel.readInt();
    }
}
