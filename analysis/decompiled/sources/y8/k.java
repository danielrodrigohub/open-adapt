package y8;

import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.model.ShoeColor;

/* JADX INFO: compiled from: LightingUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f18716a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final fd.d f18717b = o.w(3, b.f18719h);

    /* JADX INFO: compiled from: LightingUtil.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18718a;

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
            f18718a = iArr;
        }
    }

    /* JADX INFO: compiled from: LightingUtil.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f18719h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    public final int a(ShoeColor shoeColor) {
        p4.h.j(shoeColor, "shoeColor");
        switch (a.f18718a[shoeColor.ordinal()]) {
            case 1:
                return R.id.single_light_aurora_green;
            case 2:
                return R.id.single_light_hero_blue;
            case 3:
                return R.id.single_light_racer_blue;
            case 4:
                return R.id.single_light_vivid_purple;
            case 5:
                return R.id.single_light_pink_blast;
            case 6:
                return R.id.single_light_red_orbit;
            case 7:
                return R.id.single_light_bright_crimson;
            case 8:
                return R.id.single_light_total_orange;
            case 9:
                return R.id.single_light_optic_yellow;
            case 10:
                return R.id.single_light_electric_green;
            case 11:
                return R.id.single_light_green_spark;
            case 12:
                return R.id.single_light_white;
            case 13:
                return R.id.duo_light_racer_blue_opti_yellow;
            case 14:
                return R.id.duo_light_racer_blue_electric_green;
            case 15:
                return R.id.duo_light_racer_blue_aurora_green;
            case 16:
                return R.id.duo_light_vivid_purple_opti_yellow;
            case 17:
                return R.id.duo_light_vivid_purple_white;
            case 18:
                return R.id.duo_light_vivid_purple_aurora_green;
            case 19:
                return R.id.duo_light_red_orbit_racer_blue;
            case 20:
                return R.id.duo_light_red_orbit_opti_yellow;
            case 21:
                return R.id.duo_light_red_orbit_white;
            case 22:
                return R.id.duo_light_green_spark_opti_yellow;
            case 23:
                return R.id.duo_light_green_spark_white;
            case 24:
                return R.id.duo_light_hero_blue_pink_blast;
            default:
                throw new j2.a();
        }
    }

    public final ShoeColor b(int i10) {
        switch (i10) {
            case R.id.duo_light_green_spark_opti_yellow /* 2131362200 */:
                return ShoeColor.GREEN_SPARK_OPTI_YELLOW;
            case R.id.duo_light_green_spark_white /* 2131362201 */:
                return ShoeColor.GREEN_SPARK_WHITE;
            case R.id.duo_light_hero_blue_pink_blast /* 2131362202 */:
                return ShoeColor.HERO_BLUE_PINK_BLAST;
            case R.id.duo_light_racer_blue_aurora_green /* 2131362203 */:
                return ShoeColor.RACER_BLUE_AURORA_GREEN;
            case R.id.duo_light_racer_blue_electric_green /* 2131362204 */:
                return ShoeColor.RACER_BLUE_ELECTRIC_GREEN;
            case R.id.duo_light_racer_blue_opti_yellow /* 2131362205 */:
                return ShoeColor.RACER_BLUE_OPTI_YELLOW;
            case R.id.duo_light_red_orbit_opti_yellow /* 2131362206 */:
                return ShoeColor.RED_ORBIT_OPTI_YELLOW;
            case R.id.duo_light_red_orbit_racer_blue /* 2131362207 */:
                return ShoeColor.RED_ORBIT_RACER_BLUE;
            case R.id.duo_light_red_orbit_white /* 2131362208 */:
                return ShoeColor.RED_ORBIT_WHITE;
            case R.id.duo_light_vivid_purple_aurora_green /* 2131362209 */:
                return ShoeColor.VIVID_PURPLE_AURORA_GREEN;
            case R.id.duo_light_vivid_purple_opti_yellow /* 2131362210 */:
                return ShoeColor.VIVID_PURPLE_OPTI_YELLOW;
            case R.id.duo_light_vivid_purple_white /* 2131362211 */:
                return ShoeColor.VIVID_PURPLE_WHITE;
            default:
                switch (i10) {
                    case R.id.single_light_aurora_green /* 2131362790 */:
                        return ShoeColor.AURORA_GREEN;
                    case R.id.single_light_bright_crimson /* 2131362791 */:
                        return ShoeColor.BRIGHT_CRIMSON;
                    case R.id.single_light_electric_green /* 2131362792 */:
                        return ShoeColor.ELECTRIC_GREEN;
                    case R.id.single_light_green_spark /* 2131362793 */:
                        return ShoeColor.GREEN_SPARK;
                    case R.id.single_light_hero_blue /* 2131362794 */:
                        return ShoeColor.HERO_BLUE;
                    case R.id.single_light_optic_yellow /* 2131362795 */:
                        return ShoeColor.OPTI_YELLOW;
                    case R.id.single_light_pink_blast /* 2131362796 */:
                        return ShoeColor.PINK_BLAST;
                    case R.id.single_light_racer_blue /* 2131362797 */:
                        return ShoeColor.RACER_BLUE;
                    case R.id.single_light_red_orbit /* 2131362798 */:
                        return ShoeColor.RED_ORBIT;
                    case R.id.single_light_total_orange /* 2131362799 */:
                        return ShoeColor.TOTAL_ORANGE;
                    case R.id.single_light_vivid_purple /* 2131362800 */:
                        return ShoeColor.VIVID_PURPLE;
                    case R.id.single_light_white /* 2131362801 */:
                        return ShoeColor.WHITE;
                    default:
                        return ShoeColor.HERO_BLUE;
                }
        }
    }
}
