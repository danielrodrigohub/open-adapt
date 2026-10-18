package va;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptKitCheckFirmwareUpdate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0297a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f16961h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f16962i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f16963j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f16964k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16965l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f16966m;

    /* JADX INFO: renamed from: va.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitCheckFirmwareUpdate.kt */
    public static final class C0297a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new a(parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a() {
        this(63);
    }

    public a(boolean z10, String str, boolean z11, boolean z12, String str2, String str3) {
        this.f16961h = z10;
        this.f16962i = str;
        this.f16963j = z11;
        this.f16964k = z12;
        this.f16965l = str2;
        this.f16966m = str3;
        if (z10) {
            if (str == null) {
                throw new IllegalStateException("Version cannot be null if there is an update present");
            }
            if (str2 == null) {
                throw new IllegalStateException("md5 cannot be null if there is an update present");
            }
            if (str3 == null) {
                throw new IllegalStateException("url cannot be null if there is an update present");
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f16961h == aVar.f16961h && h.c(this.f16962i, aVar.f16962i) && this.f16963j == aVar.f16963j && this.f16964k == aVar.f16964k && h.c(this.f16965l, aVar.f16965l) && h.c(this.f16966m, aVar.f16966m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final int hashCode() {
        boolean z10 = this.f16961h;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        String str = this.f16962i;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        boolean z11 = this.f16963j;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i11 = (iHashCode + r11) * 31;
        boolean z12 = this.f16964k;
        int i12 = (i11 + (z12 ? 1 : z12)) * 31;
        String str2 = this.f16965l;
        int iHashCode2 = (i12 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f16966m;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "AdaptKitCheckFirmwareUpdate(update=" + this.f16961h + ", version=" + this.f16962i + ", beta=" + this.f16963j + ", forceUpdate=" + this.f16964k + ", md5=" + this.f16965l + ", url=" + this.f16966m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.f16961h ? 1 : 0);
        parcel.writeString(this.f16962i);
        parcel.writeInt(this.f16963j ? 1 : 0);
        parcel.writeInt(this.f16964k ? 1 : 0);
        parcel.writeString(this.f16965l);
        parcel.writeString(this.f16966m);
    }

    public /* synthetic */ a(int i10) {
        this(false, null, false, false, null, null);
    }
}
