package i4;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import m5.g0;
import n3.a1;

/* JADX INFO: compiled from: VorbisComment.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class b implements f4.a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f8759i;

    /* JADX INFO: compiled from: VorbisComment.java */
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

    public b(String str, String str2) {
        this.f8758h = str;
        this.f8759i = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f8758h.equals(bVar.f8758h) && this.f8759i.equals(bVar.f8759i);
    }

    public final int hashCode() {
        return this.f8759i.hashCode() + f.c(this.f8758h, 527, 31);
    }

    @Override // f4.a.b
    public final void i(a1.a aVar) {
        String str = this.f8758h;
        Objects.requireNonNull(str);
        switch (str) {
            case "ALBUM":
                aVar.f11244c = this.f8759i;
                break;
            case "TITLE":
                aVar.f11242a = this.f8759i;
                break;
            case "DESCRIPTION":
                aVar.f11248g = this.f8759i;
                break;
            case "ALBUMARTIST":
                aVar.f11245d = this.f8759i;
                break;
            case "ARTIST":
                aVar.f11243b = this.f8759i;
                break;
        }
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("VC: ");
        sbC.append(this.f8758h);
        sbC.append("=");
        sbC.append(this.f8759i);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8758h);
        parcel.writeString(this.f8759i);
    }

    public b(Parcel parcel) {
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f8758h = string;
        this.f8759i = parcel.readString();
    }
}
