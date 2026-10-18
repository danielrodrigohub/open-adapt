package g5;

import android.text.Layout;
import android.text.TextUtils;
import androidx.activity.k;
import androidx.recyclerview.widget.s;
import g0.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import m5.h0;
import m5.p;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import u6.a0;
import u6.r0;
import u6.u0;
import u6.v0;
import u6.w0;
import z4.i;

/* JADX INFO: compiled from: TtmlDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends z4.f {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Pattern f7639n = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Pattern f7640o = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Pattern f7641p = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Pattern f7642q = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final Pattern f7643r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Pattern f7644s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Pattern f7645t = Pattern.compile("^(\\d+) (\\d+)$");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final b f7646u = new b(30.0f, 1, 1);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final a f7647v = new a(15);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final XmlPullParserFactory f7648m;

    /* JADX INFO: compiled from: TtmlDecoder.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f7649a;

        public a(int i10) {
            this.f7649a = i10;
        }
    }

    /* JADX INFO: compiled from: TtmlDecoder.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f7650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f7651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f7652c;

        public b(float f10, int i10, int i11) {
            this.f7650a = f10;
            this.f7651b = i10;
            this.f7652c = i11;
        }
    }

    /* JADX INFO: renamed from: g5.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TtmlDecoder.java */
    public static final class C0146c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f7653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f7654b;

        public C0146c(int i10, int i11) {
            this.f7653a = i10;
            this.f7654b = i11;
        }
    }

    public c() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f7648m = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    public static f l(f fVar) {
        return fVar == null ? new f() : fVar;
    }

    public static boolean m(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    public static Layout.Alignment n(String str) {
        String strS = k.s(str);
        Objects.requireNonNull(strS);
        switch (strS) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    public static a o(XmlPullParser xmlPullParser, a aVar) throws i {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f7645t.matcher(attributeValue);
        if (!matcher.matches()) {
            a4.g.f("Ignoring malformed cell resolution: ", attributeValue, "TtmlDecoder");
            return aVar;
        }
        try {
            String strGroup = matcher.group(1);
            Objects.requireNonNull(strGroup);
            int i10 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            Objects.requireNonNull(strGroup2);
            int i11 = Integer.parseInt(strGroup2);
            if (i10 != 0 && i11 != 0) {
                return new a(i11);
            }
            throw new i("Invalid cell resolution " + i10 + " " + i11);
        } catch (NumberFormatException unused) {
            a4.g.f("Ignoring malformed cell resolution: ", attributeValue, "TtmlDecoder");
            return aVar;
        }
    }

    public static void p(String str, f fVar) throws i {
        Matcher matcher;
        int i10 = g0.f10384a;
        String[] strArrSplit = str.split("\\s+", -1);
        if (strArrSplit.length == 1) {
            matcher = f7641p.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                throw new i(s.a(a0.b.c("Invalid number of entries for fontSize: "), strArrSplit.length, "."));
            }
            matcher = f7641p.matcher(strArrSplit[1]);
            p.g("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new i(a0.d.c("Invalid expression for fontSize: '", str, "'."));
        }
        String strGroup = matcher.group(3);
        Objects.requireNonNull(strGroup);
        strGroup.hashCode();
        switch (strGroup) {
            case "%":
                fVar.f7687j = 3;
                break;
            case "em":
                fVar.f7687j = 2;
                break;
            case "px":
                fVar.f7687j = 1;
                break;
            default:
                throw new i(a0.d.c("Invalid unit for fontSize: '", strGroup, "'."));
        }
        String strGroup2 = matcher.group(1);
        Objects.requireNonNull(strGroup2);
        fVar.f7688k = Float.parseFloat(strGroup2);
    }

    public static b q(XmlPullParser xmlPullParser) throws i {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f10 = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            int i11 = g0.f10384a;
            String[] strArrSplit = attributeValue2.split(" ", -1);
            if (strArrSplit.length != 2) {
                throw new i("frameRateMultiplier doesn't have 2 parts");
            }
            f10 = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
        }
        b bVar = f7646u;
        int i12 = bVar.f7651b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i12 = Integer.parseInt(attributeValue3);
        }
        int i13 = bVar.f7652c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i13 = Integer.parseInt(attributeValue4);
        }
        return new b(i10 * f10, i12, i13);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x010c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:41:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0107  */
    /* JADX WARN: Code duplicated, block: B:47:0x0136  */
    /* JADX WARN: Code duplicated, block: B:49:0x0145  */
    /* JADX WARN: Code duplicated, block: B:52:0x014e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0152  */
    /* JADX WARN: Code duplicated, block: B:54:0x015a  */
    /* JADX WARN: Code duplicated, block: B:57:0x016f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0182  */
    /* JADX WARN: Code duplicated, block: B:63:0x018b  */
    /* JADX WARN: Code duplicated, block: B:64:0x018d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0196  */
    /* JADX WARN: Code duplicated, block: B:68:0x0198  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:76:0x01aa A[FALL_THROUGH, PHI: r5
      0x01aa: PHI (r5v8 int) = (r5v7 int), (r5v7 int), (r5v10 int) binds: [B:56:0x016d, B:72:0x01a2, B:74:0x01a6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:79:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c3  */
    public static Map<String, f> r(XmlPullParser xmlPullParser, Map<String, f> map, a aVar, C0146c c0146c, Map<String, e> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        String strA;
        e eVar;
        float f10;
        float f11;
        String strA2;
        Matcher matcher;
        Matcher matcher2;
        float f12;
        float f13;
        String strA3;
        int i10;
        float f14;
        int i11;
        String strA4;
        int i12;
        String strS;
        String strS2;
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, "style")) {
                String strA5 = h0.a(xmlPullParser, "style");
                f fVarT = t(xmlPullParser, new f());
                if (strA5 != null) {
                    for (String str : u(strA5)) {
                        fVarT.a(map.get(str));
                    }
                }
                String str2 = fVarT.f7689l;
                if (str2 != null) {
                    map.put(str2, fVarT);
                }
            } else if (h0.g(xmlPullParser, "region")) {
                String strA6 = h0.a(xmlPullParser, "id");
                if (strA6 != null) {
                    String strA7 = h0.a(xmlPullParser, "origin");
                    if (strA7 != null) {
                        Pattern pattern = f7643r;
                        Matcher matcher3 = pattern.matcher(strA7);
                        Pattern pattern2 = f7644s;
                        Matcher matcher4 = pattern2.matcher(strA7);
                        if (matcher3.matches()) {
                            try {
                                String strGroup = matcher3.group(1);
                                Objects.requireNonNull(strGroup);
                                f10 = Float.parseFloat(strGroup) / 100.0f;
                                String strGroup2 = matcher3.group(2);
                                Objects.requireNonNull(strGroup2);
                                f11 = Float.parseFloat(strGroup2) / 100.0f;
                                strA2 = h0.a(xmlPullParser, "extent");
                                if (strA2 != null) {
                                    matcher = pattern.matcher(strA2);
                                    matcher2 = pattern2.matcher(strA2);
                                    if (matcher.matches()) {
                                        try {
                                            String strGroup3 = matcher.group(1);
                                            Objects.requireNonNull(strGroup3);
                                            float f15 = Float.parseFloat(strGroup3) / 100.0f;
                                            String strGroup4 = matcher.group(2);
                                            Objects.requireNonNull(strGroup4);
                                            f12 = Float.parseFloat(strGroup4) / 100.0f;
                                            f13 = f15;
                                        } catch (NumberFormatException unused) {
                                            a4.g.f("Ignoring region with malformed extent: ", strA7, "TtmlDecoder");
                                            eVar = null;
                                        }
                                    } else if (matcher2.matches()) {
                                        a4.g.f("Ignoring region with unsupported extent: ", strA7, "TtmlDecoder");
                                    } else if (c0146c == null) {
                                        a4.g.f("Ignoring region with missing tts:extent: ", strA7, "TtmlDecoder");
                                    } else {
                                        try {
                                            String strGroup5 = matcher2.group(1);
                                            Objects.requireNonNull(strGroup5);
                                            int i13 = Integer.parseInt(strGroup5);
                                            String strGroup6 = matcher2.group(2);
                                            Objects.requireNonNull(strGroup6);
                                            float f16 = Integer.parseInt(strGroup6);
                                            f13 = i13 / c0146c.f7653a;
                                            f12 = f16 / c0146c.f7654b;
                                        } catch (NumberFormatException unused2) {
                                            a4.g.f("Ignoring region with malformed extent: ", strA7, "TtmlDecoder");
                                            eVar = null;
                                        }
                                    }
                                    strA3 = h0.a(xmlPullParser, "displayAlign");
                                    if (strA3 != null) {
                                        strS2 = k.s(strA3);
                                        Objects.requireNonNull(strS2);
                                        if (!strS2.equals("center")) {
                                            f14 = (f12 / 2.0f) + f11;
                                            i10 = 1;
                                        } else if (strS2.equals("after")) {
                                            f14 = f11 + f12;
                                            i10 = 2;
                                        } else {
                                            i10 = 0;
                                            f14 = f11;
                                        }
                                    } else {
                                        i10 = 0;
                                        f14 = f11;
                                    }
                                    float f17 = 1.0f / aVar.f7649a;
                                    i11 = Integer.MIN_VALUE;
                                    strA4 = h0.a(xmlPullParser, "writingMode");
                                    if (strA4 != null) {
                                        strS = k.s(strA4);
                                        Objects.requireNonNull(strS);
                                        strS.hashCode();
                                        switch (strS) {
                                            case "tb":
                                            case "tblr":
                                                i12 = 2;
                                                break;
                                            case "tbrl":
                                                i11 = 1;
                                            default:
                                                i12 = i11;
                                                break;
                                        }
                                    } else {
                                        i12 = i11;
                                    }
                                    eVar = new e(strA6, f10, f14, 0, i10, f13, f12, 1, f17, i12);
                                } else {
                                    p.g("TtmlDecoder", "Ignoring region without an extent");
                                }
                            } catch (NumberFormatException unused3) {
                                a4.g.f("Ignoring region with malformed origin: ", strA7, "TtmlDecoder");
                            }
                        } else if (!matcher4.matches()) {
                            a4.g.f("Ignoring region with unsupported origin: ", strA7, "TtmlDecoder");
                        } else if (c0146c == null) {
                            a4.g.f("Ignoring region with missing tts:extent: ", strA7, "TtmlDecoder");
                        } else {
                            try {
                                String strGroup7 = matcher4.group(1);
                                Objects.requireNonNull(strGroup7);
                                int i14 = Integer.parseInt(strGroup7);
                                String strGroup8 = matcher4.group(2);
                                Objects.requireNonNull(strGroup8);
                                int i15 = Integer.parseInt(strGroup8);
                                float f18 = i14 / c0146c.f7653a;
                                float f19 = i15 / c0146c.f7654b;
                                f10 = f18;
                                f11 = f19;
                                strA2 = h0.a(xmlPullParser, "extent");
                                if (strA2 != null) {
                                    matcher = pattern.matcher(strA2);
                                    matcher2 = pattern2.matcher(strA2);
                                    if (matcher.matches()) {
                                        String strGroup9 = matcher.group(1);
                                        Objects.requireNonNull(strGroup9);
                                        float f110 = Float.parseFloat(strGroup9) / 100.0f;
                                        String strGroup10 = matcher.group(2);
                                        Objects.requireNonNull(strGroup10);
                                        f12 = Float.parseFloat(strGroup10) / 100.0f;
                                        f13 = f110;
                                    } else if (matcher2.matches()) {
                                        a4.g.f("Ignoring region with unsupported extent: ", strA7, "TtmlDecoder");
                                    } else if (c0146c == null) {
                                        a4.g.f("Ignoring region with missing tts:extent: ", strA7, "TtmlDecoder");
                                    } else {
                                        String strGroup11 = matcher2.group(1);
                                        Objects.requireNonNull(strGroup11);
                                        int i16 = Integer.parseInt(strGroup11);
                                        String strGroup12 = matcher2.group(2);
                                        Objects.requireNonNull(strGroup12);
                                        float f111 = Integer.parseInt(strGroup12);
                                        f13 = i16 / c0146c.f7653a;
                                        f12 = f111 / c0146c.f7654b;
                                    }
                                    strA3 = h0.a(xmlPullParser, "displayAlign");
                                    if (strA3 != null) {
                                        strS2 = k.s(strA3);
                                        Objects.requireNonNull(strS2);
                                        if (!strS2.equals("center")) {
                                            f14 = (f12 / 2.0f) + f11;
                                            i10 = 1;
                                        } else if (strS2.equals("after")) {
                                            i10 = 0;
                                            f14 = f11;
                                        } else {
                                            f14 = f11 + f12;
                                            i10 = 2;
                                        }
                                    } else {
                                        i10 = 0;
                                        f14 = f11;
                                    }
                                    float f112 = 1.0f / aVar.f7649a;
                                    i11 = Integer.MIN_VALUE;
                                    strA4 = h0.a(xmlPullParser, "writingMode");
                                    if (strA4 != null) {
                                        strS = k.s(strA4);
                                        Objects.requireNonNull(strS);
                                        strS.hashCode();
                                        switch (strS) {
                                            case 3694:
                                                if (strS.equals("tb")) {
                                                }
                                                break;
                                            case 3553396:
                                                if (strS.equals("tblr")) {
                                                }
                                                break;
                                            case 3553576:
                                                if (strS.equals("tbrl")) {
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
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:216)
                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
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
                                            Method dump skipped, instruction units count: 568
                                            To view this dump add '--comments-level debug' option
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: g5.c.r(org.xmlpull.v1.XmlPullParser, java.util.Map, g5.c$a, g5.c$c, java.util.Map, java.util.Map):java.util.Map");
                                    }

                                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                                    /* JADX WARN: Code duplicated, block: B:31:0x007c  */
                                    /* JADX WARN: Code duplicated, block: B:76:0x00fc  */
                                    public static d s(XmlPullParser xmlPullParser, d dVar, Map<String, e> map, b bVar) throws i {
                                        long j10;
                                        long j11;
                                        byte b10;
                                        XmlPullParser xmlPullParser2 = xmlPullParser;
                                        int attributeCount = xmlPullParser.getAttributeCount();
                                        f fVarT = t(xmlPullParser2, null);
                                        String strSubstring = null;
                                        String str = "";
                                        long jV = -9223372036854775807L;
                                        long jV2 = -9223372036854775807L;
                                        long jV3 = -9223372036854775807L;
                                        String[] strArr = null;
                                        int i10 = 0;
                                        while (i10 < attributeCount) {
                                            String attributeName = xmlPullParser2.getAttributeName(i10);
                                            String attributeValue = xmlPullParser2.getAttributeValue(i10);
                                            Objects.requireNonNull(attributeName);
                                            switch (attributeName) {
                                                case "region":
                                                    b10 = 0;
                                                    break;
                                                case "dur":
                                                    b10 = 1;
                                                    break;
                                                case "end":
                                                    b10 = 2;
                                                    break;
                                                case "begin":
                                                    b10 = 3;
                                                    break;
                                                case "style":
                                                    b10 = 4;
                                                    break;
                                                case "backgroundImage":
                                                    b10 = 5;
                                                    break;
                                                default:
                                                    b10 = -1;
                                                    break;
                                            }
                                            if (b10 != 0) {
                                                if (b10 == 1) {
                                                    jV3 = v(attributeValue, bVar);
                                                } else if (b10 == 2) {
                                                    jV2 = v(attributeValue, bVar);
                                                } else if (b10 == 3) {
                                                    jV = v(attributeValue, bVar);
                                                } else if (b10 == 4) {
                                                    String[] strArrU = u(attributeValue);
                                                    if (strArrU.length > 0) {
                                                        strArr = strArrU;
                                                    }
                                                } else if (b10 == 5 && attributeValue.startsWith("#")) {
                                                    strSubstring = attributeValue.substring(1);
                                                }
                                            } else if (map.containsKey(attributeValue)) {
                                                str = attributeValue;
                                            }
                                            i10++;
                                            xmlPullParser2 = xmlPullParser;
                                        }
                                        if (dVar != null) {
                                            long j12 = dVar.f7658d;
                                            j10 = -9223372036854775807L;
                                            if (j12 != -9223372036854775807L) {
                                                if (jV != -9223372036854775807L) {
                                                    jV += j12;
                                                }
                                                if (jV2 != -9223372036854775807L) {
                                                    jV2 += j12;
                                                }
                                            }
                                        } else {
                                            j10 = -9223372036854775807L;
                                        }
                                        if (jV2 != j10) {
                                            j11 = jV2;
                                        } else if (jV3 != j10) {
                                            j11 = jV + jV3;
                                        } else if (dVar != null) {
                                            long j13 = dVar.f7659e;
                                            if (j13 != j10) {
                                                j11 = j13;
                                            } else {
                                                j11 = jV2;
                                            }
                                        } else {
                                            j11 = jV2;
                                        }
                                        return new d(xmlPullParser.getName(), null, jV, j11, fVarT, strArr, str, strSubstring, dVar);
                                    }

                                    /* JADX WARN: Code duplicated, block: B:111:0x01a8  */
                                    /* JADX WARN: Code duplicated, block: B:130:0x01eb  */
                                    /* JADX WARN: Code duplicated, block: B:152:0x0245  */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    public static f t(XmlPullParser xmlPullParser, f fVar) {
                                        byte b10;
                                        Object[] objArr;
                                        g5.b bVar;
                                        int attributeCount = xmlPullParser.getAttributeCount();
                                        for (int i10 = 0; i10 < attributeCount; i10++) {
                                            String attributeValue = xmlPullParser.getAttributeValue(i10);
                                            String attributeName = xmlPullParser.getAttributeName(i10);
                                            Objects.requireNonNull(attributeName);
                                            int i11 = 3;
                                            int i12 = -1;
                                            byte b11 = 1;
                                            switch (attributeName) {
                                                case "fontStyle":
                                                    fVar = l(fVar);
                                                    fVar.f7686i = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                                                    break;
                                                case "fontFamily":
                                                    fVar = l(fVar);
                                                    fVar.f7678a = attributeValue;
                                                    break;
                                                case "textAlign":
                                                    fVar = l(fVar);
                                                    fVar.f7692o = n(attributeValue);
                                                    break;
                                                case "textDecoration":
                                                    String strS = k.s(attributeValue);
                                                    Objects.requireNonNull(strS);
                                                    strS.hashCode();
                                                    switch (strS) {
                                                        case "nounderline":
                                                            fVar = l(fVar);
                                                            fVar.f7684g = 0;
                                                            break;
                                                        case "underline":
                                                            fVar = l(fVar);
                                                            fVar.f7684g = 1;
                                                            break;
                                                        case "nolinethrough":
                                                            fVar = l(fVar);
                                                            fVar.f7683f = 0;
                                                            break;
                                                        case "linethrough":
                                                            fVar = l(fVar);
                                                            fVar.f7683f = 1;
                                                            break;
                                                    }
                                                    break;
                                                case "fontWeight":
                                                    fVar = l(fVar);
                                                    fVar.f7685h = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                                                    break;
                                                case "id":
                                                    if (!"style".equals(xmlPullParser.getName())) {
                                                        break;
                                                    } else {
                                                        fVar = l(fVar);
                                                        fVar.f7689l = attributeValue;
                                                        break;
                                                    }
                                                    break;
                                                case "ruby":
                                                    String strS2 = k.s(attributeValue);
                                                    Objects.requireNonNull(strS2);
                                                    strS2.hashCode();
                                                    switch (strS2) {
                                                        case "baseContainer":
                                                        case "base":
                                                            fVar = l(fVar);
                                                            fVar.f7690m = 2;
                                                            break;
                                                        case "container":
                                                            fVar = l(fVar);
                                                            fVar.f7690m = 1;
                                                            break;
                                                        case "delimiter":
                                                            fVar = l(fVar);
                                                            fVar.f7690m = 4;
                                                            break;
                                                        case "textContainer":
                                                        case "text":
                                                            fVar = l(fVar);
                                                            fVar.f7690m = 3;
                                                            break;
                                                    }
                                                    break;
                                                case "color":
                                                    fVar = l(fVar);
                                                    try {
                                                        fVar.f7679b = m5.d.a(attributeValue, false);
                                                        fVar.f7680c = true;
                                                        break;
                                                    } catch (IllegalArgumentException unused) {
                                                        a4.g.f("Failed parsing color value: ", attributeValue, "TtmlDecoder");
                                                        break;
                                                    }
                                                    break;
                                                case "shear":
                                                    fVar = l(fVar);
                                                    Matcher matcher = f7642q.matcher(attributeValue);
                                                    float fMin = Float.MAX_VALUE;
                                                    if (matcher.matches()) {
                                                        try {
                                                            String strGroup = matcher.group(1);
                                                            Objects.requireNonNull(strGroup);
                                                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
                                                        } catch (NumberFormatException e10) {
                                                            p.h("TtmlDecoder", "Failed to parse shear: " + attributeValue, e10);
                                                        }
                                                        break;
                                                    } else {
                                                        a4.g.f("Invalid value for shear: ", attributeValue, "TtmlDecoder");
                                                    }
                                                    fVar.f7696s = fMin;
                                                    break;
                                                case "textCombine":
                                                    String strS3 = k.s(attributeValue);
                                                    Objects.requireNonNull(strS3);
                                                    if (!strS3.equals("all")) {
                                                        if (strS3.equals("none")) {
                                                            fVar = l(fVar);
                                                            fVar.f7694q = 0;
                                                        }
                                                        break;
                                                    } else {
                                                        fVar = l(fVar);
                                                        fVar.f7694q = 1;
                                                        break;
                                                    }
                                                    break;
                                                case "fontSize":
                                                    try {
                                                        fVar = l(fVar);
                                                        p(attributeValue, fVar);
                                                        break;
                                                    } catch (i unused2) {
                                                        a4.g.f("Failed parsing fontSize value: ", attributeValue, "TtmlDecoder");
                                                        break;
                                                    }
                                                    break;
                                                case "textEmphasis":
                                                    fVar = l(fVar);
                                                    Pattern pattern = g5.b.f7631d;
                                                    g5.b bVar2 = null;
                                                    if (attributeValue != null) {
                                                        String strS4 = k.s(attributeValue.trim());
                                                        if (!strS4.isEmpty()) {
                                                            String[] strArrSplit = TextUtils.split(strS4, g5.b.f7631d);
                                                            int length = strArrSplit.length;
                                                            Set setR = length != 0 ? length != 1 ? a0.r(strArrSplit.length, (Object[]) strArrSplit.clone()) : new w0(strArrSplit[0]) : r0.f15986q;
                                                            String str = (String) n.a(v0.d(g5.b.f7635h, setR), "outside");
                                                            int iHashCode = str.hashCode();
                                                            if (iHashCode != -1392885889) {
                                                                if (iHashCode != -1106037339) {
                                                                    if (iHashCode == 92734940 && str.equals("after")) {
                                                                        b10 = 0;
                                                                    } else {
                                                                        b10 = -1;
                                                                    }
                                                                } else if (str.equals("outside")) {
                                                                    b10 = 1;
                                                                } else {
                                                                    b10 = -1;
                                                                }
                                                            } else if (str.equals("before")) {
                                                                b10 = 2;
                                                            } else {
                                                                b10 = -1;
                                                            }
                                                            int i13 = b10 != 0 ? b10 != 1 ? 1 : -2 : 2;
                                                            v0.a aVar = (v0.a) v0.d(g5.b.f7632e, setR);
                                                            if (aVar.isEmpty()) {
                                                                v0.e eVarD = v0.d(g5.b.f7634g, setR);
                                                                v0.e eVarD2 = v0.d(g5.b.f7633f, setR);
                                                                if (((v0.a) eVarD).isEmpty() && ((v0.a) eVarD2).isEmpty()) {
                                                                    bVar = new g5.b(-1, 0, i13);
                                                                } else {
                                                                    String str2 = (String) n.a(eVarD, "filled");
                                                                    int iHashCode2 = str2.hashCode();
                                                                    if (iHashCode2 != -1274499742) {
                                                                        if (iHashCode2 == 3417674 && str2.equals("open")) {
                                                                            objArr = 0;
                                                                        } else {
                                                                            objArr = -1;
                                                                        }
                                                                    } else if (str2.equals("filled")) {
                                                                        objArr = 1;
                                                                    } else {
                                                                        objArr = -1;
                                                                    }
                                                                    int i14 = objArr != 0 ? 1 : 2;
                                                                    String str3 = (String) n.a(eVarD2, "circle");
                                                                    int iHashCode3 = str3.hashCode();
                                                                    if (iHashCode3 != -1360216880) {
                                                                        if (iHashCode3 != -905816648) {
                                                                            if (iHashCode3 == 99657 && str3.equals("dot")) {
                                                                                i12 = 0;
                                                                            }
                                                                        } else if (str3.equals("sesame")) {
                                                                            i12 = 1;
                                                                        }
                                                                    } else if (str3.equals("circle")) {
                                                                        i12 = 2;
                                                                    }
                                                                    if (i12 == 0) {
                                                                        i11 = 2;
                                                                    } else if (i12 != 1) {
                                                                        i11 = 1;
                                                                    }
                                                                    bVar = new g5.b(i11, i14, i13);
                                                                }
                                                            } else {
                                                                String str4 = (String) new u0(aVar).next();
                                                                int iHashCode4 = str4.hashCode();
                                                                if (iHashCode4 != 3005871) {
                                                                    if (iHashCode4 == 3387192 && str4.equals("none")) {
                                                                        b11 = 0;
                                                                    } else {
                                                                        b11 = -1;
                                                                    }
                                                                } else if (!str4.equals("auto")) {
                                                                    b11 = -1;
                                                                }
                                                                bVar = new g5.b(b11 == 0 ? 0 : -1, 0, i13);
                                                            }
                                                            bVar2 = bVar;
                                                        }
                                                    }
                                                    fVar.f7695r = bVar2;
                                                    break;
                                                case "rubyPosition":
                                                    String strS5 = k.s(attributeValue);
                                                    Objects.requireNonNull(strS5);
                                                    if (!strS5.equals("before")) {
                                                        if (strS5.equals("after")) {
                                                            fVar = l(fVar);
                                                            fVar.f7691n = 2;
                                                        }
                                                        break;
                                                    } else {
                                                        fVar = l(fVar);
                                                        fVar.f7691n = 1;
                                                        break;
                                                    }
                                                    break;
                                                case "backgroundColor":
                                                    fVar = l(fVar);
                                                    try {
                                                        fVar.f7681d = m5.d.a(attributeValue, false);
                                                        fVar.f7682e = true;
                                                        break;
                                                    } catch (IllegalArgumentException unused3) {
                                                        a4.g.f("Failed parsing background value: ", attributeValue, "TtmlDecoder");
                                                        break;
                                                    }
                                                    break;
                                                case "multiRowAlign":
                                                    fVar = l(fVar);
                                                    fVar.f7693p = n(attributeValue);
                                                    break;
                                            }
                                        }
                                        return fVar;
                                    }

                                    public static String[] u(String str) {
                                        String strTrim = str.trim();
                                        if (strTrim.isEmpty()) {
                                            return new String[0];
                                        }
                                        int i10 = g0.f10384a;
                                        return strTrim.split("\\s+", -1);
                                    }

                                    public static long v(String str, b bVar) throws i {
                                        double d10;
                                        double d11;
                                        Matcher matcher = f7639n.matcher(str);
                                        if (matcher.matches()) {
                                            String strGroup = matcher.group(1);
                                            Objects.requireNonNull(strGroup);
                                            double d12 = Long.parseLong(strGroup) * 3600;
                                            String strGroup2 = matcher.group(2);
                                            Objects.requireNonNull(strGroup2);
                                            double d13 = d12 + (Long.parseLong(strGroup2) * 60);
                                            String strGroup3 = matcher.group(3);
                                            Objects.requireNonNull(strGroup3);
                                            double d14 = d13 + Long.parseLong(strGroup3);
                                            String strGroup4 = matcher.group(4);
                                            double d15 = d14 + (strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d);
                                            String strGroup5 = matcher.group(5);
                                            double d16 = d15 + (strGroup5 != null ? Long.parseLong(strGroup5) / bVar.f7650a : 0.0d);
                                            String strGroup6 = matcher.group(6);
                                            return (long) ((d16 + (strGroup6 != null ? (Long.parseLong(strGroup6) / ((double) bVar.f7651b)) / ((double) bVar.f7650a) : 0.0d)) * 1000000.0d);
                                        }
                                        Matcher matcher2 = f7640o.matcher(str);
                                        if (!matcher2.matches()) {
                                            throw new i(androidx.recyclerview.widget.d.c("Malformed time expression: ", str));
                                        }
                                        String strGroup7 = matcher2.group(1);
                                        Objects.requireNonNull(strGroup7);
                                        double d17 = Double.parseDouble(strGroup7);
                                        String strGroup8 = matcher2.group(2);
                                        Objects.requireNonNull(strGroup8);
                                        strGroup8.hashCode();
                                        switch (strGroup8) {
                                            case "f":
                                                d10 = bVar.f7650a;
                                                d17 /= d10;
                                                return (long) (d17 * 1000000.0d);
                                            case "h":
                                                d11 = 3600.0d;
                                                break;
                                            case "m":
                                                d11 = 60.0d;
                                                break;
                                            case "t":
                                                d10 = bVar.f7652c;
                                                d17 /= d10;
                                                return (long) (d17 * 1000000.0d);
                                            case "ms":
                                                d10 = 1000.0d;
                                                d17 /= d10;
                                                return (long) (d17 * 1000000.0d);
                                            default:
                                                return (long) (d17 * 1000000.0d);
                                        }
                                        d17 *= d11;
                                        return (long) (d17 * 1000000.0d);
                                    }

                                    public static C0146c w(XmlPullParser xmlPullParser) {
                                        String strA = h0.a(xmlPullParser, "extent");
                                        if (strA == null) {
                                            return null;
                                        }
                                        Matcher matcher = f7644s.matcher(strA);
                                        if (!matcher.matches()) {
                                            a4.g.f("Ignoring non-pixel tts extent: ", strA, "TtmlDecoder");
                                            return null;
                                        }
                                        try {
                                            String strGroup = matcher.group(1);
                                            Objects.requireNonNull(strGroup);
                                            int i10 = Integer.parseInt(strGroup);
                                            String strGroup2 = matcher.group(2);
                                            Objects.requireNonNull(strGroup2);
                                            return new C0146c(i10, Integer.parseInt(strGroup2));
                                        } catch (NumberFormatException unused) {
                                            a4.g.f("Ignoring malformed tts extent: ", strA, "TtmlDecoder");
                                            return null;
                                        }
                                    }

                                    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.ArrayList, java.util.List<g5.d>] */
                                    @Override // z4.f
                                    public final z4.g k(byte[] bArr, int i10, boolean z10) throws i {
                                        b bVar;
                                        try {
                                            XmlPullParser xmlPullParserNewPullParser = this.f7648m.newPullParser();
                                            HashMap map = new HashMap();
                                            HashMap map2 = new HashMap();
                                            HashMap map3 = new HashMap();
                                            map2.put("", new e("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
                                            C0146c c0146cW = null;
                                            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i10), null);
                                            ArrayDeque arrayDeque = new ArrayDeque();
                                            b bVarQ = f7646u;
                                            a aVarO = f7647v;
                                            int i11 = 0;
                                            g gVar = null;
                                            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                                                d dVar = (d) arrayDeque.peek();
                                                if (i11 == 0) {
                                                    String name = xmlPullParserNewPullParser.getName();
                                                    if (eventType == 2) {
                                                        if ("tt".equals(name)) {
                                                            bVarQ = q(xmlPullParserNewPullParser);
                                                            aVarO = o(xmlPullParserNewPullParser, f7647v);
                                                            c0146cW = w(xmlPullParserNewPullParser);
                                                        }
                                                        C0146c c0146c = c0146cW;
                                                        b bVar2 = bVarQ;
                                                        a aVar = aVarO;
                                                        if (!m(name)) {
                                                            p.e("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                                                            i11++;
                                                            bVar = bVar2;
                                                        } else if ("head".equals(name)) {
                                                            bVar = bVar2;
                                                            r(xmlPullParserNewPullParser, map, aVar, c0146c, map2, map3);
                                                        } else {
                                                            bVar = bVar2;
                                                            try {
                                                                d dVarS = s(xmlPullParserNewPullParser, dVar, map2, bVar);
                                                                arrayDeque.push(dVarS);
                                                                if (dVar != null) {
                                                                    dVar.a(dVarS);
                                                                }
                                                            } catch (i e10) {
                                                                p.h("TtmlDecoder", "Suppressing parser error", e10);
                                                                i11++;
                                                            }
                                                        }
                                                        bVarQ = bVar;
                                                        c0146cW = c0146c;
                                                        aVarO = aVar;
                                                    } else if (eventType == 4) {
                                                        Objects.requireNonNull(dVar);
                                                        d dVarB = d.b(xmlPullParserNewPullParser.getText());
                                                        if (dVar.f7667m == null) {
                                                            dVar.f7667m = new ArrayList();
                                                        }
                                                        dVar.f7667m.add(dVarB);
                                                    } else if (eventType == 3) {
                                                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                                                            d dVar2 = (d) arrayDeque.peek();
                                                            Objects.requireNonNull(dVar2);
                                                            gVar = new g(dVar2, map, map2, map3);
                                                        }
                                                        arrayDeque.pop();
                                                    }
                                                } else if (eventType == 2) {
                                                    i11++;
                                                } else if (eventType == 3) {
                                                    i11--;
                                                }
                                                xmlPullParserNewPullParser.next();
                                            }
                                            if (gVar != null) {
                                                return gVar;
                                            }
                                            throw new i("No TTML subtitles found");
                                        } catch (IOException e11) {
                                            throw new IllegalStateException("Unexpected error when reading input.", e11);
                                        } catch (XmlPullParserException e12) {
                                            throw new i("Unable to decode source", e12);
                                        }
                                    }
                                }
