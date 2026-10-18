package ha;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends u {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ea.m f8380h;

    /* JADX INFO: compiled from: PairingState.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(ea.m.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(ea.m mVar) {
        p4.h.j(mVar, "devices");
        this.f8380h = mVar;
    }

    @Override // ha.u
    public final String a() throws IOException {
        ea.m mVar = this.f8380h;
        String str = mVar.f6665i;
        int i10 = mVar.f6674r.f6637h;
        boolean z10 = mVar.f6666j;
        String strC = mVar.f6667k.c();
        String strC2 = mVar.f6668l.c();
        String str2 = mVar.f6669m;
        String str3 = mVar.f6670n;
        String strD0 = gd.n.d0(mVar.f6671o, null, "[", "]", ea.n.f6678h, 25);
        long j10 = mVar.f6672p;
        long j11 = mVar.f6673q;
        long j12 = mVar.f6675s;
        boolean z11 = mVar.f6676t;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("PairedDevices[name: ");
        sb2.append(str);
        sb2.append(" deviceType: ");
        sb2.append(i10);
        sb2.append(" isDefault: ");
        sb2.append(z10);
        sb2.append(" left: ");
        sb2.append(strC);
        sb2.append(" right: ");
        a1.d.g(sb2, strC2, " lastUsedSnapshot: ", str2, " colorway: ");
        a1.d.g(sb2, str3, " snapshots:", strD0, " created: ");
        sb2.append(j10);
        sb2.append(" updated: ");
        sb2.append(j11);
        sb2.append(" localUpdated: ");
        sb2.append(j12);
        sb2.append(" scheduledForDeletion: ");
        sb2.append(z11);
        sb2.append("]");
        return androidx.recyclerview.widget.d.c("CompletedPairingState: ", sb2.toString());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && p4.h.c(this.f8380h, ((g) obj).f8380h);
    }

    public final int hashCode() {
        return this.f8380h.hashCode();
    }

    public final String toString() {
        return "CompletedPairingState(devices=" + this.f8380h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f8380h.writeToParcel(parcel, i10);
    }
}
