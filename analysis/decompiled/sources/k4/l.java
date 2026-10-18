package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import m5.g0;
import n3.a1;

/* JADX INFO: compiled from: TextInformationFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends h {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9687i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9688j;

    /* JADX INFO: compiled from: TextInformationFrame.java */
    public class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public final l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l(String str, String str2, String str3) {
        super(str);
        this.f9687i = str2;
        this.f9688j = str3;
    }

    public static List<Integer> a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return g0.a(this.f9676h, lVar.f9676h) && g0.a(this.f9687i, lVar.f9687i) && g0.a(this.f9688j, lVar.f9688j);
    }

    public final int hashCode() {
        int iC = a1.f.c(this.f9676h, 527, 31);
        String str = this.f9687i;
        int iHashCode = (iC + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9688j;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // f4.a.b
    public final void i(a1.a aVar) {
        byte b10;
        String str = this.f9676h;
        Objects.requireNonNull(str);
        switch (str) {
            case "TAL":
                b10 = 0;
                break;
            case "TCM":
                b10 = 1;
                break;
            case "TDA":
                b10 = 2;
                break;
            case "TP1":
                b10 = 3;
                break;
            case "TP2":
                b10 = 4;
                break;
            case "TP3":
                b10 = 5;
                break;
            case "TRK":
                b10 = 6;
                break;
            case "TT2":
                b10 = 7;
                break;
            case "TXT":
                b10 = 8;
                break;
            case "TYE":
                b10 = 9;
                break;
            case "TALB":
                b10 = 10;
                break;
            case "TCOM":
                b10 = 11;
                break;
            case "TDAT":
                b10 = 12;
                break;
            case "TDRC":
                b10 = 13;
                break;
            case "TDRL":
                b10 = 14;
                break;
            case "TEXT":
                b10 = 15;
                break;
            case "TIT2":
                b10 = 16;
                break;
            case "TPE1":
                b10 = 17;
                break;
            case "TPE2":
                b10 = 18;
                break;
            case "TPE3":
                b10 = 19;
                break;
            case "TRCK":
                b10 = 20;
                break;
            case "TYER":
                b10 = 21;
                break;
            default:
                b10 = -1;
                break;
        }
        try {
            switch (b10) {
                case 0:
                case 10:
                    aVar.f11244c = this.f9688j;
                    break;
                case 1:
                case 11:
                    aVar.f11265x = this.f9688j;
                    break;
                case 2:
                case 12:
                    int i10 = Integer.parseInt(this.f9688j.substring(2, 4));
                    int i11 = Integer.parseInt(this.f9688j.substring(0, 2));
                    aVar.f11259r = Integer.valueOf(i10);
                    aVar.f11260s = Integer.valueOf(i11);
                    break;
                case 3:
                case 17:
                    aVar.f11243b = this.f9688j;
                    break;
                case 4:
                case 18:
                    aVar.f11245d = this.f9688j;
                    break;
                case 5:
                case 19:
                    aVar.f11266y = this.f9688j;
                    break;
                case 6:
                case 20:
                    String str2 = this.f9688j;
                    int i12 = g0.f10384a;
                    String[] strArrSplit = str2.split("/", -1);
                    int i13 = Integer.parseInt(strArrSplit[0]);
                    Integer numValueOf = strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null;
                    aVar.f11254m = Integer.valueOf(i13);
                    aVar.f11255n = numValueOf;
                    break;
                case 7:
                case 16:
                    aVar.f11242a = this.f9688j;
                    break;
                case 8:
                case 15:
                    aVar.f11264w = this.f9688j;
                    break;
                case 9:
                case 21:
                    aVar.f11258q = Integer.valueOf(Integer.parseInt(this.f9688j));
                    break;
                case 13:
                    ArrayList arrayList = (ArrayList) a(this.f9688j);
                    int size = arrayList.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                aVar.f11260s = (Integer) arrayList.get(2);
                            }
                        }
                        aVar.f11259r = (Integer) arrayList.get(1);
                    }
                    aVar.f11258q = (Integer) arrayList.get(0);
                    break;
                case 14:
                    ArrayList arrayList2 = (ArrayList) a(this.f9688j);
                    int size2 = arrayList2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                aVar.f11263v = (Integer) arrayList2.get(2);
                            }
                        }
                        aVar.f11262u = (Integer) arrayList2.get(1);
                    }
                    aVar.f11261t = (Integer) arrayList2.get(0);
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": description=" + this.f9687i + ": value=" + this.f9688j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9676h);
        parcel.writeString(this.f9687i);
        parcel.writeString(this.f9688j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public l(Parcel parcel) {
        String string = parcel.readString();
        int i10 = g0.f10384a;
        super(string);
        this.f9687i = parcel.readString();
        this.f9688j = parcel.readString();
    }
}
