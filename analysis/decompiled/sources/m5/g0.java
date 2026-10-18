package m5;

import android.app.UiModeManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.harvest.HarvestTimer;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import n3.i1;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f10384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f10385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f10386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f10387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f10388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f10389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f10390g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f10391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f10392i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static HashMap<String, String> f10393j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f10394k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f10395l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f10396m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f10397n;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f10384a = i10;
        String str = Build.DEVICE;
        f10385b = str;
        String str2 = Build.MANUFACTURER;
        f10386c = str2;
        String str3 = Build.MODEL;
        f10387d = str3;
        StringBuilder sbA = k1.a.a(str, ", ", str3, ", ", str2);
        sbA.append(", ");
        sbA.append(i10);
        f10388e = sbA.toString();
        f10389f = new byte[0];
        f10390g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f10391h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
        f10392i = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f10394k = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f10395l = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f10396m = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f10397n = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, HttpStatusCodesKt.HTTP_ACCEPTED, HttpStatusCodesKt.HTTP_RESET_CONTENT, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, HttpStatusCodesKt.HTTP_CREATED, HttpStatusCodesKt.HTTP_PARTIAL_CONTENT, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, HttpStatusCodesKt.HTTP_IM_USED, 235, 236, 193, 198, HttpStatusCodesKt.HTTP_MULTI_STATUS, HttpStatusCodesKt.HTTP_OK, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, 215, 194, 197, HttpStatusCodesKt.HTTP_NO_CONTENT, HttpStatusCodesKt.HTTP_NOT_AUTHORITATIVE, 230, 225, 232, 239, AnalyticsEvent.EVENT_TYPE_LIMIT, 253, 244, 243};
    }

    public static long A(long j10, float f10) {
        return f10 == 1.0f ? j10 : Math.round(j10 / ((double) f10));
    }

    public static int B(int i10) {
        if (i10 == 13) {
            return 1;
        }
        switch (i10) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    public static String C(StringBuilder sb2, Formatter formatter, long j10) {
        if (j10 == -9223372036854775807L) {
            j10 = 0;
        }
        String str = j10 < 0 ? "-" : "";
        long jAbs = (Math.abs(j10) + 500) / 1000;
        long j11 = jAbs % 60;
        long j12 = (jAbs / 60) % 60;
        long j13 = jAbs / 3600;
        sb2.setLength(0);
        return j13 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j13), Long.valueOf(j12), Long.valueOf(j11)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j12), Long.valueOf(j11)).toString();
    }

    public static String D(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e10) {
            p.d("Util", "Failed to read system property " + str, e10);
            return null;
        }
    }

    public static String E(int i10) {
        switch (i10) {
            case -2:
                return "none";
            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                return "unknown";
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                return i10 >= 10000 ? a0.d.b("custom (", i10, ")") : "?";
        }
    }

    public static byte[] F(String str) {
        return str.getBytes(t6.c.f15538c);
    }

    public static int G(Uri uri, String str) {
        int i10;
        if (str != null) {
            switch (str) {
                case "application/x-mpegURL":
                    return 2;
                case "application/vnd.ms-sstr+xml":
                    return 1;
                case "application/dash+xml":
                    return 0;
                case "application/x-rtsp":
                    return 3;
                default:
                    return 4;
            }
        }
        String scheme = uri.getScheme();
        if (scheme != null && androidx.activity.k.d("rtsp", scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String strS = androidx.activity.k.s(lastPathSegment.substring(iLastIndexOf + 1));
            Objects.requireNonNull(strS);
            switch (strS.hashCode()) {
                case 104579:
                    if (strS.equals("ism")) {
                    }
                    break;
                case 108321:
                    if (strS.equals("mpd")) {
                    }
                    break;
                case 3242057:
                    if (strS.equals("isml")) {
                    }
                    break;
                case 3299913:
                    if (strS.equals("m3u8")) {
                    }
                    break;
            }
            /*  JADX ERROR: Method code generation error
                java.lang.NullPointerException: Switch insn not found in header
                	at java.base/java.util.Objects.requireNonNull(Objects.java:259)
                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                */
            /*
                Method dump skipped, instruction units count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: m5.g0.G(android.net.Uri, java.lang.String):int");
        }

        public static boolean H(w wVar, w wVar2, Inflater inflater) {
            int i10 = wVar.f10477c - wVar.f10476b;
            if (i10 <= 0) {
                return false;
            }
            if (wVar2.f10475a.length < i10) {
                wVar2.a(i10 * 2);
            }
            if (inflater == null) {
                inflater = new Inflater();
            }
            byte[] bArr = wVar.f10475a;
            int i11 = wVar.f10476b;
            inflater.setInput(bArr, i11, wVar.f10477c - i11);
            int iInflate = 0;
            while (true) {
                try {
                    byte[] bArr2 = wVar2.f10475a;
                    iInflate += inflater.inflate(bArr2, iInflate, bArr2.length - iInflate);
                    if (inflater.finished()) {
                        wVar2.C(iInflate);
                        inflater.reset();
                        return true;
                    }
                    if (!inflater.needsDictionary() && !inflater.needsInput()) {
                        byte[] bArr3 = wVar2.f10475a;
                        if (iInflate == bArr3.length) {
                            wVar2.a(bArr3.length * 2);
                        }
                    }
                    inflater.reset();
                    return false;
                } catch (DataFormatException unused) {
                    inflater.reset();
                    return false;
                } catch (Throwable th) {
                    inflater.reset();
                    throw th;
                }
            }
        }

        public static boolean I(int i10) {
            return i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 536870912 || i10 == 805306368 || i10 == 4;
        }

        public static boolean J(int i10) {
            return i10 == 10 || i10 == 13;
        }

        public static boolean K(Context context) {
            UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
            return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
        }

        public static long L(long j10) {
            return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 * 1000;
        }

        public static String M(String str) {
            if (str == null) {
                return null;
            }
            String strReplace = str.replace('_', '-');
            if (!strReplace.isEmpty() && !strReplace.equals("und")) {
                str = strReplace;
            }
            String strS = androidx.activity.k.s(str);
            int i10 = 0;
            String str2 = strS.split("-", 2)[0];
            if (f10393j == null) {
                String[] iSOLanguages = Locale.getISOLanguages();
                HashMap<String, String> map = new HashMap<>(iSOLanguages.length + f10394k.length);
                for (String str3 : iSOLanguages) {
                    try {
                        String iSO3Language = new Locale(str3).getISO3Language();
                        if (!TextUtils.isEmpty(iSO3Language)) {
                            map.put(iSO3Language, str3);
                        }
                    } catch (MissingResourceException unused) {
                    }
                }
                int i11 = 0;
                while (true) {
                    String[] strArr = f10394k;
                    if (i11 >= strArr.length) {
                        break;
                    }
                    map.put(strArr[i11], strArr[i11 + 1]);
                    i11 += 2;
                }
                f10393j = map;
            }
            String str4 = f10393j.get(str2);
            if (str4 != null) {
                StringBuilder sbC = a0.b.c(str4);
                sbC.append(strS.substring(str2.length()));
                strS = sbC.toString();
                str2 = str4;
            }
            if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
                return strS;
            }
            while (true) {
                String[] strArr2 = f10395l;
                if (i10 >= strArr2.length) {
                    return strS;
                }
                if (strS.startsWith(strArr2[i10])) {
                    return strArr2[i10 + 1] + strS.substring(strArr2[i10].length());
                }
                i10 += 2;
            }
        }

        public static <T> T[] N(T[] tArr, int i10) {
            a.a(i10 <= tArr.length);
            return (T[]) Arrays.copyOf(tArr, i10);
        }

        public static long O(String str) throws i1 {
            Matcher matcher = f10390g.matcher(str);
            if (!matcher.matches()) {
                throw i1.a("Invalid date/time format: " + str, null);
            }
            int i10 = 0;
            if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
                i10 = Integer.parseInt(matcher.group(13)) + (Integer.parseInt(matcher.group(12)) * 60);
                if ("-".equals(matcher.group(11))) {
                    i10 *= -1;
                }
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
            gregorianCalendar.clear();
            gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
            if (!TextUtils.isEmpty(matcher.group(8))) {
                StringBuilder sbC = a0.b.c("0.");
                sbC.append(matcher.group(8));
                gregorianCalendar.set(14, new BigDecimal(sbC.toString()).movePointRight(3).intValue());
            }
            long timeInMillis = gregorianCalendar.getTimeInMillis();
            return i10 != 0 ? timeInMillis - (((long) i10) * HarvestTimer.DEFAULT_HARVEST_PERIOD) : timeInMillis;
        }

        public static boolean P(Handler handler, Runnable runnable) {
            if (!handler.getLooper().getThread().isAlive()) {
                return false;
            }
            if (handler.getLooper() != Looper.myLooper()) {
                return handler.post(runnable);
            }
            runnable.run();
            return true;
        }

        public static <T> void Q(List<T> list, int i10, int i11) {
            if (i10 < 0 || i11 > list.size() || i10 > i11) {
                throw new IllegalArgumentException();
            }
            if (i10 != i11) {
                list.subList(i10, i11).clear();
            }
        }

        public static long R(long j10, long j11, long j12) {
            if (j12 >= j11 && j12 % j11 == 0) {
                return j10 / (j12 / j11);
            }
            if (j12 < j11 && j11 % j12 == 0) {
                return (j11 / j12) * j10;
            }
            return (long) (j10 * (j11 / j12));
        }

        public static void S(long[] jArr, long j10) {
            int i10 = 0;
            if (j10 >= 1000000 && j10 % 1000000 == 0) {
                long j11 = j10 / 1000000;
                while (i10 < jArr.length) {
                    jArr[i10] = jArr[i10] / j11;
                    i10++;
                }
                return;
            }
            if (j10 >= 1000000 || 1000000 % j10 != 0) {
                double d10 = 1000000 / j10;
                while (i10 < jArr.length) {
                    jArr[i10] = (long) (jArr[i10] * d10);
                    i10++;
                }
                return;
            }
            long j12 = 1000000 / j10;
            while (i10 < jArr.length) {
                jArr[i10] = jArr[i10] * j12;
                i10++;
            }
        }

        public static String[] T(String str) {
            return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
        }

        public static byte[] U(InputStream inputStream) throws IOException {
            byte[] bArr = new byte[AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        }

        public static String V(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder(bArr.length * 2);
            for (int i10 = 0; i10 < bArr.length; i10++) {
                sb2.append(Character.forDigit((bArr[i10] >> 4) & 15, 16));
                sb2.append(Character.forDigit(bArr[i10] & 15, 16));
            }
            return sb2.toString();
        }

        public static long W(int i10) {
            return ((long) i10) & 4294967295L;
        }

        public static long X(long j10) {
            return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 / 1000;
        }

        public static boolean a(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        public static int b(long[] jArr, long j10, boolean z10) {
            int iBinarySearch = Arrays.binarySearch(jArr, j10);
            if (iBinarySearch < 0) {
                return ~iBinarySearch;
            }
            do {
                iBinarySearch++;
                if (iBinarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[iBinarySearch] == j10);
            return z10 ? iBinarySearch - 1 : iBinarySearch;
        }

        public static int c(List list, Comparable comparable, boolean z10) {
            int i10;
            int iBinarySearch = Collections.binarySearch(list, comparable);
            if (iBinarySearch < 0) {
                i10 = -(iBinarySearch + 2);
            } else {
                do {
                    iBinarySearch--;
                    if (iBinarySearch < 0) {
                        break;
                    }
                } while (((Comparable) list.get(iBinarySearch)).compareTo(comparable) == 0);
                i10 = iBinarySearch + 1;
            }
            return z10 ? Math.max(0, i10) : i10;
        }

        public static int d(q qVar, long j10) {
            int i10 = qVar.f10429a - 1;
            int i11 = 0;
            while (i11 <= i10) {
                int i12 = (i11 + i10) >>> 1;
                if (qVar.b(i12) < j10) {
                    i11 = i12 + 1;
                } else {
                    i10 = i12 - 1;
                }
            }
            int i13 = i10 + 1;
            if (i13 < qVar.f10429a && qVar.b(i13) == j10) {
                return i13;
            }
            if (i10 == -1) {
                return 0;
            }
            return i10;
        }

        public static int e(int[] iArr, int i10, boolean z10, boolean z11) {
            int i11;
            int iBinarySearch = Arrays.binarySearch(iArr, i10);
            if (iBinarySearch < 0) {
                i11 = -(iBinarySearch + 2);
            } else {
                do {
                    iBinarySearch--;
                    if (iBinarySearch < 0) {
                        break;
                    }
                } while (iArr[iBinarySearch] == i10);
                i11 = z10 ? iBinarySearch + 1 : iBinarySearch;
            }
            return z11 ? Math.max(0, i11) : i11;
        }

        public static int f(long[] jArr, long j10, boolean z10) {
            int i10;
            int iBinarySearch = Arrays.binarySearch(jArr, j10);
            if (iBinarySearch < 0) {
                i10 = -(iBinarySearch + 2);
            } else {
                do {
                    iBinarySearch--;
                    if (iBinarySearch < 0) {
                        break;
                    }
                } while (jArr[iBinarySearch] == j10);
                i10 = iBinarySearch + 1;
            }
            return z10 ? Math.max(0, i10) : i10;
        }

        public static void g(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException unused) {
                }
            }
        }

        public static float h(float f10, float f11, float f12) {
            return Math.max(f11, Math.min(f10, f12));
        }

        public static int i(int i10, int i11, int i12) {
            return Math.max(i11, Math.min(i10, i12));
        }

        public static long j(long j10, long j11, long j12) {
            return Math.max(j11, Math.min(j10, j12));
        }

        public static boolean k(Object[] objArr, Object obj) {
            for (Object obj2 : objArr) {
                if (a(obj2, obj)) {
                    return true;
                }
            }
            return false;
        }

        public static Handler l(Handler.Callback callback) {
            Looper looperMyLooper = Looper.myLooper();
            a.f(looperMyLooper);
            return new Handler(looperMyLooper, callback);
        }

        public static String m(String str, Object... objArr) {
            return String.format(Locale.US, str, objArr);
        }

        public static String n(byte[] bArr) {
            return new String(bArr, t6.c.f15538c);
        }

        public static String o(byte[] bArr, int i10, int i11) {
            return new String(bArr, i10, i11, t6.c.f15538c);
        }

        public static int p(int i10) {
            if (i10 == 12) {
                return f10384a >= 32 ? 743676 : 0;
            }
            switch (i10) {
                case 1:
                    return 4;
                case 2:
                    return 12;
                case 3:
                    return 28;
                case 4:
                    return HttpStatusCodesKt.HTTP_NO_CONTENT;
                case 5:
                    return 220;
                case 6:
                    return 252;
                case 7:
                    return 1276;
                case 8:
                    int i11 = f10384a;
                    return (i11 < 23 && i11 < 21) ? 0 : 6396;
                default:
                    return 0;
            }
        }

        public static byte[] q(String str) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = i10 * 2;
                bArr[i10] = (byte) (Character.digit(str.charAt(i11 + 1), 16) + (Character.digit(str.charAt(i11), 16) << 4));
            }
            return bArr;
        }

        public static int r(String str, int i10) {
            int i11 = 0;
            for (String str2 : T(str)) {
                if (i10 == s.i(s.e(str2))) {
                    i11++;
                }
            }
            return i11;
        }

        public static String s(String str, int i10) {
            String[] strArrT = T(str);
            if (strArrT.length == 0) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : strArrT) {
                if (i10 == s.i(s.e(str2))) {
                    if (sb2.length() > 0) {
                        sb2.append(",");
                    }
                    sb2.append(str2);
                }
            }
            if (sb2.length() > 0) {
                return sb2.toString();
            }
            return null;
        }

        public static Looper t() {
            Looper looperMyLooper = Looper.myLooper();
            return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
        }

        public static int u(int i10) {
            if (i10 == 2 || i10 == 4) {
                return 6005;
            }
            if (i10 == 10) {
                return 6004;
            }
            if (i10 == 7) {
                return 6005;
            }
            if (i10 == 8) {
                return 6003;
            }
            switch (i10) {
                case 15:
                    return 6003;
                case 16:
                case 18:
                    return 6005;
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                    return 6004;
                default:
                    switch (i10) {
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                            return 6002;
                        default:
                            return 6006;
                    }
            }
        }

        public static int v(String str) {
            String[] strArrSplit;
            int length;
            if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
                return 0;
            }
            String str2 = strArrSplit[length - 1];
            boolean z10 = length >= 3 && "neg".equals(strArrSplit[length - 2]);
            try {
                Objects.requireNonNull(str2);
                int i10 = Integer.parseInt(str2);
                return z10 ? -i10 : i10;
            } catch (NumberFormatException unused) {
                return 0;
            }
        }

        public static long w(long j10, float f10) {
            return f10 == 1.0f ? j10 : Math.round(j10 * ((double) f10));
        }

        public static long x(long j10) {
            return j10 == -9223372036854775807L ? System.currentTimeMillis() : j10 + SystemClock.elapsedRealtime();
        }

        public static int y(int i10) {
            if (i10 == 8) {
                return 3;
            }
            if (i10 == 16) {
                return 2;
            }
            if (i10 != 24) {
                return i10 != 32 ? 0 : 805306368;
            }
            return 536870912;
        }

        public static int z(int i10, int i11) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return i11;
                }
                if (i10 != 4) {
                    if (i10 != 268435456) {
                        if (i10 == 536870912) {
                            return i11 * 3;
                        }
                        if (i10 != 805306368) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                return i11 * 4;
            }
            return i11 * 2;
        }
    }
