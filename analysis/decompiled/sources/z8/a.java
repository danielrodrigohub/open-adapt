package z8;

import com.nike.adapt.R;
import com.nike.adapt.adk.model.ShoeColor;

/* JADX INFO: compiled from: LightPack.kt */
/* JADX INFO: loaded from: classes.dex */
public enum a {
    MY_LIGHTS(100, null, R.string.light_pack_my_lights, null),
    NIKE_MAG(101, Integer.valueOf(R.drawable.featured_nikemag), R.string.light_pack_nike_mag, "nikemag.json"),
    COLOR_STRIKE(102, Integer.valueOf(R.drawable.featured_colorstrike), R.string.light_pack_color_strike, "colorstrike.json"),
    BREATHE(103, Integer.valueOf(R.drawable.featured_breathe), R.string.light_pack_breathe, "breathe.json"),
    BE_TRUE(104, Integer.valueOf(R.drawable.featured_betrue), R.string.light_pack_be_true, "betrue.json");


    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final C0335a f19384l = new C0335a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f19391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Integer f19392i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f19393j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f19394k;

    /* JADX INFO: renamed from: z8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LightPack.kt */
    public static final class C0335a {

        /* JADX INFO: renamed from: z8.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: LightPack.kt */
        public /* synthetic */ class C0336a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f19395a;

            static {
                int[] iArr = new int[ShoeColor.values().length];
                iArr[ShoeColor.AURORA_GREEN.ordinal()] = 1;
                iArr[ShoeColor.HERO_BLUE.ordinal()] = 2;
                iArr[ShoeColor.RACER_BLUE.ordinal()] = 3;
                iArr[ShoeColor.VIVID_PURPLE.ordinal()] = 4;
                iArr[ShoeColor.PINK_BLAST.ordinal()] = 5;
                iArr[ShoeColor.RED_ORBIT.ordinal()] = 6;
                iArr[ShoeColor.BRIGHT_CRIMSON.ordinal()] = 7;
                iArr[ShoeColor.TOTAL_ORANGE.ordinal()] = 8;
                iArr[ShoeColor.OPTI_YELLOW.ordinal()] = 9;
                iArr[ShoeColor.ELECTRIC_GREEN.ordinal()] = 10;
                iArr[ShoeColor.GREEN_SPARK.ordinal()] = 11;
                iArr[ShoeColor.WHITE.ordinal()] = 12;
                iArr[ShoeColor.RACER_BLUE_OPTI_YELLOW.ordinal()] = 13;
                iArr[ShoeColor.RACER_BLUE_ELECTRIC_GREEN.ordinal()] = 14;
                iArr[ShoeColor.RACER_BLUE_AURORA_GREEN.ordinal()] = 15;
                iArr[ShoeColor.VIVID_PURPLE_OPTI_YELLOW.ordinal()] = 16;
                iArr[ShoeColor.VIVID_PURPLE_WHITE.ordinal()] = 17;
                iArr[ShoeColor.VIVID_PURPLE_AURORA_GREEN.ordinal()] = 18;
                iArr[ShoeColor.RED_ORBIT_RACER_BLUE.ordinal()] = 19;
                iArr[ShoeColor.RED_ORBIT_OPTI_YELLOW.ordinal()] = 20;
                iArr[ShoeColor.RED_ORBIT_WHITE.ordinal()] = 21;
                iArr[ShoeColor.GREEN_SPARK_OPTI_YELLOW.ordinal()] = 22;
                iArr[ShoeColor.GREEN_SPARK_WHITE.ordinal()] = 23;
                iArr[ShoeColor.HERO_BLUE_PINK_BLAST.ordinal()] = 24;
                f19395a = iArr;
            }
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001b  */
        /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
        public final a a(int i10) {
            for (a aVar : a.values()) {
                if (aVar.f19391h == i10) {
                    if (aVar == null) {
                        return a.MY_LIGHTS;
                    }
                    return aVar;
                }
            }
            aVar = null;
            if (aVar == null) {
                return a.MY_LIGHTS;
            }
            return aVar;
        }
    }

    a(int i10, Integer num, int i11, String str) {
        this.f19391h = i10;
        this.f19392i = num;
        this.f19393j = i11;
        this.f19394k = str;
    }
}
