package la;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.o;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: SessionEndedNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Parcelable {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10214h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10215i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10216j;

    /* JADX INFO: compiled from: SessionEndedNotification.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(parcel.readInt(), parcel.readInt(), o.o(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(int i10, int i11, int i12) {
        o.d(i12, "reason");
        this.f10214h = i10;
        this.f10215i = i11;
        this.f10216j = i12;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f10214h == gVar.f10214h && this.f10215i == gVar.f10215i && this.f10216j == gVar.f10216j;
    }

    public final int hashCode() {
        return q.g.a(this.f10216j) + r0.e(this.f10215i, Integer.hashCode(this.f10214h) * 31, 31);
    }

    public final String toString() {
        int i10 = this.f10214h;
        int i11 = this.f10215i;
        int i12 = this.f10216j;
        StringBuilder sbB = s.b("SessionEndedNotification(sessionId=", i10, ", sessionSize=", i11, ", reason=");
        sbB.append(o.i(i12));
        sbB.append(")");
        return sbB.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeInt(this.f10214h);
        parcel.writeInt(this.f10215i);
        parcel.writeString(o.f(this.f10216j));
    }
}
