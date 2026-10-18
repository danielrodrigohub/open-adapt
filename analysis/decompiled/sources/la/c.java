package la;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.o;
import androidx.fragment.app.r0;
import java.util.Objects;
import mc.a0;
import mc.b0;

/* JADX INFO: compiled from: AdaptKitSessionInformation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final la.b f10193h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f10194i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10195j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f10196k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10197l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final EnumC0199c f10198m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f10192n = new a();
    public static final Parcelable.Creator<c> CREATOR = new b();

    /* JADX INFO: compiled from: AdaptKitSessionInformation.kt */
    public static final class a {
        public final c a(b0 b0Var, int i10) {
            EnumC0199c enumC0199c;
            p4.h.j(b0Var, "sessionInfo");
            a0 a0Var = b0Var.f10972a;
            p4.h.j(a0Var, "sessionId");
            la.b bVar = new la.b(a0Var.f10968a);
            long j10 = b0Var.f10973b;
            int i11 = b0Var.f10974c;
            int i12 = b0Var.f10975d;
            int i13 = b0Var.f10976e;
            o.d(i13, "sessionState");
            int iA = q.g.a(i13);
            if (iA == 0) {
                enumC0199c = EnumC0199c.SESSION_INVALID;
            } else if (iA == 1) {
                enumC0199c = EnumC0199c.SESSION_ENDED;
            } else if (iA == 2) {
                enumC0199c = EnumC0199c.SESSION_ACTIVE;
            } else {
                if (iA != 3) {
                    throw new j2.a();
                }
                enumC0199c = EnumC0199c.SESSION_PAUSED;
            }
            return new c(bVar, j10, i11, i12, i10, enumC0199c);
        }
    }

    /* JADX INFO: compiled from: AdaptKitSessionInformation.kt */
    public static final class b implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(la.b.CREATOR.createFromParcel(parcel), parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt(), EnumC0199c.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    /* JADX INFO: renamed from: la.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitSessionInformation.kt */
    public enum EnumC0199c {
        SESSION_ACTIVE("ACTIVE"),
        SESSION_PAUSED("PAUSED"),
        SESSION_ENDED("ENDED"),
        SESSION_INVALID("INVALID");


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f10204h;

        EnumC0199c(String str) {
            this.f10204h = str;
        }
    }

    public c(la.b bVar, long j10, int i10, int i11, int i12, EnumC0199c enumC0199c) {
        p4.h.j(bVar, "sessionId");
        p4.h.j(enumC0199c, "state");
        this.f10193h = bVar;
        this.f10194i = j10;
        this.f10195j = i10;
        this.f10196k = i11;
        this.f10197l = i12;
        this.f10198m = enumC0199c;
    }

    public static c a(c cVar, int i10, int i11) {
        la.b bVar = (i11 & 1) != 0 ? cVar.f10193h : null;
        long j10 = (i11 & 2) != 0 ? cVar.f10194i : 0L;
        int i12 = (i11 & 4) != 0 ? cVar.f10195j : 0;
        int i13 = (i11 & 8) != 0 ? cVar.f10196k : 0;
        if ((i11 & 16) != 0) {
            i10 = cVar.f10197l;
        }
        int i14 = i10;
        EnumC0199c enumC0199c = (i11 & 32) != 0 ? cVar.f10198m : null;
        Objects.requireNonNull(cVar);
        p4.h.j(bVar, "sessionId");
        p4.h.j(enumC0199c, "state");
        return new c(bVar, j10, i12, i13, i14, enumC0199c);
    }

    public final long b() {
        return this.f10194i;
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
        return p4.h.c(this.f10193h, cVar.f10193h) && this.f10194i == cVar.f10194i && this.f10195j == cVar.f10195j && this.f10196k == cVar.f10196k && this.f10197l == cVar.f10197l && this.f10198m == cVar.f10198m;
    }

    public final int hashCode() {
        return this.f10198m.hashCode() + r0.e(this.f10197l, r0.e(this.f10196k, r0.e(this.f10195j, (Long.hashCode(this.f10194i) + (this.f10193h.hashCode() * 31)) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "AdaptKitSessionInformation(sessionId=" + this.f10193h + ", timestamp=" + this.f10194i + ", size=" + this.f10195j + ", crc=" + this.f10196k + ", bytesDownloaded=" + this.f10197l + ", state=" + this.f10198m + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f10193h.writeToParcel(parcel, i10);
        parcel.writeLong(this.f10194i);
        parcel.writeInt(this.f10195j);
        parcel.writeInt(this.f10196k);
        parcel.writeInt(this.f10197l);
        parcel.writeString(this.f10198m.name());
    }
}
