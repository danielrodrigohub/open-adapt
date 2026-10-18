package j4;

import a4.g;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.Map;
import m5.g0;
import m5.p;
import n3.a1;

/* JADX INFO: compiled from: IcyHeaders.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f4.a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9265i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9266j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f9267k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f9268l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9269m;

    /* JADX INFO: compiled from: IcyHeaders.java */
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

    public b(int i10, String str, String str2, String str3, boolean z10, int i11) {
        m5.a.a(i11 == -1 || i11 > 0);
        this.f9264h = i10;
        this.f9265i = str;
        this.f9266j = str2;
        this.f9267k = str3;
        this.f9268l = z10;
        this.f9269m = i11;
    }

    public static b a(Map<String, List<String>> map) {
        int i10;
        boolean z10;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i11;
        List<String> list = map.get("icy-br");
        int i12 = -1;
        boolean z11 = true;
        if (list != null) {
            String str4 = list.get(0);
            try {
                i11 = Integer.parseInt(str4) * 1000;
                if (i11 > 0) {
                    z10 = true;
                } else {
                    try {
                        p.g("IcyHeaders", "Invalid bitrate: " + str4);
                        i11 = -1;
                    } catch (NumberFormatException unused) {
                        g.f("Invalid bitrate header: ", str4, "IcyHeaders");
                    }
                    z10 = false;
                }
            } catch (NumberFormatException unused2) {
                i11 = -1;
            }
            i10 = i11;
        } else {
            i10 = -1;
            z10 = false;
        }
        List<String> list2 = map.get("icy-genre");
        if (list2 != null) {
            str = list2.get(0);
            z10 = true;
        } else {
            str = null;
        }
        List<String> list3 = map.get("icy-name");
        if (list3 != null) {
            str2 = list3.get(0);
            z10 = true;
        } else {
            str2 = null;
        }
        List<String> list4 = map.get("icy-url");
        if (list4 != null) {
            str3 = list4.get(0);
            z10 = true;
        } else {
            str3 = null;
        }
        List<String> list5 = map.get("icy-pub");
        if (list5 != null) {
            zEquals = list5.get(0).equals("1");
            z10 = true;
        } else {
            zEquals = false;
        }
        List<String> list6 = map.get("icy-metaint");
        if (list6 != null) {
            String str5 = list6.get(0);
            try {
                int i13 = Integer.parseInt(str5);
                if (i13 > 0) {
                    i12 = i13;
                } else {
                    try {
                        p.g("IcyHeaders", "Invalid metadata interval: " + str5);
                        z11 = z10;
                    } catch (NumberFormatException unused3) {
                        i12 = i13;
                        g.f("Invalid metadata interval: ", str5, "IcyHeaders");
                    }
                }
                z10 = z11;
            } catch (NumberFormatException unused4) {
            }
        }
        if (z10) {
            return new b(i10, str, str2, str3, zEquals, i12);
        }
        return null;
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
        return this.f9264h == bVar.f9264h && g0.a(this.f9265i, bVar.f9265i) && g0.a(this.f9266j, bVar.f9266j) && g0.a(this.f9267k, bVar.f9267k) && this.f9268l == bVar.f9268l && this.f9269m == bVar.f9269m;
    }

    public final int hashCode() {
        int i10 = (527 + this.f9264h) * 31;
        String str = this.f9265i;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9266j;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f9267k;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f9268l ? 1 : 0)) * 31) + this.f9269m;
    }

    @Override // f4.a.b
    public final void i(a1.a aVar) {
        String str = this.f9266j;
        if (str != null) {
            aVar.D = str;
        }
        String str2 = this.f9265i;
        if (str2 != null) {
            aVar.B = str2;
        }
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("IcyHeaders: name=\"");
        sbC.append(this.f9266j);
        sbC.append("\", genre=\"");
        sbC.append(this.f9265i);
        sbC.append("\", bitrate=");
        sbC.append(this.f9264h);
        sbC.append(", metadataInterval=");
        sbC.append(this.f9269m);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f9264h);
        parcel.writeString(this.f9265i);
        parcel.writeString(this.f9266j);
        parcel.writeString(this.f9267k);
        boolean z10 = this.f9268l;
        int i11 = g0.f10384a;
        parcel.writeInt(z10 ? 1 : 0);
        parcel.writeInt(this.f9269m);
    }

    public b(Parcel parcel) {
        this.f9264h = parcel.readInt();
        this.f9265i = parcel.readString();
        this.f9266j = parcel.readString();
        this.f9267k = parcel.readString();
        int i10 = g0.f10384a;
        this.f9268l = parcel.readInt() != 0;
        this.f9269m = parcel.readInt();
    }
}
