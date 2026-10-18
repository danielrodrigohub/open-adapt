package v9;

import android.os.Parcel;
import android.os.Parcelable;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.UUID;

/* JADX INFO: compiled from: AdaptIdentifier.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f16442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f16443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f16444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f16445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f16446n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UUID f16447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C0295a f16441i = new C0295a();
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* JADX INFO: renamed from: v9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptIdentifier.kt */
    public static final class C0295a {
    }

    /* JADX INFO: compiled from: AdaptIdentifier.kt */
    public static final class b implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new a((UUID) parcel.readSerializable());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    static {
        UUID uuidFromString = UUID.fromString("18254c73-7846-4437-8def-1221409cdbb8");
        p4.h.i(uuidFromString, "fromString(\"18254c73-7846-4437-8def-1221409cdbb8\")");
        f16442j = new a(uuidFromString);
        UUID uuidFromString2 = UUID.fromString("07c13f57-e7e3-45ee-9165-31fe4b9f4880");
        p4.h.i(uuidFromString2, "fromString(\"07c13f57-e7e3-45ee-9165-31fe4b9f4880\")");
        f16443k = new a(uuidFromString2);
        UUID uuidFromString3 = UUID.fromString("df3e70aa-32ac-40f6-a62f-f0522d00fc9c");
        p4.h.i(uuidFromString3, "fromString(\"df3e70aa-32ac-40f6-a62f-f0522d00fc9c\")");
        f16444l = new a(uuidFromString3);
        UUID uuidFromString4 = UUID.fromString("4b4a9b7f-f3e2-4a8e-b6a1-a858f62fa949");
        p4.h.i(uuidFromString4, "fromString(\"4b4a9b7f-f3e2-4a8e-b6a1-a858f62fa949\")");
        f16445m = new a(uuidFromString4);
        UUID uuidFromString5 = UUID.fromString("bc295598-7de0-4397-8e4f-eb7066bacdbd");
        p4.h.i(uuidFromString5, "fromString(\"bc295598-7de0-4397-8e4f-eb7066bacdbd\")");
        f16446n = new a(uuidFromString5);
    }

    public a(UUID uuid) {
        p4.h.j(uuid, AnalyticsAttribute.UUID_ATTRIBUTE);
        this.f16447h = uuid;
    }

    public final boolean a() {
        return p4.h.c(this.f16447h, f16445m.f16447h);
    }

    public final boolean b() {
        return p4.h.c(this.f16447h, f16446n.f16447h);
    }

    public final String c() {
        String str;
        if (a()) {
            str = "isIgnore";
        } else if (p4.h.c(this.f16447h, f16443k.f16447h)) {
            str = "isNotification";
        } else if (p4.h.c(this.f16447h, f16442j.f16447h)) {
            str = "isNone";
        } else {
            str = p4.h.c(this.f16447h, f16444l.f16447h) ? "isInternal" : "isAppOrOther";
        }
        String strC = androidx.recyclerview.widget.d.c("identifierType: ", str);
        return "AdaptIdentifier[uuid: " + this.f16447h + " " + strC + "]";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!p4.h.c(a.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        p4.h.h(obj, "null cannot be cast to non-null type com.nike.android.adaptkit.AdaptIdentifier");
        a aVar = (a) obj;
        if (p4.h.c(this.f16447h, aVar.f16447h) || a() || aVar.a() || p4.h.c(this.f16447h, f16442j.f16447h) || p4.h.c(aVar.f16447h, f16443k.f16447h)) {
            return true;
        }
        return !p4.h.c(aVar.f16447h, f16444l.f16447h) && p4.h.c(this.f16447h, aVar.f16447h);
    }

    public final int hashCode() {
        return this.f16447h.hashCode();
    }

    public final String toString() {
        return "AdaptIdentifier(uuid=" + this.f16447h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeSerializable(this.f16447h);
    }
}
