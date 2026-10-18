package da;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitOtherApplicationConnection.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f6157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6158i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f6159j;

    /* JADX INFO: compiled from: AdaptKitOtherApplicationConnection.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new h(f.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    public h(f fVar, String str, String str2) {
        p4.h.j(fVar, "currentConnection");
        p4.h.j(str, "applicationId");
        p4.h.j(str2, "receiverActionToken");
        this.f6157h = fVar;
        this.f6158i = str;
        this.f6159j = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return p4.h.c(this.f6157h, hVar.f6157h) && p4.h.c(this.f6158i, hVar.f6158i) && p4.h.c(this.f6159j, hVar.f6159j);
    }

    public final int hashCode() {
        return this.f6159j.hashCode() + a1.f.c(this.f6158i, this.f6157h.hashCode() * 31, 31);
    }

    public final String toString() {
        f fVar = this.f6157h;
        String str = this.f6158i;
        String str2 = this.f6159j;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdaptKitOtherApplicationConnection(currentConnection=");
        sb2.append(fVar);
        sb2.append(", applicationId=");
        sb2.append(str);
        sb2.append(", receiverActionToken=");
        return a1.f.d(sb2, str2, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f6157h.writeToParcel(parcel, i10);
        parcel.writeString(this.f6158i);
        parcel.writeString(this.f6159j);
    }
}
