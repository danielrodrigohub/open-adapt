package fa;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
/* JADX INFO: loaded from: classes.dex */
public interface b extends Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f7123a = 0;

    /* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
    public static final class a implements b {
        public static final Parcelable.Creator<a> CREATOR = new C0128a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7124h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f7125i;

        /* JADX INFO: renamed from: fa.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
        public static final class C0128a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new a(fb.c.CREATOR.createFromParcel(parcel), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(fb.c cVar, String str) {
            p4.h.j(cVar, "currentVersion");
            p4.h.j(str, "errorMessage");
            this.f7124h = cVar;
            this.f7125i = str;
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
            return p4.h.c(this.f7124h, aVar.f7124h) && p4.h.c(this.f7125i, aVar.f7125i);
        }

        @Override // fa.b
        public final fb.c getCurrentVersion() {
            return this.f7124h;
        }

        public final int hashCode() {
            return this.f7125i.hashCode() + (this.f7124h.hashCode() * 31);
        }

        public final String toString() {
            return "ErrorOccurred(currentVersion=" + this.f7124h + ", errorMessage=" + this.f7125i + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7124h.writeToParcel(parcel, i10);
            parcel.writeString(this.f7125i);
        }
    }

    /* JADX INFO: renamed from: fa.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
    public static final class C0129b implements b {
        public static final Parcelable.Creator<C0129b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7126h;

        /* JADX INFO: renamed from: fa.b$b$a */
        /* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
        public static final class a implements Parcelable.Creator<C0129b> {
            @Override // android.os.Parcelable.Creator
            public final C0129b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new C0129b(fb.c.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final C0129b[] newArray(int i10) {
                return new C0129b[i10];
            }
        }

        public C0129b(fb.c cVar) {
            p4.h.j(cVar, "currentVersion");
            this.f7126h = cVar;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0129b) && p4.h.c(this.f7126h, ((C0129b) obj).f7126h);
        }

        @Override // fa.b
        public final fb.c getCurrentVersion() {
            return this.f7126h;
        }

        public final int hashCode() {
            return this.f7126h.hashCode();
        }

        public final String toString() {
            return "UpToDate(currentVersion=" + this.f7126h + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7126h.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
    public static final class c implements b {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final fb.c f7127h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f7128i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final fb.c f7129j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f7130k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f7131l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f7132m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f7133n;

        /* JADX INFO: compiled from: AdaptKitFirmwareStatus.kt */
        public static final class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                Parcelable.Creator<fb.c> creator = fb.c.CREATOR;
                return new c(creator.createFromParcel(parcel), parcel.readInt() != 0, creator.createFromParcel(parcel), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(fb.c cVar, boolean z10, fb.c cVar2, boolean z11, boolean z12, String str, String str2) {
            p4.h.j(cVar, "currentVersion");
            p4.h.j(cVar2, "updatedVersion");
            p4.h.j(str, "fileMd5");
            p4.h.j(str2, "urlForUpdate");
            this.f7127h = cVar;
            this.f7128i = z10;
            this.f7129j = cVar2;
            this.f7130k = z11;
            this.f7131l = z12;
            this.f7132m = str;
            this.f7133n = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return p4.h.c(this.f7127h, cVar.f7127h) && this.f7128i == cVar.f7128i && p4.h.c(this.f7129j, cVar.f7129j) && this.f7130k == cVar.f7130k && this.f7131l == cVar.f7131l && p4.h.c(this.f7132m, cVar.f7132m) && p4.h.c(this.f7133n, cVar.f7133n);
        }

        @Override // fa.b
        public final fb.c getCurrentVersion() {
            return this.f7127h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v11 */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v6, types: [int] */
        /* JADX WARN: Type inference failed for: r1v8, types: [int] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v3 */
        public final int hashCode() {
            int iHashCode = this.f7127h.hashCode() * 31;
            boolean z10 = this.f7128i;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            int iHashCode2 = (this.f7129j.hashCode() + ((iHashCode + r10) * 31)) * 31;
            boolean z11 = this.f7130k;
            ?? r11 = z11;
            if (z11) {
                r11 = 1;
            }
            int i10 = (iHashCode2 + r11) * 31;
            boolean z12 = this.f7131l;
            return this.f7133n.hashCode() + a1.f.c(this.f7132m, (i10 + (z12 ? 1 : z12)) * 31, 31);
        }

        public final String toString() {
            fb.c cVar = this.f7127h;
            boolean z10 = this.f7128i;
            fb.c cVar2 = this.f7129j;
            boolean z11 = this.f7130k;
            boolean z12 = this.f7131l;
            String str = this.f7132m;
            String str2 = this.f7133n;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("UpdateAvailable(currentVersion=");
            sb2.append(cVar);
            sb2.append(", readyForUpdate=");
            sb2.append(z10);
            sb2.append(", updatedVersion=");
            sb2.append(cVar2);
            sb2.append(", inBetaProgram=");
            sb2.append(z11);
            sb2.append(", forceUpdateRequired=");
            sb2.append(z12);
            sb2.append(", fileMd5=");
            sb2.append(str);
            sb2.append(", urlForUpdate=");
            return a1.f.d(sb2, str2, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            this.f7127h.writeToParcel(parcel, i10);
            parcel.writeInt(this.f7128i ? 1 : 0);
            this.f7129j.writeToParcel(parcel, i10);
            parcel.writeInt(this.f7130k ? 1 : 0);
            parcel.writeInt(this.f7131l ? 1 : 0);
            parcel.writeString(this.f7132m);
            parcel.writeString(this.f7133n);
        }
    }

    fb.c getCurrentVersion();
}
