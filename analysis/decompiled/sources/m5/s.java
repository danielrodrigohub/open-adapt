package m5;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: MimeTypes.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList<a> f10431a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f10432b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX INFO: compiled from: MimeTypes.java */
    public static final class a {
    }

    /* JADX INFO: compiled from: MimeTypes.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f10433a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10434b;

        public b(int i10, int i11) {
            this.f10433a = i10;
            this.f10434b = i11;
        }

        public final int a() {
            int i10 = this.f10434b;
            if (i10 == 2) {
                return 10;
            }
            if (i10 == 5) {
                return 11;
            }
            if (i10 == 29) {
                return 12;
            }
            if (i10 == 42) {
                return 16;
            }
            if (i10 != 22) {
                return i10 != 23 ? 0 : 15;
            }
            return 1073741824;
        }
    }

    public static boolean a(String str, String str2) {
        b bVarG;
        int iA;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/ac3":
            case "audio/raw":
            case "audio/eac3":
            case "audio/flac":
            case "audio/mpeg":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                return true;
            case "audio/mp4a-latm":
                return (str2 == null || (bVarG = g(str2)) == null || (iA = bVarG.a()) == 0 || iA == 16) ? false : true;
            default:
                return false;
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : g0.T(str)) {
            String strE = e(str2);
            if (strE != null && k(strE)) {
                return strE;
            }
        }
        return null;
    }

    public static String c(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] strArrT = g0.T(str);
        StringBuilder sb2 = new StringBuilder();
        for (String str3 : strArrT) {
            if (str2.equals(e(str3))) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str3);
            }
        }
        if (sb2.length() > 0) {
            return sb2.toString();
        }
        return null;
    }

    public static int d(String str, String str2) {
        b bVarG;
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (bVarG = g(str2)) == null) {
                    return 0;
                }
                return bVarG.a();
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }

    public static String e(String str) {
        b bVarG;
        String strF = null;
        if (str == null) {
            return null;
        }
        String strS = androidx.activity.k.s(str.trim());
        if (strS.startsWith("avc1") || strS.startsWith("avc3")) {
            return "video/avc";
        }
        if (strS.startsWith("hev1") || strS.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (strS.startsWith("dvav") || strS.startsWith("dva1") || strS.startsWith("dvhe") || strS.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (strS.startsWith("av01")) {
            return "video/av01";
        }
        if (strS.startsWith("vp9") || strS.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (strS.startsWith("vp8") || strS.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (strS.startsWith("mp4a")) {
            if (strS.startsWith("mp4a.") && (bVarG = g(strS)) != null) {
                strF = f(bVarG.f10433a);
            }
            return strF == null ? "audio/mp4a-latm" : strF;
        }
        if (strS.startsWith("mha1")) {
            return "audio/mha1";
        }
        if (strS.startsWith("mhm1")) {
            return "audio/mhm1";
        }
        if (strS.startsWith("ac-3") || strS.startsWith("dac3")) {
            return "audio/ac3";
        }
        if (strS.startsWith("ec-3") || strS.startsWith("dec3")) {
            return "audio/eac3";
        }
        if (strS.startsWith("ec+3")) {
            return "audio/eac3-joc";
        }
        if (strS.startsWith("ac-4") || strS.startsWith("dac4")) {
            return "audio/ac4";
        }
        if (strS.startsWith("dtsc")) {
            return "audio/vnd.dts";
        }
        if (strS.startsWith("dtse")) {
            return "audio/vnd.dts.hd;profile=lbr";
        }
        if (strS.startsWith("dtsh") || strS.startsWith("dtsl")) {
            return "audio/vnd.dts.hd";
        }
        if (strS.startsWith("dtsx")) {
            return "audio/vnd.dts.uhd;profile=p2";
        }
        if (strS.startsWith("opus")) {
            return "audio/opus";
        }
        if (strS.startsWith("vorbis")) {
            return "audio/vorbis";
        }
        if (strS.startsWith("flac")) {
            return "audio/flac";
        }
        if (strS.startsWith("stpp")) {
            return "application/ttml+xml";
        }
        if (strS.startsWith("wvtt")) {
            return "text/vtt";
        }
        if (strS.contains("cea708")) {
            return "application/cea-708";
        }
        if (strS.contains("eia608") || strS.contains("cea608")) {
            return "application/cea-608";
        }
        int size = f10431a.size();
        for (int i10 = 0; i10 < size; i10++) {
            Objects.requireNonNull(f10431a.get(i10));
            if (strS.startsWith(null)) {
                break;
            }
        }
        return null;
    }

    public static String f(int i10) {
        if (i10 == 32) {
            return "video/mp4v-es";
        }
        if (i10 == 33) {
            return "video/avc";
        }
        if (i10 == 35) {
            return "video/hevc";
        }
        if (i10 == 64) {
            return "audio/mp4a-latm";
        }
        if (i10 == 163) {
            return "video/wvc1";
        }
        if (i10 == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i10 == 165) {
            return "audio/ac3";
        }
        if (i10 == 166) {
            return "audio/eac3";
        }
        switch (i10) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            default:
                switch (i10) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    public static b g(String str) {
        Matcher matcher = f10432b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        Objects.requireNonNull(strGroup);
        String strGroup2 = matcher.group(2);
        try {
            return new b(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String h(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static int i(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (k(str)) {
            return 1;
        }
        if (n(str)) {
            return 2;
        }
        if (m(str)) {
            return 3;
        }
        if (l(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        int size = f10431a.size();
        for (int i10 = 0; i10 < size; i10++) {
            Objects.requireNonNull(f10431a.get(i10));
            if (str.equals(null)) {
                return 0;
            }
        }
        return -1;
    }

    public static String j(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : g0.T(str)) {
            String strE = e(str2);
            if (strE != null && n(strE)) {
                return strE;
            }
        }
        return null;
    }

    public static boolean k(String str) {
        return "audio".equals(h(str));
    }

    public static boolean l(String str) {
        return "image".equals(h(str));
    }

    public static boolean m(String str) {
        return "text".equals(h(str)) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    public static boolean n(String str) {
        return "video".equals(h(str));
    }
}
