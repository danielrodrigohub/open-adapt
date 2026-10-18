package ka;

import android.os.Parcel;
import android.os.Parcelable;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.UUID;
import p4.h;

/* JADX INFO: compiled from: ScanUUID.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9764h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UUID f9765i;

    /* JADX INFO: compiled from: ScanUUID.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new d(parcel.readString(), (UUID) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, UUID uuid) {
        h.j(str, "tag");
        h.j(uuid, AnalyticsAttribute.UUID_ATTRIBUTE);
        this.f9764h = str;
        this.f9765i = uuid;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return h.c(this.f9764h, dVar.f9764h) && h.c(this.f9765i, dVar.f9765i);
    }

    public final int hashCode() {
        return this.f9765i.hashCode() + (this.f9764h.hashCode() * 31);
    }

    public final String toString() {
        return "ScanUUID(tag=" + this.f9764h + ", uuid=" + this.f9765i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.f9764h);
        parcel.writeSerializable(this.f9765i);
    }
}
