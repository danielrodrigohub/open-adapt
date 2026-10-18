package m5;

import android.graphics.Color;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: ColorParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f10369a = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f10370b = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f10371c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Map<String, Integer> f10372d;

    static {
        HashMap map = new HashMap();
        f10372d = map;
        map.put("aliceblue", -984833);
        map.put("antiquewhite", -332841);
        map.put("aqua", -16711681);
        ca.a.e(-8388652, map, "aquamarine", -983041, "azure", -657956, "beige", -6972, "bisque");
        ca.a.e(-16777216, map, "black", -5171, "blanchedalmond", -16776961, "blue", -7722014, "blueviolet");
        ca.a.e(-5952982, map, "brown", -2180985, "burlywood", -10510688, "cadetblue", -8388864, "chartreuse");
        ca.a.e(-2987746, map, "chocolate", -32944, "coral", -10185235, "cornflowerblue", -1828, "cornsilk");
        map.put("crimson", -2354116);
        map.put("cyan", -16711681);
        map.put("darkblue", -16777077);
        map.put("darkcyan", -16741493);
        map.put("darkgoldenrod", -4684277);
        map.put("darkgray", -5658199);
        map.put("darkgreen", -16751616);
        map.put("darkgrey", -5658199);
        map.put("darkkhaki", -4343957);
        ca.a.e(-7667573, map, "darkmagenta", -11179217, "darkolivegreen", -29696, "darkorange", -6737204, "darkorchid");
        ca.a.e(-7667712, map, "darkred", -1468806, "darksalmon", -7357297, "darkseagreen", -12042869, "darkslateblue");
        map.put("darkslategray", -13676721);
        map.put("darkslategrey", -13676721);
        map.put("darkturquoise", -16724271);
        map.put("darkviolet", -7077677);
        map.put("deeppink", -60269);
        map.put("deepskyblue", -16728065);
        map.put("dimgray", -9868951);
        map.put("dimgrey", -9868951);
        ca.a.e(-14774017, map, "dodgerblue", -5103070, "firebrick", -1296, "floralwhite", -14513374, "forestgreen");
        map.put("fuchsia", -65281);
        map.put("gainsboro", -2302756);
        map.put("ghostwhite", -460545);
        map.put("gold", -10496);
        map.put("goldenrod", -2448096);
        map.put("gray", -8355712);
        map.put("green", -16744448);
        map.put("greenyellow", -5374161);
        map.put("grey", -8355712);
        ca.a.e(-983056, map, "honeydew", -38476, "hotpink", -3318692, "indianred", -11861886, "indigo");
        ca.a.e(-16, map, "ivory", -989556, "khaki", -1644806, "lavender", -3851, "lavenderblush");
        ca.a.e(-8586240, map, "lawngreen", -1331, "lemonchiffon", -5383962, "lightblue", -1015680, "lightcoral");
        map.put("lightcyan", -2031617);
        map.put("lightgoldenrodyellow", -329006);
        map.put("lightgray", -2894893);
        map.put("lightgreen", -7278960);
        map.put("lightgrey", -2894893);
        map.put("lightpink", -18751);
        map.put("lightsalmon", -24454);
        map.put("lightseagreen", -14634326);
        map.put("lightskyblue", -7876870);
        map.put("lightslategray", -8943463);
        map.put("lightslategrey", -8943463);
        map.put("lightsteelblue", -5192482);
        map.put("lightyellow", -32);
        map.put("lime", -16711936);
        map.put("limegreen", -13447886);
        map.put("linen", -331546);
        map.put("magenta", -65281);
        map.put("maroon", -8388608);
        map.put("mediumaquamarine", -10039894);
        ca.a.e(-16777011, map, "mediumblue", -4565549, "mediumorchid", -7114533, "mediumpurple", -12799119, "mediumseagreen");
        ca.a.e(-8689426, map, "mediumslateblue", -16713062, "mediumspringgreen", -12004916, "mediumturquoise", -3730043, "mediumvioletred");
        ca.a.e(-15132304, map, "midnightblue", -655366, "mintcream", -6943, "mistyrose", -6987, "moccasin");
        ca.a.e(-8531, map, "navajowhite", -16777088, "navy", -133658, "oldlace", -8355840, "olive");
        ca.a.e(-9728477, map, "olivedrab", -23296, "orange", -47872, "orangered", -2461482, "orchid");
        ca.a.e(-1120086, map, "palegoldenrod", -6751336, "palegreen", -5247250, "paleturquoise", -2396013, "palevioletred");
        ca.a.e(-4139, map, "papayawhip", -9543, "peachpuff", -3308225, "peru", -16181, "pink");
        ca.a.e(-2252579, map, "plum", -5185306, "powderblue", -8388480, "purple", -10079335, "rebeccapurple");
        ca.a.e(-65536, map, "red", -4419697, "rosybrown", -12490271, "royalblue", -7650029, "saddlebrown");
        ca.a.e(-360334, map, "salmon", -744352, "sandybrown", -13726889, "seagreen", -2578, "seashell");
        ca.a.e(-6270419, map, "sienna", -4144960, "silver", -7876885, "skyblue", -9807155, "slateblue");
        map.put("slategray", -9404272);
        map.put("slategrey", -9404272);
        map.put("snow", -1286);
        map.put("springgreen", -16711809);
        ca.a.e(-12156236, map, "steelblue", -2968436, "tan", -16744320, "teal", -2572328, "thistle");
        ca.a.e(-40121, map, "tomato", 0, "transparent", -12525360, "turquoise", -1146130, "violet");
        ca.a.e(-663885, map, "wheat", -1, "white", -657931, "whitesmoke", -256, "yellow");
        map.put("yellowgreen", -6632142);
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Integer>] */
    public static int a(String str, boolean z10) {
        int i10;
        a.a(!TextUtils.isEmpty(str));
        String strReplace = str.replace(" ", "");
        if (strReplace.charAt(0) == '#') {
            int i11 = (int) Long.parseLong(strReplace.substring(1), 16);
            if (strReplace.length() == 7) {
                return (-16777216) | i11;
            }
            if (strReplace.length() == 9) {
                return ((i11 & 255) << 24) | (i11 >>> 8);
            }
            throw new IllegalArgumentException();
        }
        if (strReplace.startsWith("rgba")) {
            Matcher matcher = (z10 ? f10371c : f10370b).matcher(strReplace);
            if (matcher.matches()) {
                if (z10) {
                    String strGroup = matcher.group(4);
                    Objects.requireNonNull(strGroup);
                    i10 = (int) (Float.parseFloat(strGroup) * 255.0f);
                } else {
                    String strGroup2 = matcher.group(4);
                    Objects.requireNonNull(strGroup2);
                    i10 = Integer.parseInt(strGroup2, 10);
                }
                String strGroup3 = matcher.group(1);
                Objects.requireNonNull(strGroup3);
                int i12 = Integer.parseInt(strGroup3, 10);
                String strGroup4 = matcher.group(2);
                Objects.requireNonNull(strGroup4);
                int i13 = Integer.parseInt(strGroup4, 10);
                String strGroup5 = matcher.group(3);
                Objects.requireNonNull(strGroup5);
                return Color.argb(i10, i12, i13, Integer.parseInt(strGroup5, 10));
            }
        } else if (strReplace.startsWith("rgb")) {
            Matcher matcher2 = f10369a.matcher(strReplace);
            if (matcher2.matches()) {
                String strGroup6 = matcher2.group(1);
                Objects.requireNonNull(strGroup6);
                int i14 = Integer.parseInt(strGroup6, 10);
                String strGroup7 = matcher2.group(2);
                Objects.requireNonNull(strGroup7);
                int i15 = Integer.parseInt(strGroup7, 10);
                String strGroup8 = matcher2.group(3);
                Objects.requireNonNull(strGroup8);
                return Color.rgb(i14, i15, Integer.parseInt(strGroup8, 10));
            }
        } else {
            Integer num = (Integer) f10372d.get(androidx.activity.k.s(strReplace));
            if (num != null) {
                return num.intValue();
            }
        }
        throw new IllegalArgumentException();
    }
}
