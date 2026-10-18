package ba;

import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: AdaptKitColorPreset.kt */
/* JADX INFO: loaded from: classes.dex */
public enum f {
    /* JADX INFO: Fake field, exist only in values array */
    AURORA_GREEN(0, 255, 255, "Aurora Green"),
    HERO_BLUE(0, 60, 255, "Hero Blue"),
    /* JADX INFO: Fake field, exist only in values array */
    RACER_BLUE(0, 0, 255, "Racer Blue"),
    /* JADX INFO: Fake field, exist only in values array */
    VIVID_PURPLE(100, 0, HttpStatusCodesKt.HTTP_OK, "Vivid Purple"),
    /* JADX INFO: Fake field, exist only in values array */
    PINK_BLAST(255, 10, 80, "Pink Blast"),
    /* JADX INFO: Fake field, exist only in values array */
    RED_ORBIT(240, 0, 8, "Red Orbit"),
    BRIGHT_CRIMSON_V1(255, 8, 0, "Bright Crimson"),
    /* JADX INFO: Fake field, exist only in values array */
    BRIGHT_CRIMSON(255, 16, 3, "Bright Crimson"),
    /* JADX INFO: Fake field, exist only in values array */
    TOTAL_ORANGE(255, 40, 0, "Total Orange"),
    LASER_ORANGE(255, 120, 0, "Laser Orange"),
    /* JADX INFO: Fake field, exist only in values array */
    OPTI_YELLOW(255, 255, 0, "Opti Yellow"),
    /* JADX INFO: Fake field, exist only in values array */
    ELECTRIC_GREEN(120, 240, 0, "Electric Green"),
    /* JADX INFO: Fake field, exist only in values array */
    GREEN_SPARK(20, 240, 0, "Green Spark"),
    /* JADX INFO: Fake field, exist only in values array */
    WHITE(255, 255, 255, "White"),
    /* JADX INFO: Fake field, exist only in values array */
    LIGHT_OFF(0, 0, 0, "lightOffColorName");


    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f3647l = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3652h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3653i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3654j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f3655k;

    /* JADX INFO: compiled from: AdaptKitColorPreset.kt */
    public static final class a {
        public static boolean a(int i10, int i11) {
            a aVar = f.f3647l;
            return i11 + (-1) <= i10 && i10 <= i11 + 1;
        }

        public final f b(int i10, int i11, int i12) {
            for (f fVar : f.values()) {
                if (a(fVar.f3652h, i10) && a(fVar.f3653i, i11) && a(fVar.f3654j, i12)) {
                    return fVar;
                }
            }
            return null;
        }
    }

    f(int i10, int i11, int i12, String str) {
        this.f3652h = i10;
        this.f3653i = i11;
        this.f3654j = i12;
        this.f3655k = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return name() + ": RGB(" + this.f3652h + "," + this.f3653i + "," + this.f3654j + ")";
    }
}
