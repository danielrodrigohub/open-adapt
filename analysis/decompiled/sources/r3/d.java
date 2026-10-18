package r3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;
import m5.g0;

/* JADX INFO: compiled from: DrmInitData.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Comparator<b>, Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b[] f14479h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14480i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f14481j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f14482k;

    /* JADX INFO: compiled from: DrmInitData.java */
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

    public d(String str, boolean z10, b... bVarArr) {
        this.f14481j = str;
        bVarArr = z10 ? (b[]) bVarArr.clone() : bVarArr;
        this.f14479h = bVarArr;
        this.f14482k = bVarArr.length;
        Arrays.sort(bVarArr, this);
    }

    public final d a(String str) {
        return g0.a(this.f14481j, str) ? this : new d(str, false, this.f14479h);
    }

    @Override // java.util.Comparator
    public final int compare(b bVar, b bVar2) {
        b bVar3 = bVar;
        b bVar4 = bVar2;
        UUID uuid = n3.i.f11425a;
        if (uuid.equals(bVar3.f14484i)) {
            return uuid.equals(bVar4.f14484i) ? 0 : 1;
        }
        return bVar3.f14484i.compareTo(bVar4.f14484i);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return g0.a(this.f14481j, dVar.f14481j) && Arrays.equals(this.f14479h, dVar.f14479h);
    }

    public final int hashCode() {
        if (this.f14480i == 0) {
            String str = this.f14481j;
            this.f14480i = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f14479h);
        }
        return this.f14480i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f14481j);
        parcel.writeTypedArray(this.f14479h, 0);
    }

    /* JADX INFO: compiled from: DrmInitData.java */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14483h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final UUID f14484i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f14485j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f14486k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final byte[] f14487l;

        /* JADX INFO: compiled from: DrmInitData.java */
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

        public b(UUID uuid, String str, String str2, byte[] bArr) {
            Objects.requireNonNull(uuid);
            this.f14484i = uuid;
            this.f14485j = str;
            Objects.requireNonNull(str2);
            this.f14486k = str2;
            this.f14487l = bArr;
        }

        public final boolean a() {
            return this.f14487l != null;
        }

        public final boolean b(UUID uuid) {
            return n3.i.f11425a.equals(this.f14484i) || uuid.equals(this.f14484i);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            return g0.a(this.f14485j, bVar.f14485j) && g0.a(this.f14486k, bVar.f14486k) && g0.a(this.f14484i, bVar.f14484i) && Arrays.equals(this.f14487l, bVar.f14487l);
        }

        public final int hashCode() {
            if (this.f14483h == 0) {
                int iHashCode = this.f14484i.hashCode() * 31;
                String str = this.f14485j;
                this.f14483h = Arrays.hashCode(this.f14487l) + a1.f.c(this.f14486k, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
            }
            return this.f14483h;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f14484i.getMostSignificantBits());
            parcel.writeLong(this.f14484i.getLeastSignificantBits());
            parcel.writeString(this.f14485j);
            parcel.writeString(this.f14486k);
            parcel.writeByteArray(this.f14487l);
        }

        public b(Parcel parcel) {
            this.f14484i = new UUID(parcel.readLong(), parcel.readLong());
            this.f14485j = parcel.readString();
            String string = parcel.readString();
            int i10 = g0.f10384a;
            this.f14486k = string;
            this.f14487l = parcel.createByteArray();
        }
    }

    public d(Parcel parcel) {
        this.f14481j = parcel.readString();
        b[] bVarArr = (b[]) parcel.createTypedArray(b.CREATOR);
        int i10 = g0.f10384a;
        this.f14479h = bVarArr;
        this.f14482k = bVarArr.length;
    }
}
