package s9;

import android.widget.ImageView;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.network.assets.model.Colorway;
import com.nike.adapt.network.assets.model.ColorwayV1;
import com.nike.adapt.network.assets.model.Configuration;
import com.nike.adapt.network.assets.model.Manifest;
import com.nike.adapt.network.assets.model.Settings;
import com.nike.adapt.network.assets.model.ShoeLightingColor;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: ShoeSelectionUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f15222a = new p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h8.c f15223b = h8.c.f8298b;

    /* JADX INFO: compiled from: ShoeSelectionUtil.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15226c;

        public a(String str, String str2, String str3) {
            p4.h.j(str, "colorwayName");
            p4.h.j(str2, "colorwayCode");
            p4.h.j(str3, "sortIdentifier");
            this.f15224a = str;
            this.f15225b = str2;
            this.f15226c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p4.h.c(this.f15224a, aVar.f15224a) && p4.h.c(this.f15225b, aVar.f15225b) && p4.h.c(this.f15226c, aVar.f15226c);
        }

        public final int hashCode() {
            return this.f15226c.hashCode() + a1.f.c(this.f15225b, this.f15224a.hashCode() * 31, 31);
        }

        public final String toString() {
            String str = this.f15224a;
            String str2 = this.f15225b;
            return a1.f.d(k1.a.a("SupportedColorway(colorwayName=", str, ", colorwayCode=", str2, ", sortIdentifier="), this.f15226c, ")");
        }
    }

    /* JADX INFO: compiled from: ShoeSelectionUtil.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15227a;

        static {
            int[] iArr = new int[r.values().length];
            iArr[0] = 1;
            iArr[2] = 2;
            iArr[1] = 3;
            iArr[3] = 4;
            iArr[4] = 5;
            iArr[5] = 6;
            f15227a = iArr;
        }
    }

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class c<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(((Colorway) t10).getIdentifier(), ((Colorway) t11).getIdentifier());
        }
    }

    public static ea.e a(String str, int i10, int i11, int i12) {
        UUID uuidRandomUUID = UUID.randomUUID();
        p4.h.i(uuidRandomUUID, "randomUUID()");
        ea.d dVar = new ea.d(0, 60, 255, 5);
        ea.h.c cVar = new ea.h.c(i10);
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        return new ea.e(uuidRandomUUID, str, true, new ea.c(new ea.i(cVar, inMemoryCache.getLeftDevice().getMaxTightness()), dVar), new ea.c(new ea.i(new ea.h.c(i11), inMemoryCache.getRightDevice().getMaxTightness()), dVar), Integer.valueOf(i12));
    }

    public static void p(int i10, int i11, r rVar) {
        ArrayList arrayList = new ArrayList();
        int iOrdinal = rVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            arrayList.add(androidx.lifecycle.o.r(R.string.adapt_bb_mode_name_game));
            arrayList.add(androidx.lifecycle.o.r(R.string.adapt_bb_mode_name_rest));
        } else if (iOrdinal == 2 || iOrdinal == 3) {
            arrayList.add(androidx.lifecycle.o.r(R.string.adapt_nsw_mode_name_move));
            arrayList.add(androidx.lifecycle.o.r(R.string.adapt_nsw_mode_name_casual));
        } else if (iOrdinal == 4 || iOrdinal == 5) {
            arrayList.add(androidx.lifecycle.o.r(R.string.adapt_jordan_mode_name_locked_in));
            arrayList.add(androidx.lifecycle.o.r(R.string.adapt_nsw_mode_name_casual));
        }
        if (f15223b.z()) {
            TrackManager.INSTANCE.multipairFindYourFitFlowFinished(i10, i11);
        }
        TrackManager.INSTANCE.fineTuneCompleted(i10, i11, (String) arrayList.get(0));
        int size = arrayList.size();
        for (int i12 = 1; i12 < size; i12++) {
            TrackManager.INSTANCE.recommendedPresetCreated(i10, i11, (String) arrayList.get(i12));
        }
    }

    public final String b(r rVar) {
        Manifest manifest;
        Configuration configuration;
        Settings settings;
        ColorwayV1 colorwayV1;
        String strI = i(rVar);
        if (strI == null || (manifest = InMemoryCache.INSTANCE.getManifest()) == null || (configuration = manifest.getConfiguration()) == null || (settings = configuration.getSettings()) == null || (colorwayV1 = settings.getColorwayV1()) == null) {
            return null;
        }
        List<Colorway> colorways = colorwayV1.getColorways();
        ArrayList arrayList = new ArrayList();
        for (Object obj : colorways) {
            if (p4.h.c(((Colorway) obj).getShoeIdentifier(), strI)) {
                arrayList.add(obj);
            }
        }
        List listI0 = gd.n.i0(arrayList, new c());
        if (!(!listI0.isEmpty())) {
            return null;
        }
        Colorway colorway = (Colorway) listI0.get(0);
        p4.h.j(colorway, "colorway");
        return a0.d.c(strI, "-", (String) gd.n.a0(colorway.getStyleCodes()));
    }

    public final Colorway c(String str) {
        Manifest manifest;
        Configuration configuration;
        Settings settings;
        ColorwayV1 colorwayV1;
        String strN = n(str);
        Object obj = null;
        if (strN == null || (manifest = InMemoryCache.INSTANCE.getManifest()) == null || (configuration = manifest.getConfiguration()) == null || (settings = configuration.getSettings()) == null || (colorwayV1 = settings.getColorwayV1()) == null) {
            return null;
        }
        for (Object obj2 : colorwayV1.getColorways()) {
            if (((Colorway) obj2).getStyleCodes().contains(strN)) {
                obj = obj2;
                break;
            }
        }
        return (Colorway) obj;
    }

    public final String d(int i10) {
        try {
            String resourceEntryName = BigfootApplication.f5638p.a().getResources().getResourceEntryName(i10);
            p4.h.i(resourceEntryName, "{\n            BigfootApp…ame(resourceId)\n        }");
            return resourceEntryName;
        } catch (Throwable unused) {
            return "";
        }
    }

    public final int e(r rVar, boolean z10) {
        if (z10) {
            int iOrdinal = rVar.ordinal();
            if (iOrdinal == 0) {
                return R.string.adapt_Android_firmware_info_left;
            }
            if (iOrdinal == 1) {
                return R.string.adapt_Android_firmware_info_bb2_left;
            }
            if (iOrdinal == 2) {
                return R.string.adapt_Android_firmware_info_nsw_left;
            }
            if (iOrdinal == 3) {
                return R.string.adapt_Android_firmware_info_automax_left;
            }
            if (iOrdinal == 4 || iOrdinal == 5) {
                return R.string.adapt_Android_firmware_info_jordan_left;
            }
            throw new j2.a();
        }
        int iOrdinal2 = rVar.ordinal();
        if (iOrdinal2 == 0) {
            return R.string.adapt_Android_firmware_info_right;
        }
        if (iOrdinal2 == 1) {
            return R.string.adapt_Android_firmware_info_bb2_right;
        }
        if (iOrdinal2 == 2) {
            return R.string.adapt_Android_firmware_info_nsw_right;
        }
        if (iOrdinal2 == 3) {
            return R.string.adapt_Android_firmware_info_automax_right;
        }
        if (iOrdinal2 == 4 || iOrdinal2 == 5) {
            return R.string.adapt_Android_firmware_info_jordan_right;
        }
        throw new j2.a();
    }

    public final String f(r rVar) {
        int i10;
        if (rVar == null) {
            return "";
        }
        int iOrdinal = rVar.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            i10 = R.string.adapt_bb_mode_name_game;
        } else if (iOrdinal == 2 || iOrdinal == 3) {
            i10 = R.string.adapt_nsw_mode_name_move;
        } else {
            if (iOrdinal != 4 && iOrdinal != 5) {
                throw new j2.a();
            }
            i10 = R.string.adapt_jordan_mode_name_locked_in;
        }
        return androidx.lifecycle.o.r(i10);
    }

    public final String g(String str) {
        r rVarK = k(str);
        int i10 = rVarK == null ? -1 : b.f15227a[rVarK.ordinal()];
        return (i10 == 5 || i10 == 6) ? androidx.lifecycle.o.r(R.string.adapt_accessibility_jordan_eleven) : h(str);
    }

    public final String h(String str) {
        r rVarK = k(str);
        switch (rVarK == null ? -1 : b.f15227a[rVarK.ordinal()]) {
            case 1:
                return androidx.lifecycle.o.r(R.string.adapt_myshoes_modelname);
            case 2:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_nsw);
            case 3:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_bb2);
            case 4:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_auto_max);
            case 5:
            case 6:
                return androidx.lifecycle.o.r(R.string.adapt_air_jordan_XI);
            default:
                return androidx.lifecycle.o.r(R.string.adapt_myshoes_modelname);
        }
    }

    public final String i(r rVar) {
        switch (rVar == null ? -1 : b.f15227a[rVar.ordinal()]) {
            case 1:
                return "001";
            case 2:
                return "002";
            case 3:
                return "005";
            case 4:
                return "004";
            case 5:
                return "006";
            case 6:
                return "007";
            default:
                return null;
        }
    }

    public final String j(r rVar) {
        int i10 = rVar == null ? -1 : b.f15227a[rVar.ordinal()];
        return (i10 == 5 || i10 == 6) ? androidx.lifecycle.o.r(R.string.adapt_accessibility_jordan_eleven) : l(rVar);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final r k(String str) {
        r rVar;
        r rVar2 = r.JORDAN_2;
        r rVar3 = r.JORDAN;
        r rVar4 = r.ADAPT_BB2;
        r rVar5 = r.ADAPT_AUTOMAX;
        r rVar6 = r.ADAPT_NSW;
        r rVar7 = r.ADAPT_BB;
        if (p4.h.c(str, "Nike EARL BB") || str == null) {
            return rVar7;
        }
        Colorway colorwayC = c(str);
        if (colorwayC != null) {
            String shoeIdentifier = colorwayC.getShoeIdentifier();
            switch (shoeIdentifier.hashCode()) {
                case 47665:
                    rVar = !shoeIdentifier.equals("001") ? null : rVar7;
                    break;
                case 47666:
                    rVar = !shoeIdentifier.equals("002") ? null : rVar6;
                    break;
                case 47667:
                default:
                    rVar = null;
                    break;
                case 47668:
                    rVar = !shoeIdentifier.equals("004") ? null : rVar5;
                    break;
                case 47669:
                    rVar = !shoeIdentifier.equals("005") ? null : rVar4;
                    break;
                case 47670:
                    rVar = !shoeIdentifier.equals("006") ? null : rVar3;
                    break;
                case 47671:
                    rVar = !shoeIdentifier.equals("007") ? null : rVar2;
                    break;
            }
            if (rVar != null) {
                return rVar;
            }
        }
        Pattern patternCompile = Pattern.compile(".{3}-.{6}-.{3}");
        p4.h.i(patternCompile, "compile(pattern)");
        if (patternCompile.matcher(str).matches()) {
            Pattern patternCompile2 = Pattern.compile("001-.{6}-.{3}");
            p4.h.i(patternCompile2, "compile(pattern)");
            if (patternCompile2.matcher(str).matches()) {
                return rVar7;
            }
            Pattern patternCompile3 = Pattern.compile("002-.{6}-.{3}");
            p4.h.i(patternCompile3, "compile(pattern)");
            if (patternCompile3.matcher(str).matches()) {
                return rVar6;
            }
            Pattern patternCompile4 = Pattern.compile("005-.{6}-.{3}");
            p4.h.i(patternCompile4, "compile(pattern)");
            if (patternCompile4.matcher(str).matches()) {
                return rVar4;
            }
            Pattern patternCompile5 = Pattern.compile("004-.{6}-.{3}");
            p4.h.i(patternCompile5, "compile(pattern)");
            if (patternCompile5.matcher(str).matches()) {
                return rVar5;
            }
            Pattern patternCompile6 = Pattern.compile("006-.{6}-.{3}");
            p4.h.i(patternCompile6, "compile(pattern)");
            if (patternCompile6.matcher(str).matches()) {
                return rVar3;
            }
            Pattern patternCompile7 = Pattern.compile("007-.{6}-.{3}");
            p4.h.i(patternCompile7, "compile(pattern)");
            if (patternCompile7.matcher(str).matches()) {
                return rVar2;
            }
            return null;
        }
        switch (str.hashCode()) {
            case -2104272584:
                if (!str.equals("CW7304-001")) {
                    return null;
                }
                return rVar5;
            case -1582682028:
                if (!str.equals("BV6397-002")) {
                    return null;
                }
                return rVar6;
            case -1582681038:
                if (!str.equals("BV6397-110")) {
                    return null;
                }
                return rVar6;
            case -1582679147:
                if (!str.equals("BV6397-300")) {
                    return null;
                }
                return rVar6;
            case -1582675272:
                if (!str.equals("BV6397-710")) {
                    return null;
                }
                return rVar6;
            case -95587763:
                if (!str.equals("CI5018-002")) {
                    return null;
                }
                return rVar5;
            case 1416812655:
                if (str.equals("BQ5397-001")) {
                    return rVar4;
                }
                return null;
            case 1416813615:
                if (str.equals("BQ5397-100")) {
                    return rVar4;
                }
                return null;
            case 1416821303:
                if (str.equals("BQ5397-900")) {
                    return rVar4;
                }
                return null;
            case 1741564687:
                if (!str.equals("AO2582-001")) {
                    return null;
                }
                return rVar7;
            case 1741564688:
                if (!str.equals("AO2582-002")) {
                    return null;
                }
                return rVar7;
            case 1741564690:
                if (!str.equals("AO2582-004")) {
                    return null;
                }
                return rVar7;
            case 1741573335:
                if (!str.equals("AO2582-900")) {
                    return null;
                }
                return rVar7;
            default:
                return null;
        }
    }

    public final String l(r rVar) {
        switch (rVar == null ? -1 : b.f15227a[rVar.ordinal()]) {
            case 1:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_bb);
            case 2:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_nsw);
            case 3:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_bb2);
            case 4:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_auto_max);
            case 5:
            case 6:
                return androidx.lifecycle.o.r(R.string.adapt_air_jordan_XI);
            default:
                return androidx.lifecycle.o.r(R.string.adapt_nike_adapt_bb);
        }
    }

    public final AdaptMarshaller.AdaptPreset m(String str) {
        ShoeLightingColor shoeLightingColor;
        AdaptMarshaller.AdaptPreset adaptPreset;
        Colorway colorwayC = c(str);
        return (colorwayC == null || (shoeLightingColor = colorwayC.getShoeLightingColor()) == null || (adaptPreset = AdaptMarshaller.AdaptPreset.Companion.parse(shoeLightingColor)) == null) ? AdaptMarshaller.AdaptPreset.HERO_BLUE : adaptPreset;
    }

    public final String n(String str) {
        if (str == null) {
            return "AO2582-001";
        }
        Pattern patternCompile = Pattern.compile(".{3}-.{6}-.{3}");
        p4.h.i(patternCompile, "compile(pattern)");
        if (patternCompile.matcher(str).matches()) {
            String strSubstring = str.substring(4, 14);
            p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }
        Pattern patternCompile2 = Pattern.compile(".{6}-.{3}");
        p4.h.i(patternCompile2, "compile(pattern)");
        if (patternCompile2.matcher(str).matches()) {
            return str;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008c  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d5  */
    public final void o(ImageView imageView, String str, int i10) {
        String str2;
        Manifest manifest;
        Configuration configuration;
        Settings settings;
        ColorwayV1 colorwayV1;
        p4.h.j(imageView, "view");
        androidx.appcompat.widget.o.d(i10, "assetType");
        p7.a aVar = p7.a.f13271a;
        String strN = n(str);
        if (strN == null || (manifest = InMemoryCache.INSTANCE.getManifest()) == null || (configuration = manifest.getConfiguration()) == null || (settings = configuration.getSettings()) == null || (colorwayV1 = settings.getColorwayV1()) == null) {
            str2 = "com.nike.adapt.dummyurl";
        } else {
            String assetBaseUrl = colorwayV1.getAssetBaseUrl();
            String strC = null;
            for (Colorway colorway : colorwayV1.getColorways()) {
                Iterator<String> it = colorway.getStyleCodes().iterator();
                while (it.hasNext()) {
                    if (p4.h.c(it.next(), strN)) {
                        if (i10 != 2) {
                            strC = p7.a.f13271a.c(colorway.getAssetsProfile());
                            break;
                        } else {
                            strC = p7.a.f13271a.c(colorway.getAssetsAngled());
                            break;
                        }
                    }
                }
            }
            if (strC != null) {
                str2 = assetBaseUrl + ((Object) strC);
            } else {
                str2 = "com.nike.adapt.dummyurl";
            }
        }
        r rVarK = k(str);
        int i11 = rVarK == null ? -1 : b.f15227a[rVarK.ordinal()];
        int i12 = R.drawable.colorway_default_bb_angled;
        switch (i11) {
            case 1:
                if (i10 != 2) {
                    i12 = R.drawable.colorway_default_bb_profile;
                }
                break;
            case 2:
                i12 = i10 == 2 ? R.drawable.colorway_default_nsw_angled : R.drawable.colorway_default_nsw_profile;
                break;
            case 3:
                i12 = i10 == 2 ? R.drawable.colorway_default_bb2_angled : R.drawable.colorway_default_bb2_profile;
                break;
            case 4:
                i12 = i10 == 2 ? R.drawable.colorway_default_automax_angled : R.drawable.colorway_default_automax_profile;
                break;
            case 5:
            case 6:
                i12 = i10 == 2 ? R.drawable.colorway_default_jordan_angled : R.drawable.colorway_default_jordan_profile;
                break;
            default:
                if (i10 != 2) {
                    i12 = R.drawable.colorway_default_bb_profile;
                }
                break;
        }
        Colorway colorwayC = c(str);
        t7.b.f15557a.a().c(Integer.valueOf(colorwayC != null ? colorwayC.getColorwayVersion() : 1), str2, imageView, i12);
    }
}
