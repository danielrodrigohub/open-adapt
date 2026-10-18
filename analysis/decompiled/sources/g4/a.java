package g4;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: compiled from: AppInfoTable.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f4.a.b {
    public static final Parcelable.Creator<a> CREATOR = new C0145a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f7630i;

    /* JADX INFO: renamed from: g4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AppInfoTable.java */
    public class C0145a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            Objects.requireNonNull(string);
            return new a(parcel.readInt(), string);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(int i10, String str) {
        this.f7629h = i10;
        this.f7630i = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Ait(controlCode=");
        sbC.append(this.f7629h);
        sbC.append(",url=");
        return f.d(sbC, this.f7630i, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f7630i);
        parcel.writeInt(this.f7629h);
    }
}
