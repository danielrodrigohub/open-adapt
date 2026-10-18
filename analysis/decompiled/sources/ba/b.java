package ba;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g0 f3614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x f3615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final o f3616j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3617k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3618l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3619m;

    /* JADX INFO: compiled from: AdaptKitAnimationColor.kt */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new b(g0.CREATOR.createFromParcel(parcel), x.CREATOR.createFromParcel(parcel), o.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(g0 g0Var, x xVar, o oVar) {
        p4.h.j(g0Var, "red");
        p4.h.j(xVar, "green");
        p4.h.j(oVar, "blue");
        this.f3614h = g0Var;
        this.f3615i = xVar;
        this.f3616j = oVar;
        int i10 = g0Var.f3675h;
        float f10 = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f3617k = (int) ((i10 / 255.0f) * f10);
        int i11 = xVar.f3744h;
        this.f3618l = (int) ((i11 / 255.0f) * f10);
        int i12 = oVar.f3721h;
        this.f3619m = (int) ((i12 / 255.0f) * f10);
        Color.rgb(i10, i11, i12);
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
        return p4.h.c(this.f3614h, bVar.f3614h) && p4.h.c(this.f3615i, bVar.f3615i) && p4.h.c(this.f3616j, bVar.f3616j);
    }

    public final int hashCode() {
        return this.f3616j.hashCode() + ((this.f3615i.hashCode() + (this.f3614h.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "AdaptKitAnimationColor(red=" + this.f3614h + ", green=" + this.f3615i + ", blue=" + this.f3616j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f3614h.writeToParcel(parcel, i10);
        this.f3615i.writeToParcel(parcel, i10);
        this.f3616j.writeToParcel(parcel, i10);
    }
}
