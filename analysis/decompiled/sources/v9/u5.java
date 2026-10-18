package v9;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AdaptKitControllerResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u5 extends g {
    public static final Parcelable.Creator<u5> CREATOR = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f16862l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final v9.a f16863m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final la.b f16864n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final la.c f16865o;

    /* JADX INFO: compiled from: AdaptKitControllerResult.kt */
    public static final class a implements Parcelable.Creator<u5> {
        @Override // android.os.Parcelable.Creator
        public final u5 createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new u5(parcel.readString(), v9.a.CREATOR.createFromParcel(parcel), la.b.CREATOR.createFromParcel(parcel), la.c.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final u5[] newArray(int i10) {
            return new u5[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u5(String str, v9.a aVar, la.b bVar, la.c cVar) {
        super(str, aVar);
        p4.h.j(str, "id");
        p4.h.j(aVar, "adaptIdentifier");
        p4.h.j(bVar, "adaptKitSessionId");
        p4.h.j(cVar, "sessionInformation");
        this.f16862l = str;
        this.f16863m = aVar;
        this.f16864n = bVar;
        this.f16865o = cVar;
    }

    @Override // v9.g
    public final v9.a a() {
        return this.f16863m;
    }

    @Override // v9.g
    public final String c() {
        String str = this.f16862l;
        int i10 = this.f16864n.f10191h;
        la.c cVar = this.f16865o;
        return "deviceId: " + str + " sessionId: " + i10 + " state: " + cVar.f10198m.f10204h + " percentDownloaded " + Math.min(Math.max(0, (int) ((cVar.f10197l / cVar.f10195j) * 100)), 100);
    }

    @Override // v9.g
    public final String d() {
        return "SessionDownloadProgressResult";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u5)) {
            return false;
        }
        u5 u5Var = (u5) obj;
        return p4.h.c(this.f16862l, u5Var.f16862l) && p4.h.c(this.f16863m, u5Var.f16863m) && p4.h.c(this.f16864n, u5Var.f16864n) && p4.h.c(this.f16865o, u5Var.f16865o);
    }

    public final int hashCode() {
        return this.f16865o.hashCode() + ((this.f16864n.hashCode() + androidx.appcompat.widget.e0.c(this.f16863m, this.f16862l.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        String str = this.f16862l;
        v9.a aVar = this.f16863m;
        la.b bVar = this.f16864n;
        la.c cVar = this.f16865o;
        StringBuilder sbA = ed.c.a("SessionDownloadProgressResult(id=", str, ", adaptIdentifier=", aVar, ", adaptKitSessionId=");
        sbA.append(bVar);
        sbA.append(", sessionInformation=");
        sbA.append(cVar);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f16862l);
        this.f16863m.writeToParcel(parcel, i10);
        this.f16864n.writeToParcel(parcel, i10);
        this.f16865o.writeToParcel(parcel, i10);
    }
}
