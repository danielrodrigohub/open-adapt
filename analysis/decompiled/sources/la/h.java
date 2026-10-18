package la;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.s;

/* JADX INFO: compiled from: SessionMemsData.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10217h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f10218i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b f10219j;

    /* JADX INFO: compiled from: SessionMemsData.kt */
    public static final class a implements Parcelable.Creator<h> {
        @Override // android.os.Parcelable.Creator
        public final h createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            long j10 = parcel.readLong();
            Parcelable.Creator<b> creator = b.CREATOR;
            return new h(j10, creator.createFromParcel(parcel), creator.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final h[] newArray(int i10) {
            return new h[i10];
        }
    }

    /* JADX INFO: compiled from: SessionMemsData.kt */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f10220h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f10221i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f10222j;

        /* JADX INFO: compiled from: SessionMemsData.kt */
        public static final class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new b(parcel.readInt(), parcel.readInt(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(int i10, int i11, int i12) {
            this.f10220h = i10;
            this.f10221i = i11;
            this.f10222j = i12;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f10220h == bVar.f10220h && this.f10221i == bVar.f10221i && this.f10222j == bVar.f10222j;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f10222j) + r0.e(this.f10221i, Integer.hashCode(this.f10220h) * 31, 31);
        }

        public final String toString() {
            int i10 = this.f10220h;
            int i11 = this.f10221i;
            return s.a(s.b("SessionXYZ(x=", i10, ", y=", i11, ", z="), this.f10222j, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeInt(this.f10220h);
            parcel.writeInt(this.f10221i);
            parcel.writeInt(this.f10222j);
        }
    }

    public h(long j10, b bVar, b bVar2) {
        p4.h.j(bVar, "accel");
        p4.h.j(bVar2, "gyro");
        this.f10217h = j10;
        this.f10218i = bVar;
        this.f10219j = bVar2;
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
        return this.f10217h == hVar.f10217h && p4.h.c(this.f10218i, hVar.f10218i) && p4.h.c(this.f10219j, hVar.f10219j);
    }

    public final int hashCode() {
        return this.f10219j.hashCode() + ((this.f10218i.hashCode() + (Long.hashCode(this.f10217h) * 31)) * 31);
    }

    public final String toString() {
        return "SessionMemsData(timestamp=" + this.f10217h + ", accel=" + this.f10218i + ", gyro=" + this.f10219j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeLong(this.f10217h);
        this.f10218i.writeToParcel(parcel, i10);
        this.f10219j.writeToParcel(parcel, i10);
    }
}
