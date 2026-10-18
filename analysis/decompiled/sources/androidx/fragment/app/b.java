package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: compiled from: BackStackState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f1823h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList<String> f1824i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f1825j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f1826k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1827l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f1828m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f1829n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f1830o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final CharSequence f1831p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f1832q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final CharSequence f1833r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ArrayList<String> f1834s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList<String> f1835t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f1836u;

    /* JADX INFO: compiled from: BackStackState.java */
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

    public b(androidx.fragment.app.a aVar) {
        int size = aVar.f1888a.size();
        this.f1823h = new int[size * 5];
        if (!aVar.f1894g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f1824i = new ArrayList<>(size);
        this.f1825j = new int[size];
        this.f1826k = new int[size];
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            g0.a aVar2 = aVar.f1888a.get(i10);
            int i12 = i11 + 1;
            this.f1823h[i11] = aVar2.f1904a;
            ArrayList<String> arrayList = this.f1824i;
            m mVar = aVar2.f1905b;
            arrayList.add(mVar != null ? mVar.f1970m : null);
            int[] iArr = this.f1823h;
            int i13 = i12 + 1;
            iArr[i12] = aVar2.f1906c;
            int i14 = i13 + 1;
            iArr[i13] = aVar2.f1907d;
            int i15 = i14 + 1;
            iArr[i14] = aVar2.f1908e;
            iArr[i15] = aVar2.f1909f;
            this.f1825j[i10] = aVar2.f1910g.ordinal();
            this.f1826k[i10] = aVar2.f1911h.ordinal();
            i10++;
            i11 = i15 + 1;
        }
        this.f1827l = aVar.f1893f;
        this.f1828m = aVar.f1896i;
        this.f1829n = aVar.f1815s;
        this.f1830o = aVar.f1897j;
        this.f1831p = aVar.f1898k;
        this.f1832q = aVar.f1899l;
        this.f1833r = aVar.f1900m;
        this.f1834s = aVar.f1901n;
        this.f1835t = aVar.f1902o;
        this.f1836u = aVar.f1903p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f1823h);
        parcel.writeStringList(this.f1824i);
        parcel.writeIntArray(this.f1825j);
        parcel.writeIntArray(this.f1826k);
        parcel.writeInt(this.f1827l);
        parcel.writeString(this.f1828m);
        parcel.writeInt(this.f1829n);
        parcel.writeInt(this.f1830o);
        TextUtils.writeToParcel(this.f1831p, parcel, 0);
        parcel.writeInt(this.f1832q);
        TextUtils.writeToParcel(this.f1833r, parcel, 0);
        parcel.writeStringList(this.f1834s);
        parcel.writeStringList(this.f1835t);
        parcel.writeInt(this.f1836u ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f1823h = parcel.createIntArray();
        this.f1824i = parcel.createStringArrayList();
        this.f1825j = parcel.createIntArray();
        this.f1826k = parcel.createIntArray();
        this.f1827l = parcel.readInt();
        this.f1828m = parcel.readString();
        this.f1829n = parcel.readInt();
        this.f1830o = parcel.readInt();
        this.f1831p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1832q = parcel.readInt();
        this.f1833r = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1834s = parcel.createStringArrayList();
        this.f1835t = parcel.createStringArrayList();
        this.f1836u = parcel.readInt() != 0;
    }
}
