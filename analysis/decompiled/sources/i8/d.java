package i8;

import android.os.Parcel;
import android.os.Parcelable;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.UUID;

/* JADX INFO: compiled from: EventUUID.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8822h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UUID f8823i;

    /* JADX INFO: compiled from: EventUUID.kt */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new d(parcel.readString(), (UUID) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, UUID uuid) {
        p4.h.j(str, "tag");
        p4.h.j(uuid, AnalyticsAttribute.UUID_ATTRIBUTE);
        this.f8822h = str;
        this.f8823i = uuid;
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
        return p4.h.c(this.f8822h, dVar.f8822h) && p4.h.c(this.f8823i, dVar.f8823i);
    }

    public final int hashCode() {
        return this.f8823i.hashCode() + (this.f8822h.hashCode() * 31);
    }

    public final String toString() {
        return "EventUUID(tag=" + this.f8822h + ", uuid=" + this.f8823i + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f8822h);
        parcel.writeSerializable(this.f8823i);
    }
}
