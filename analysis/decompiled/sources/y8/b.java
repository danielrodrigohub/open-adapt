package y8;

import android.content.Context;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptCustomAnimation;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.LightColor;
import com.nike.adapt.adk.model.ShoeColor;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import o7.x;

/* JADX INFO: compiled from: LightEffectsUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f18683a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final fd.d f18684b = o.w(3, C0323b.f18686h);

    /* JADX INFO: compiled from: LightEffectsUtil.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18685a;

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
            f18685a = iArr;
            int[] iArr2 = new int[z8.a.values().length];
            z8.a aVar = z8.a.NIKE_MAG;
            iArr2[1] = 1;
            z8.a aVar2 = z8.a.COLOR_STRIKE;
            iArr2[2] = 2;
            z8.a aVar3 = z8.a.BREATHE;
            iArr2[3] = 3;
            z8.a aVar4 = z8.a.BE_TRUE;
            iArr2[4] = 4;
        }
    }

    /* JADX INFO: renamed from: y8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LightEffectsUtil.kt */
    public static final class C0323b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0323b f18686h = new C0323b();

        public C0323b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    public final AdaptCustomAnimation a(Context context, String str) {
        p4.h.j(context, "context");
        p4.h.j(str, "fileName");
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            p4.h.i(inputStreamOpen, "context.assets.open(fileName)");
            Reader inputStreamReader = new InputStreamReader(inputStreamOpen, yd.a.f19171b);
            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
            try {
                String strE = o.E(bufferedReader);
                d3.e.d(bufferedReader, null);
                return (AdaptCustomAnimation) GsonInstrumentation.fromJson(new e7.h(), strE, AdaptCustomAnimation.class);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    d3.e.d(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            a1.d.d("LightEffectsUtil.getJsonDataFromAsset : ", e10.getMessage(), x.f12420a);
            return null;
        }
    }

    public final h8.a b() {
        return (h8.a) f18684b.getValue();
    }

    public final String c(v7.c cVar) {
        p4.h.j(cVar, "effectType");
        if (p4.h.c(cVar, v7.c.e.f16371c)) {
            return o.r(R.string.adapt_lights_effect_pulsing);
        }
        if (p4.h.c(cVar, v7.c.f.f16373c)) {
            return o.r(R.string.adapt_lights_effect_strobe);
        }
        if (p4.h.c(cVar, v7.c.C0294c.f16368c)) {
            return o.r(R.string.adapt_lights_effect_gradient);
        }
        if (p4.h.c(cVar, v7.c.d.f16370c)) {
            return o.r(R.string.adapt_lights_effect_pulsing);
        }
        throw new j2.a();
    }

    public final String d(i.a aVar, AdaptShoeColor adaptShoeColor) {
        String str;
        String str2;
        p4.h.j(adaptShoeColor, "shoeColor");
        v7.c cVar = aVar.f18704a;
        if (p4.h.c(cVar, v7.c.C0294c.f16368c)) {
            str = "gradient";
        } else if (p4.h.c(cVar, v7.c.f.f16373c)) {
            str = "strobe";
        } else {
            str = p4.h.c(cVar, v7.c.e.f16371c) ? "pulsing" : "NA";
        }
        switch (a.f18685a[ShoeColor.Companion.valueOf(adaptShoeColor).ordinal()]) {
            case 1:
                str2 = "single_AuroraGreen";
                break;
            case 2:
                str2 = "single_HeroBlue";
                break;
            case 3:
                str2 = "single_RacerBlue";
                break;
            case 4:
                str2 = "single_VividPurple";
                break;
            case 5:
                str2 = "single_PinkBlast";
                break;
            case 6:
                str2 = "single_RedOrbit";
                break;
            case 7:
                str2 = "single_BrightCrimson";
                break;
            case 8:
                str2 = "single_TotalOrange";
                break;
            case 9:
                str2 = "single_OpticYellow";
                break;
            case 10:
                str2 = "single_ElectricGreen";
                break;
            case 11:
                str2 = "single_GreenSpark";
                break;
            case 12:
                str2 = "single_White";
                break;
            case 13:
                str2 = "dual_RacerBlue_OpticYellow";
                break;
            case 14:
                str2 = "dual_RacerBlue_ElectricGreen";
                break;
            case 15:
                str2 = "dual_RacerBlue_AuroraGreen";
                break;
            case 16:
                str2 = "dual_VividPurple_OpticYellow";
                break;
            case 17:
                str2 = "dual_VividPurple_White";
                break;
            case 18:
                str2 = "dual_VividPurple_AuroraGreen";
                break;
            case 19:
                str2 = "dual_RedOrbit_RacerBlue";
                break;
            case 20:
                str2 = "dual_RedOrbit_OpticYellow";
                break;
            case 21:
                str2 = "dual_RedOrbit_White";
                break;
            case 22:
                str2 = "dual_GreenSpark_OpticYellow";
                break;
            case 23:
                str2 = "dual_GreenSpark_White";
                break;
            case 24:
                str2 = "dual_HeroBlue_PinkBlast";
                break;
            default:
                throw new j2.a();
        }
        return a1.f.d(k1.a.a("animations/", str, "/", str, "_"), str2, ".json");
    }

    public final LightColor e(Shoe shoe) {
        p4.h.j(shoe, "side");
        int iOrdinal = InMemoryCache.INSTANCE.getActiveLightPack().ordinal();
        if (iOrdinal == 1) {
            return LightColor.AURORA_GREEN;
        }
        if (iOrdinal == 2) {
            return shoe.isLeft() ? LightColor.VIVID_PURPLE : LightColor.OPTIC_YELLOW;
        }
        if (iOrdinal == 3) {
            return shoe.isLeft() ? LightColor.HERO_BLUE : LightColor.ELECTRIC_GREEN;
        }
        if (iOrdinal != 4) {
            return LightColor.HERO_BLUE;
        }
        return shoe.isLeft() ? LightColor.BRIGHT_CRIMSON : LightColor.OPTIC_YELLOW;
    }

    public final LightColor f(boolean z10) {
        AdaptShoeColor adaptShoeColorS = b().S();
        AdaptMarshaller.AdaptPreset leftAdaptPreset = z10 ? adaptShoeColorS.getLeftAdaptPreset() : adaptShoeColorS.getRightAdaptPreset();
        if (leftAdaptPreset == AdaptMarshaller.AdaptPreset.LIGHT_OFF) {
            leftAdaptPreset = z10 ? b().c().getLeftAdaptPreset() : b().c().getRightAdaptPreset();
        }
        return LightColor.Companion.valueOf(leftAdaptPreset);
    }

    public final String g(v7.c cVar) throws Exception {
        p4.h.j(cVar, "effectType");
        if (p4.h.c(cVar, v7.c.e.f16371c)) {
            return "pulsing_red_blue.json";
        }
        if (p4.h.c(cVar, v7.c.f.f16373c)) {
            return "strobe_red_blue.json";
        }
        if (!p4.h.c(cVar, v7.c.C0294c.f16368c)) {
            if (p4.h.c(cVar, v7.c.d.f16370c)) {
                return "pulsing_red_blue.json";
            }
            throw new j2.a();
        }
        StringBuilder sb2 = new StringBuilder("gradient_icon_animations/gradient_");
        AdaptShoeColor adaptShoeColorS = b().S();
        if (adaptShoeColorS.isOff()) {
            adaptShoeColorS = b().c();
        }
        AdaptMarshaller.AdaptPreset leftAdaptPreset = adaptShoeColorS.getLeftAdaptPreset();
        AdaptMarshaller.AdaptPreset rightAdaptPreset = adaptShoeColorS.getRightAdaptPreset();
        boolean z10 = leftAdaptPreset != rightAdaptPreset;
        sb2.append(z10 ? "dual_" : "single_");
        String lowerCase = leftAdaptPreset.name().toLowerCase();
        p4.h.i(lowerCase, "this as java.lang.String).toLowerCase()");
        sb2.append(lowerCase);
        if (z10) {
            String lowerCase2 = rightAdaptPreset.name().toLowerCase();
            p4.h.i(lowerCase2, "this as java.lang.String).toLowerCase()");
            sb2.append("_" + lowerCase2);
        }
        sb2.append(".json");
        String string = sb2.toString();
        p4.h.i(string, "jsonName.append(\".json\").toString()");
        if (a(BigfootApplication.f5638p.b(), string) != null) {
            return string;
        }
        throw new Exception(androidx.recyclerview.widget.d.c(string, " color combination file does not exist"));
    }
}
