package u4;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: HlsTrackMetadataEntry.java */
/* JADX INFO: loaded from: classes.dex */
public final class o implements f4.a.b {
    public static final Parcelable.Creator<o> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f15843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f15844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List<b> f15845j;

    /* JADX INFO: compiled from: HlsTrackMetadataEntry.java */
    public class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public final o createFromParcel(Parcel parcel) {
            return new o(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final o[] newArray(int i10) {
            return new o[i10];
        }
    }

    public o(String str, String str2, List<b> list) {
        this.f15843h = str;
        this.f15844i = str2;
        this.f15845j = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return TextUtils.equals(this.f15843h, oVar.f15843h) && TextUtils.equals(this.f15844i, oVar.f15844i) && this.f15845j.equals(oVar.f15845j);
    }

    public final int hashCode() {
        String str = this.f15843h;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f15844i;
        return this.f15845j.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String strD;
        StringBuilder sbC = a0.b.c("HlsTrackMetadataEntry");
        if (this.f15843h != null) {
            StringBuilder sbC2 = a0.b.c(" [");
            sbC2.append(this.f15843h);
            sbC2.append(", ");
            strD = a1.f.d(sbC2, this.f15844i, "]");
        } else {
            strD = "";
        }
        sbC.append(strD);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f15843h);
        parcel.writeString(this.f15844i);
        int size = this.f15845j.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeParcelable(this.f15845j.get(i11), 0);
        }
    }

    public o(Parcel parcel) {
        this.f15843h = parcel.readString();
        this.f15844i = parcel.readString();
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add((b) parcel.readParcelable(b.class.getClassLoader()));
        }
        this.f15845j = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: compiled from: HlsTrackMetadataEntry.java */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f15846h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f15847i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f15848j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f15849k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final String f15850l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f15851m;

        /* JADX INFO: compiled from: HlsTrackMetadataEntry.java */
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

        public b(int i10, int i11, String str, String str2, String str3, String str4) {
            this.f15846h = i10;
            this.f15847i = i11;
            this.f15848j = str;
            this.f15849k = str2;
            this.f15850l = str3;
            this.f15851m = str4;
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
            return this.f15846h == bVar.f15846h && this.f15847i == bVar.f15847i && TextUtils.equals(this.f15848j, bVar.f15848j) && TextUtils.equals(this.f15849k, bVar.f15849k) && TextUtils.equals(this.f15850l, bVar.f15850l) && TextUtils.equals(this.f15851m, bVar.f15851m);
        }

        public final int hashCode() {
            int i10 = ((this.f15846h * 31) + this.f15847i) * 31;
            String str = this.f15848j;
            int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f15849k;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f15850l;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f15851m;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f15846h);
            parcel.writeInt(this.f15847i);
            parcel.writeString(this.f15848j);
            parcel.writeString(this.f15849k);
            parcel.writeString(this.f15850l);
            parcel.writeString(this.f15851m);
        }

        public b(Parcel parcel) {
            this.f15846h = parcel.readInt();
            this.f15847i = parcel.readInt();
            this.f15848j = parcel.readString();
            this.f15849k = parcel.readString();
            this.f15850l = parcel.readString();
            this.f15851m = parcel.readString();
        }
    }
}
