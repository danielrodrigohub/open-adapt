package ea;

import android.os.Parcel;
import android.os.Parcelable;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: AdaptKitPairedDevices.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f6666j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b f6667k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final b f6668l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f6669m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f6670n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List<e> f6671o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f6672p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f6673q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final f f6674r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final long f6675s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f6676t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f6677u;

    /* JADX INFO: compiled from: AdaptKitPairedDevices.kt */
    public static final class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            boolean z10 = parcel.readInt() != 0;
            Parcelable.Creator<b> creator = b.CREATOR;
            b bVarCreateFromParcel = creator.createFromParcel(parcel);
            b bVarCreateFromParcel2 = creator.createFromParcel(parcel);
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            int i10 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i10);
            int iC = 0;
            while (iC != i10) {
                iC = com.nike.adapt.adk.model.a.c(e.CREATOR, parcel, arrayList, iC, 1);
            }
            return new m(string, string2, z10, bVarCreateFromParcel, bVarCreateFromParcel2, string3, string4, arrayList, parcel.readLong(), parcel.readLong(), f.CREATOR.createFromParcel(parcel), parcel.readLong(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m(String str, String str2, boolean z10, b bVar, b bVar2, String str3, String str4, List<e> list, long j10, long j11, f fVar, long j12, boolean z11) {
        p4.h.j(str, "pairId");
        p4.h.j(str2, "pairName");
        p4.h.j(bVar, "leftDevice");
        p4.h.j(bVar2, "rightDevice");
        p4.h.j(fVar, "deviceType");
        this.f6664h = str;
        this.f6665i = str2;
        this.f6666j = z10;
        this.f6667k = bVar;
        this.f6668l = bVar2;
        this.f6669m = str3;
        this.f6670n = str4;
        this.f6671o = list;
        this.f6672p = j10;
        this.f6673q = j11;
        this.f6674r = fVar;
        this.f6675s = j12;
        this.f6676t = z11;
        String lowerCase = a0.d.c(bVar.f6611i, "-", bVar2.f6611i).toLowerCase(Locale.ROOT);
        p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        this.f6677u = lowerCase;
    }

    public static m a(m mVar, String str, boolean z10, b bVar, b bVar2, String str2, String str3, List list, long j10, boolean z11, int i10) {
        String str4 = (i10 & 1) != 0 ? mVar.f6664h : null;
        String str5 = (i10 & 2) != 0 ? mVar.f6665i : str;
        boolean z12 = (i10 & 4) != 0 ? mVar.f6666j : z10;
        b bVar3 = (i10 & 8) != 0 ? mVar.f6667k : bVar;
        b bVar4 = (i10 & 16) != 0 ? mVar.f6668l : bVar2;
        String str6 = (i10 & 32) != 0 ? mVar.f6669m : str2;
        String str7 = (i10 & 64) != 0 ? mVar.f6670n : str3;
        List list2 = (i10 & 128) != 0 ? mVar.f6671o : list;
        long j11 = (i10 & 256) != 0 ? mVar.f6672p : 0L;
        long j12 = (i10 & 512) != 0 ? mVar.f6673q : 0L;
        f fVar = (i10 & 1024) != 0 ? mVar.f6674r : null;
        long j13 = (i10 & 2048) != 0 ? mVar.f6675s : j10;
        boolean z13 = (i10 & AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH) != 0 ? mVar.f6676t : z11;
        Objects.requireNonNull(mVar);
        p4.h.j(str4, "pairId");
        p4.h.j(str5, "pairName");
        p4.h.j(bVar3, "leftDevice");
        p4.h.j(bVar4, "rightDevice");
        p4.h.j(list2, "snapshots");
        p4.h.j(fVar, "deviceType");
        return new m(str4, str5, z12, bVar3, bVar4, str6, str7, (List<e>) list2, j11, j12, fVar, j13, z13);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!p4.h.c(m.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        p4.h.h(obj, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitPairedDevices");
        return p4.h.c(this.f6664h, ((m) obj).f6664h);
    }

    public final int hashCode() {
        return this.f6664h.hashCode();
    }

    public final String toString() {
        String str = this.f6664h;
        String str2 = this.f6665i;
        boolean z10 = this.f6666j;
        b bVar = this.f6667k;
        b bVar2 = this.f6668l;
        String str3 = this.f6669m;
        String str4 = this.f6670n;
        List<e> list = this.f6671o;
        long j10 = this.f6672p;
        long j11 = this.f6673q;
        f fVar = this.f6674r;
        long j12 = this.f6675s;
        boolean z11 = this.f6676t;
        StringBuilder sbA = k1.a.a("AdaptKitPairedDevices(pairId=", str, ", pairName=", str2, ", isDefault=");
        sbA.append(z10);
        sbA.append(", leftDevice=");
        sbA.append(bVar);
        sbA.append(", rightDevice=");
        sbA.append(bVar2);
        sbA.append(", lastSnapshotUsedName=");
        sbA.append(str3);
        sbA.append(", colorway=");
        sbA.append(str4);
        sbA.append(", snapshots=");
        sbA.append(list);
        sbA.append(", createdMillis=");
        sbA.append(j10);
        sbA.append(", updatedMillis=");
        sbA.append(j11);
        sbA.append(", deviceType=");
        sbA.append(fVar);
        sbA.append(", localUpdatedMillis=");
        sbA.append(j12);
        sbA.append(", scheduledForDeletion=");
        sbA.append(z11);
        sbA.append(")");
        return sbA.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(this.f6664h);
        parcel.writeString(this.f6665i);
        parcel.writeInt(this.f6666j ? 1 : 0);
        this.f6667k.writeToParcel(parcel, i10);
        this.f6668l.writeToParcel(parcel, i10);
        parcel.writeString(this.f6669m);
        parcel.writeString(this.f6670n);
        Iterator itD = ca.a.d(this.f6671o, parcel);
        while (itD.hasNext()) {
            ((e) itD.next()).writeToParcel(parcel, i10);
        }
        parcel.writeLong(this.f6672p);
        parcel.writeLong(this.f6673q);
        this.f6674r.writeToParcel(parcel, i10);
        parcel.writeLong(this.f6675s);
        parcel.writeInt(this.f6676t ? 1 : 0);
    }

    public /* synthetic */ m(String str, String str2, boolean z10, b bVar, b bVar2, String str3, String str4, List list, long j10, long j11, f fVar, long j12, int i10) {
        this(str, str2, z10, bVar, bVar2, str3, str4, (List<e>) list, j10, j11, fVar, (i10 & 2048) != 0 ? 0L : j12, false);
    }
}
