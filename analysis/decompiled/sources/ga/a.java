package ga;

import android.os.Parcel;
import android.os.Parcelable;
import gd.q;
import java.util.Map;
import mc.l;
import mc.m;
import mc.n;
import p4.h;

/* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Parcelable, eb.d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final C0151a f7896j = new C0151a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f7897h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f7898i;

    /* JADX INFO: renamed from: ga.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public static final class C0151a {
        public final a a(n nVar) {
            e eVar;
            m mVar;
            l lVar;
            f fVar = f.CLASSIFICATION_UNKNOWN;
            f fVar2 = f.CLASSIFICATION_NONE;
            f fVar3 = f.CLASSIFICATION_DOUBLETAP;
            f fVar4 = f.CLASSIFICATION_DOUBLETAP_TRAINING;
            e eVar2 = e.ACTION_UNKNOWN;
            e eVar3 = e.ACTION_UNLACE;
            e eVar4 = e.ACTION_NONE;
            f fVar5 = null;
            if (nVar == null || (lVar = nVar.f11076i) == null) {
                eVar = null;
            } else {
                int i10 = lVar.f11068h;
                if (i10 != 1) {
                    eVar = i10 != 2 ? eVar2 : eVar3;
                } else {
                    eVar = eVar4;
                }
            }
            if (nVar != null && (mVar = nVar.f11075h) != null) {
                int i11 = mVar.f11074h;
                if (i11 == 1) {
                    fVar5 = fVar2;
                } else if (i11 != 2) {
                    fVar5 = i11 != 3 ? fVar : fVar4;
                } else {
                    fVar5 = fVar3;
                }
            }
            if (eVar == null || fVar5 == null || (eVar == eVar4 && fVar5 == fVar2)) {
                return g.f7916k;
            }
            if (eVar == eVar3 && fVar5 == fVar3) {
                return d.f7902k;
            }
            if (eVar == eVar3 && fVar5 == fVar4) {
                return c.f7901k;
            }
            int i12 = eVar.f7907h;
            if (i12 == 1) {
                eVar2 = eVar4;
            } else if (i12 == 2) {
                eVar2 = eVar3;
            }
            int i13 = fVar5.f7914h;
            if (i13 == 1) {
                fVar = fVar2;
            } else if (i13 == 2) {
                fVar = fVar3;
            } else if (i13 == 3) {
                fVar = fVar4;
            }
            return new b(eVar2, fVar);
        }
    }

    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public static final class b extends a {
        public static final Parcelable.Creator<b> CREATOR = new C0152a();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final e f7899k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final f f7900l;

        /* JADX INFO: renamed from: ga.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
        public static final class C0152a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new b(e.CREATOR.createFromParcel(parcel), f.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e eVar, f fVar) {
            super(eVar, fVar);
            h.j(eVar, "customAction");
            h.j(fVar, "customClassification");
            this.f7899k = eVar;
            this.f7900l = fVar;
        }

        @Override // eb.d
        public final String b() {
            return a0.b.a("CustomGesture [Action: ", this.f7899k.f7908i, ", Classification = ", this.f7900l.f7915i, "]");
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            this.f7899k.writeToParcel(parcel, i10);
            this.f7900l.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public static final class c extends a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final c f7901k = new c();
        public static final Parcelable.Creator<c> CREATOR = new C0153a();

        /* JADX INFO: renamed from: ga.a$c$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
        public static final class C0153a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return c.f7901k;
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c() {
            super(e.ACTION_UNLACE, f.CLASSIFICATION_DOUBLETAP_TRAINING);
        }

        @Override // eb.d
        public final String b() {
            return "DoubleTapTraining";
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public static final class d extends a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final d f7902k = new d();
        public static final Parcelable.Creator<d> CREATOR = new C0154a();

        /* JADX INFO: renamed from: ga.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
        public static final class C0154a implements Parcelable.Creator<d> {
            @Override // android.os.Parcelable.Creator
            public final d createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return d.f7902k;
            }

            @Override // android.os.Parcelable.Creator
            public final d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d() {
            super(e.ACTION_UNLACE, f.CLASSIFICATION_DOUBLETAP);
        }

        @Override // eb.d
        public final String b() {
            return "DoubleTapUnlace";
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public enum e implements Parcelable, eb.d {
        ACTION_UNKNOWN(0, "Unknown"),
        ACTION_NONE(1, "None"),
        ACTION_UNLACE(2, "Unlace");

        public static final Parcelable.Creator<e> CREATOR = new C0155a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7907h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f7908i;

        /* JADX INFO: renamed from: ga.a$e$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
        public static final class C0155a implements Parcelable.Creator<e> {
            @Override // android.os.Parcelable.Creator
            public final e createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return e.valueOf(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final e[] newArray(int i10) {
                return new e[i10];
            }
        }

        e(int i10, String str) {
            this.f7907h = i10;
            this.f7908i = str;
        }

        @Override // eb.d
        public final String b() {
            return this.f7908i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // eb.d
        public final Map<String, Object> m() {
            return q.f8071h;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeString(name());
        }
    }

    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public enum f implements Parcelable, eb.d {
        CLASSIFICATION_UNKNOWN(0, "Unknown"),
        CLASSIFICATION_NONE(1, "None"),
        CLASSIFICATION_DOUBLETAP(2, "DoubleTap"),
        CLASSIFICATION_DOUBLETAP_TRAINING(3, "Training");

        public static final Parcelable.Creator<f> CREATOR = new C0156a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f7914h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f7915i;

        /* JADX INFO: renamed from: ga.a$f$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
        public static final class C0156a implements Parcelable.Creator<f> {
            @Override // android.os.Parcelable.Creator
            public final f createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return f.valueOf(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final f[] newArray(int i10) {
                return new f[i10];
            }
        }

        f(int i10, String str) {
            this.f7914h = i10;
            this.f7915i = str;
        }

        @Override // eb.d
        public final String b() {
            return this.f7915i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // eb.d
        public final Map<String, Object> m() {
            return q.f8071h;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeString(name());
        }
    }

    /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
    public static final class g extends a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final g f7916k = new g();
        public static final Parcelable.Creator<g> CREATOR = new C0157a();

        /* JADX INFO: renamed from: ga.a$g$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitGestureConfiguration.kt */
        public static final class C0157a implements Parcelable.Creator<g> {
            @Override // android.os.Parcelable.Creator
            public final g createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return g.f7916k;
            }

            @Override // android.os.Parcelable.Creator
            public final g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public g() {
            super(e.ACTION_NONE, f.CLASSIFICATION_NONE);
        }

        @Override // eb.d
        public final String b() {
            return "GestureOff";
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    public a(e eVar, f fVar) {
        this.f7897h = eVar;
        this.f7898i = fVar;
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return q.f8071h;
    }
}
