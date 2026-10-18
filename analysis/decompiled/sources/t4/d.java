package t4;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l5.f0;
import m5.e0;
import m5.g0;
import m5.h0;
import m5.p;
import m5.s;
import n3.i1;
import n3.s0;
import okhttp3.internal.http2.Http2;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;
import u6.p0;
import u6.v;

/* JADX INFO: compiled from: DashManifestParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends DefaultHandler implements f0.a<c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f15455b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f15456c = Pattern.compile("CC([1-4])=.*");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f15457d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f15458e = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XmlPullParserFactory f15459a;

    /* JADX INFO: compiled from: DashManifestParser.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final s0 f15460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final v<b> f15461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final k f15462c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f15463d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList<r3.d.b> f15464e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList<e> f15465f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f15466g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List<e> f15467h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final List<e> f15468i;

        public a(s0 s0Var, List list, k kVar, String str, ArrayList arrayList, ArrayList arrayList2, List list2, List list3) {
            this.f15460a = s0Var;
            this.f15461b = v.s(list);
            this.f15462c = kVar;
            this.f15463d = str;
            this.f15464e = arrayList;
            this.f15465f = arrayList2;
            this.f15467h = list2;
            this.f15468i = list3;
        }
    }

    public d() {
        try {
            this.f15459a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    public static long c(long j10, long j11) {
        if (j11 != -9223372036854775807L) {
            j10 = j11;
        }
        if (j10 == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j10;
    }

    public static void d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (h0.f(xmlPullParser)) {
            int i10 = 1;
            while (i10 != 0) {
                xmlPullParser.next();
                if (h0.f(xmlPullParser)) {
                    i10++;
                } else {
                    if (xmlPullParser.getEventType() == 3) {
                        i10--;
                    }
                }
            }
        }
    }

    public static e j(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = "";
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue2 == null) {
            attributeValue2 = null;
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "id");
        String str2 = attributeValue3 != null ? attributeValue3 : null;
        do {
            xmlPullParser.next();
        } while (!h0.e(xmlPullParser, str));
        return new e(attributeValue, attributeValue2, str2);
    }

    public static long k(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j10;
        }
        Matcher matcher = g0.f10391h.matcher(attributeValue);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(attributeValue) * 3600.0d * 1000.0d);
        }
        boolean zIsEmpty = true ^ TextUtils.isEmpty(matcher.group(1));
        String strGroup = matcher.group(3);
        double d10 = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
        String strGroup2 = matcher.group(5);
        double d11 = d10 + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
        String strGroup3 = matcher.group(7);
        double d12 = d11 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
        String strGroup4 = matcher.group(10);
        double d13 = d12 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
        String strGroup5 = matcher.group(12);
        double d14 = d13 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
        String strGroup6 = matcher.group(14);
        long j11 = (long) ((d14 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
        return zIsEmpty ? -j11 : j11;
    }

    public static float l(XmlPullParser xmlPullParser, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f10;
        }
        Matcher matcher = f15455b.matcher(attributeValue);
        if (!matcher.matches()) {
            return f10;
        }
        int i10 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        return !TextUtils.isEmpty(strGroup) ? i10 / Integer.parseInt(strGroup) : i10;
    }

    public static int m(XmlPullParser xmlPullParser, String str, int i10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i10 : Integer.parseInt(attributeValue);
    }

    public static long n(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j10 : Long.parseLong(attributeValue);
    }

    public static String w(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String text = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                d(xmlPullParser);
            }
        } while (!h0.e(xmlPullParser, str));
        return text;
    }

    @Override // l5.f0.a
    public final c a(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f15459a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return o(xmlPullParserNewPullParser, uri);
            }
            throw i1.b("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e10) {
            throw i1.b(null, e10);
        }
    }

    public final long b(List<k.d> list, long j10, long j11, int i10, long j12) {
        int i11;
        if (i10 >= 0) {
            i11 = i10 + 1;
        } else {
            int i12 = g0.f10384a;
            i11 = (int) ((((j12 - j10) + j11) - 1) / j11);
        }
        for (int i13 = 0; i13 < i11; i13++) {
            list.add(new k.d(j10, j11));
            j10 += j11;
        }
        return j10;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0086 A[PHI: r0
      0x0086: PHI (r0v11 int) = (r0v3 int), (r0v14 int) binds: [B:83:0x00f3, B:44:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:74:0x00dc  */
    public final int e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int iM;
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = null;
        }
        Objects.requireNonNull(attributeValue);
        int i10 = 6;
        int iM2 = -1;
        switch (attributeValue) {
            case "urn:dts:dash:audio_channel_configuration:2012":
            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                iM = m(xmlPullParser, "value", -1);
                if (iM > 0 && iM < 33) {
                    iM2 = iM;
                    break;
                }
                break;
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                iM2 = m(xmlPullParser, "value", -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
                if (attributeValue2 != null) {
                    String strS = androidx.activity.k.s(attributeValue2);
                    Objects.requireNonNull(strS);
                    switch (strS) {
                        case "4000":
                            i10 = 1;
                            break;
                        case "a000":
                            i10 = 2;
                            break;
                        case "f801":
                            break;
                        case "fa01":
                            i10 = 8;
                            break;
                        default:
                            i10 = -1;
                            break;
                    }
                } else {
                    i10 = -1;
                }
                iM2 = i10;
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                int iM3 = m(xmlPullParser, "value", -1);
                if (iM3 >= 0) {
                    int[] iArr = f15458e;
                    if (iM3 < iArr.length) {
                        iM2 = iArr[iM3];
                    }
                    break;
                }
                break;
            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "value");
                if (attributeValue3 != null && (iM = Integer.bitCount(Integer.parseInt(attributeValue3, 16))) != 0) {
                    iM2 = iM;
                    break;
                }
                break;
        }
        do {
            xmlPullParser.next();
        } while (!h0.e(xmlPullParser, "AudioChannelConfiguration"));
        return iM2;
    }

    public final long f(XmlPullParser xmlPullParser, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j10;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    public final List<b> g(XmlPullParser xmlPullParser, List<b> list, boolean z10) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : z10 ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i11 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String strW = w(xmlPullParser, "BaseURL");
        if ((strW == null || e0.a(strW)[0] == -1) ? false : true) {
            if (attributeValue3 == null) {
                attributeValue3 = strW;
            }
            return u6.f0.b(new b(strW, attributeValue3, i10, i11));
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            b bVar = list.get(i12);
            String strC = e0.c(bVar.f15438a, strW);
            String str = attributeValue3 == null ? strC : attributeValue3;
            if (z10) {
                i10 = bVar.f15440c;
                i11 = bVar.f15441d;
                str = bVar.f15439b;
            }
            arrayList.add(new b(strC, str, i10, i11));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:70:0x0105  */
    /* JADX WARN: Code duplicated, block: B:81:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0132  */
    /* JADX WARN: Code duplicated, block: B:89:0x0155  */
    public final Pair<String, r3.d.b> h(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue;
        UUID uuid;
        byte[] bArrA;
        String attributeValue2;
        UUID uuid2;
        boolean z10;
        UUID uuid3;
        String attributeValue3;
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue4 != null) {
            String strS = androidx.activity.k.s(attributeValue4);
            Objects.requireNonNull(strS);
            switch (strS) {
                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                    uuid3 = n3.i.f11427c;
                    uuid = uuid3;
                    attributeValue = null;
                    bArrA = null;
                    attributeValue2 = null;
                    break;
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid3 = n3.i.f11429e;
                    uuid = uuid3;
                    attributeValue = null;
                    bArrA = null;
                    attributeValue2 = null;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid3 = n3.i.f11428d;
                    uuid = uuid3;
                    attributeValue = null;
                    bArrA = null;
                    attributeValue2 = null;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, "value");
                    int attributeCount = xmlPullParser.getAttributeCount();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= attributeCount) {
                            attributeValue3 = null;
                        } else {
                            String attributeName = xmlPullParser.getAttributeName(i10);
                            int iIndexOf = attributeName.indexOf(58);
                            if (iIndexOf != -1) {
                                attributeName = attributeName.substring(iIndexOf + 1);
                            }
                            if (attributeName.equals("default_KID")) {
                                attributeValue3 = xmlPullParser.getAttributeValue(i10);
                            } else {
                                i10++;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(attributeValue3) && !"00000000-0000-0000-0000-000000000000".equals(attributeValue3)) {
                        String[] strArrSplit = attributeValue3.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                            uuidArr[i11] = UUID.fromString(strArrSplit[i11]);
                        }
                        uuid = n3.i.f11426b;
                        bArrA = a4.i.a(uuid, uuidArr, null);
                        attributeValue2 = null;
                        break;
                    } else {
                        uuid = null;
                        bArrA = null;
                        attributeValue2 = null;
                        break;
                    }
                    break;
                default:
                    attributeValue = null;
                    uuid = null;
                    bArrA = null;
                    attributeValue2 = null;
                    break;
            }
        } else {
            attributeValue = null;
            uuid = null;
            bArrA = null;
            attributeValue2 = null;
        }
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, "clearkey:Laurl") && xmlPullParser.next() == 4) {
                attributeValue2 = xmlPullParser.getText();
            } else if (h0.g(xmlPullParser, "ms:laurl")) {
                attributeValue2 = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (bArrA == null) {
                if (h0.f(xmlPullParser)) {
                    String name = xmlPullParser.getName();
                    int iIndexOf2 = name.indexOf(58);
                    if (iIndexOf2 != -1) {
                        name = name.substring(iIndexOf2 + 1);
                    }
                    if (name.equals("pssh")) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
                if (z10 && xmlPullParser.next() == 4) {
                    byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                    a4.i.a aVarB = a4.i.b(bArrDecode);
                    UUID uuid4 = aVarB == null ? null : aVarB.f321a;
                    if (uuid4 == null) {
                        p.g("MpdParser", "Skipping malformed cenc:pssh data");
                        uuid = uuid4;
                        bArrA = null;
                    } else {
                        UUID uuid5 = uuid4;
                        bArrA = bArrDecode;
                        uuid = uuid5;
                    }
                } else if (bArrA == null) {
                    uuid2 = n3.i.f11429e;
                    if (!uuid2.equals(uuid)) {
                        d(xmlPullParser);
                    } else {
                        d(xmlPullParser);
                    }
                } else {
                    d(xmlPullParser);
                }
            } else if (bArrA == null) {
                uuid2 = n3.i.f11429e;
                if (!uuid2.equals(uuid) && h0.g(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    bArrA = a4.i.a(uuid2, null, Base64.decode(xmlPullParser.getText(), 0));
                } else {
                    d(xmlPullParser);
                }
            } else {
                d(xmlPullParser);
            }
        } while (!h0.e(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new r3.d.b(uuid, attributeValue2, "video/mp4", bArrA) : null);
    }

    public final int i(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, AnalyticsAttribute.CONTENT_TYPE_ATTRIBUTE);
        if (!TextUtils.isEmpty(attributeValue)) {
            if ("audio".equals(attributeValue)) {
                return 1;
            }
            if ("video".equals(attributeValue)) {
                return 2;
            }
            if ("text".equals(attributeValue)) {
                return 3;
            }
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x0247 A[LOOP:3: B:85:0x01b7->B:104:0x0247, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:239:0x0863  */
    /* JADX WARN: Code duplicated, block: B:240:0x0868  */
    /* JADX WARN: Code duplicated, block: B:242:0x086e  */
    /* JADX WARN: Code duplicated, block: B:244:0x0875  */
    /* JADX WARN: Code duplicated, block: B:249:0x0882  */
    /* JADX WARN: Code duplicated, block: B:252:0x0890  */
    /* JADX WARN: Code duplicated, block: B:254:0x089c  */
    /* JADX WARN: Code duplicated, block: B:255:0x089f  */
    /* JADX WARN: Code duplicated, block: B:258:0x08aa  */
    /* JADX WARN: Code duplicated, block: B:261:0x08b3  */
    /* JADX WARN: Code duplicated, block: B:263:0x08c3  */
    /* JADX WARN: Code duplicated, block: B:265:0x08cd  */
    /* JADX WARN: Code duplicated, block: B:275:0x08ea A[PHI: r0
      0x08ea: PHI (r0v104 java.lang.String) = (r0v103 java.lang.String), (r0v132 java.lang.String) binds: [B:257:0x08a8, B:273:0x08e7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:279:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:281:0x0906  */
    /* JADX WARN: Code duplicated, block: B:284:0x090b  */
    /* JADX WARN: Code duplicated, block: B:288:0x091b  */
    /* JADX WARN: Code duplicated, block: B:295:0x092e  */
    /* JADX WARN: Code duplicated, block: B:297:0x093c  */
    /* JADX WARN: Code duplicated, block: B:302:0x094e  */
    /* JADX WARN: Code duplicated, block: B:304:0x0964  */
    /* JADX WARN: Code duplicated, block: B:305:0x096f  */
    /* JADX WARN: Code duplicated, block: B:307:0x097b  */
    /* JADX WARN: Code duplicated, block: B:310:0x0980  */
    /* JADX WARN: Code duplicated, block: B:313:0x0989  */
    /* JADX WARN: Code duplicated, block: B:316:0x0992  */
    /* JADX WARN: Code duplicated, block: B:317:0x0994  */
    /* JADX WARN: Code duplicated, block: B:320:0x099d  */
    /* JADX WARN: Code duplicated, block: B:321:0x099f  */
    /* JADX WARN: Code duplicated, block: B:324:0x09a8  */
    /* JADX WARN: Code duplicated, block: B:325:0x09aa  */
    /* JADX WARN: Code duplicated, block: B:328:0x09b3  */
    /* JADX WARN: Code duplicated, block: B:329:0x09b5  */
    /* JADX WARN: Code duplicated, block: B:332:0x09be  */
    /* JADX WARN: Code duplicated, block: B:333:0x09c0  */
    /* JADX WARN: Code duplicated, block: B:335:0x09c3  */
    /* JADX WARN: Code duplicated, block: B:337:0x09c6  */
    /* JADX WARN: Code duplicated, block: B:339:0x09c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:340:0x09cb  */
    /* JADX WARN: Code duplicated, block: B:342:0x09ce  */
    /* JADX WARN: Code duplicated, block: B:343:0x09d0  */
    /* JADX WARN: Code duplicated, block: B:344:0x09d2  */
    /* JADX WARN: Code duplicated, block: B:345:0x09d5  */
    /* JADX WARN: Code duplicated, block: B:346:0x09d7  */
    /* JADX WARN: Code duplicated, block: B:347:0x09da  */
    /* JADX WARN: Code duplicated, block: B:352:0x0a1d  */
    /* JADX WARN: Code duplicated, block: B:353:0x0a2a  */
    /* JADX WARN: Code duplicated, block: B:355:0x0a34  */
    /* JADX WARN: Code duplicated, block: B:357:0x0a3d  */
    /* JADX WARN: Code duplicated, block: B:359:0x0a43  */
    /* JADX WARN: Code duplicated, block: B:361:0x0a4d  */
    /* JADX WARN: Code duplicated, block: B:364:0x0a54  */
    /* JADX WARN: Code duplicated, block: B:366:0x0a64  */
    /* JADX WARN: Code duplicated, block: B:373:0x0a94  */
    /* JADX WARN: Code duplicated, block: B:375:0x0a9c  */
    /* JADX WARN: Code duplicated, block: B:378:0x0aa3  */
    /* JADX WARN: Code duplicated, block: B:380:0x0ab3  */
    /* JADX WARN: Code duplicated, block: B:390:0x0aed  */
    /* JADX WARN: Code duplicated, block: B:392:0x0af4  */
    /* JADX WARN: Code duplicated, block: B:396:0x0b00  */
    /* JADX WARN: Code duplicated, block: B:397:0x0b03  */
    /* JADX WARN: Code duplicated, block: B:400:0x0b12  */
    /* JADX WARN: Code duplicated, block: B:401:0x0b15  */
    /* JADX WARN: Code duplicated, block: B:405:0x0b34  */
    /* JADX WARN: Code duplicated, block: B:407:0x0b37 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:408:0x0b39  */
    /* JADX WARN: Code duplicated, block: B:409:0x0b3b  */
    /* JADX WARN: Code duplicated, block: B:413:0x0b58 A[LOOP:11: B:193:0x05ea->B:413:0x0b58, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:441:0x0cf1  */
    /* JADX WARN: Code duplicated, block: B:443:0x0d02  */
    /* JADX WARN: Code duplicated, block: B:446:0x0d08  */
    /* JADX WARN: Code duplicated, block: B:449:0x0d17  */
    /* JADX WARN: Code duplicated, block: B:452:0x0d1e  */
    /* JADX WARN: Code duplicated, block: B:454:0x0d2e  */
    /* JADX WARN: Code duplicated, block: B:461:0x0d41  */
    /* JADX WARN: Code duplicated, block: B:464:0x0d48  */
    /* JADX WARN: Code duplicated, block: B:466:0x0d5a  */
    /* JADX WARN: Code duplicated, block: B:469:0x0d6f  */
    /* JADX WARN: Code duplicated, block: B:474:0x0d80  */
    /* JADX WARN: Code duplicated, block: B:479:0x0d93  */
    /* JADX WARN: Code duplicated, block: B:481:0x0d9f  */
    /* JADX WARN: Code duplicated, block: B:486:0x0db0  */
    /* JADX WARN: Code duplicated, block: B:489:0x0db7 A[LOOP:9: B:477:0x0d8d->B:489:0x0db7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:491:0x0dcb  */
    /* JADX WARN: Code duplicated, block: B:494:0x0de7  */
    /* JADX WARN: Code duplicated, block: B:495:0x0dff  */
    /* JADX WARN: Code duplicated, block: B:497:0x0e03  */
    /* JADX WARN: Code duplicated, block: B:502:0x0e49 A[LOOP:5: B:129:0x03b4->B:502:0x0e49, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:593:0x11ff  */
    /* JADX WARN: Code duplicated, block: B:595:0x1203  */
    /* JADX WARN: Code duplicated, block: B:596:0x1206 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:598:0x1209  */
    /* JADX WARN: Code duplicated, block: B:602:0x1216  */
    /* JADX WARN: Code duplicated, block: B:604:0x1227  */
    /* JADX WARN: Code duplicated, block: B:606:0x122e A[LOOP:1: B:44:0x00d4->B:606:0x122e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:609:0x0e25 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x11fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:613:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:0x0ce1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:0x0d39 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:0x0d36 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:623:0x0dba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:0x0d8c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:625:0x0db3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:627:0x0d7c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:633:0x085d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x08e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:639:0x0924 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:641:0x091f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:0x0943 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:0x09de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x0ae2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:652:0x0a91 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:0x0ae2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x0adf A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v188 */
    /* JADX WARN: Type inference failed for: r0v196, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.xmlpull.v1.XmlPullParser] */
    /* JADX WARN: Type inference failed for: r0v205 */
    /* JADX WARN: Type inference failed for: r0v206 */
    /* JADX WARN: Type inference failed for: r0v207 */
    /* JADX WARN: Type inference failed for: r0v208 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r38v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r39v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r40v22, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r41v3 */
    /* JADX WARN: Type inference failed for: r41v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r41v5 */
    /* JADX WARN: Type inference failed for: r42v1 */
    /* JADX WARN: Type inference failed for: r42v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r42v3 */
    /* JADX WARN: Type inference failed for: r5v100 */
    /* JADX WARN: Type inference failed for: r5v101 */
    /* JADX WARN: Type inference failed for: r5v102 */
    /* JADX WARN: Type inference failed for: r5v103 */
    /* JADX WARN: Type inference failed for: r5v104 */
    /* JADX WARN: Type inference failed for: r5v90 */
    /* JADX WARN: Type inference failed for: r5v91 */
    /* JADX WARN: Type inference failed for: r5v92 */
    /* JADX WARN: Type inference failed for: r5v94 */
    /* JADX WARN: Type inference failed for: r6v101 */
    /* JADX WARN: Type inference failed for: r6v102 */
    /* JADX WARN: Type inference failed for: r6v103 */
    /* JADX WARN: Type inference failed for: r6v104 */
    /* JADX WARN: Type inference failed for: r6v105 */
    /* JADX WARN: Type inference failed for: r6v89 */
    /* JADX WARN: Type inference failed for: r6v90 */
    /* JADX WARN: Type inference failed for: r6v91 */
    /* JADX WARN: Type inference failed for: r6v92 */
    public final c o(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        boolean z10;
        boolean z11;
        long j10;
        ArrayList arrayList;
        ArrayList arrayList2;
        boolean z12;
        long j11;
        Object obj;
        long j12;
        long j13;
        boolean z13;
        ?? r10;
        long j14;
        long j15;
        ?? r11;
        boolean z14;
        String str;
        ArrayList arrayList3;
        String str2;
        long j16;
        String str3;
        String str4;
        ArrayList arrayList4;
        XmlPullParser xmlPullParser2;
        ArrayList arrayList5;
        String str5;
        String str6;
        String str7;
        XmlPullParser xmlPullParser3;
        long j17;
        long j18;
        e eVar;
        String str8;
        String str9;
        String str10;
        ArrayList arrayList6;
        String str11;
        ArrayList arrayList7;
        ArrayList arrayList8;
        long j19;
        ArrayList arrayList9;
        ArrayList arrayList10;
        ArrayList arrayList11;
        String str12;
        ArrayList arrayList12;
        String str13;
        float f10;
        int i10;
        String str14;
        ArrayList arrayList13;
        ArrayList arrayList14;
        int i11;
        String str15;
        String str16;
        String str17;
        ArrayList arrayList15;
        String str18;
        String str19;
        int i12;
        String str20;
        long j20;
        XmlPullParser xmlPullParser4;
        String str21;
        ArrayList arrayList16;
        k kVarT;
        String str22;
        ArrayList arrayList17;
        ArrayList arrayList18;
        String str23;
        String str24;
        String str25;
        int i13;
        String str26;
        ArrayList arrayList19;
        int i14;
        int i15;
        int i16;
        int i17;
        String str27;
        float f11;
        int i18;
        long j21;
        ArrayList arrayList20;
        ArrayList arrayList21;
        String str28;
        String str29;
        ArrayList arrayList22;
        ArrayList arrayList23;
        XmlPullParser xmlPullParser5;
        String str30;
        String str31;
        String str32;
        String str33;
        ArrayList arrayList24;
        String str34;
        ArrayList arrayList25;
        String str35;
        ArrayList arrayList26;
        ArrayList arrayList27;
        int i19;
        String strE;
        String str36;
        String str37;
        int i20;
        int i21;
        String str38;
        ArrayList arrayList28;
        int i22;
        int iQ;
        int i23;
        int iQ2;
        ArrayList arrayList29;
        s0.a aVar;
        int i24;
        int i25;
        boolean z15;
        int i26;
        e eVar2;
        String str39;
        boolean z16;
        int i27;
        boolean z17;
        int i28;
        int i29;
        e eVar3;
        String str40;
        k eVar4;
        ArrayList arrayList30;
        int i30;
        String str41;
        String str42;
        boolean z18;
        e eVar5;
        String str43;
        String str44;
        int i31;
        byte b10;
        e eVar6;
        e eVar7;
        String str45;
        int i32;
        int i33;
        String str46;
        ArrayList arrayList31;
        long j22;
        ArrayList arrayList32;
        int i34;
        ArrayList arrayList33;
        s0.a aVar2;
        String str47;
        ArrayList<r3.d.b> arrayList34;
        String str48;
        ArrayList<e> arrayList35;
        long j23;
        s0 s0Var;
        v<b> vVar;
        k kVar;
        List<e> list;
        List<e> list2;
        j aVar3;
        int i35;
        String str49;
        int i36;
        r3.d.b bVar;
        int size;
        r3.d.b bVar2;
        int i37;
        r3.d.b bVar3;
        boolean z19;
        r3.d.b bVar4;
        long jF;
        Object obj2;
        long j24;
        long j25;
        long jN;
        float f12;
        ?? r12;
        ?? NextText;
        ?? NextText2;
        ?? NextText3;
        ?? r13;
        String[] strArrSplit = new String[0];
        ?? r14 = 0;
        String attributeValue = xmlPullParser.getAttributeValue(null, "profiles");
        if (attributeValue != null) {
            strArrSplit = attributeValue.split(",");
        }
        int length = strArrSplit.length;
        int i38 = 0;
        while (true) {
            z10 = true;
            if (i38 >= length) {
                z11 = false;
                break;
            }
            if (strArrSplit[i38].startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                z11 = true;
                break;
            }
            i38++;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "availabilityStartTime");
        long jO = attributeValue2 == null ? -9223372036854775807L : g0.O(attributeValue2);
        long jK = k(xmlPullParser, "mediaPresentationDuration", -9223372036854775807L);
        long jK2 = k(xmlPullParser, "minBufferTime", -9223372036854775807L);
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, AnalyticsAttribute.TYPE_ATTRIBUTE));
        long jK3 = zEquals ? k(xmlPullParser, "minimumUpdatePeriod", -9223372036854775807L) : -9223372036854775807L;
        long jK4 = zEquals ? k(xmlPullParser, "timeShiftBufferDepth", -9223372036854775807L) : -9223372036854775807L;
        long jK5 = zEquals ? k(xmlPullParser, "suggestedPresentationDelay", -9223372036854775807L) : -9223372036854775807L;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "publishTime");
        long jO2 = attributeValue3 == null ? -9223372036854775807L : g0.O(attributeValue3);
        long j26 = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListB = u6.f0.b(new b(uri.toString(), uri.toString(), z11 ? 1 : Integer.MIN_VALUE, 1));
        ArrayList arrayList36 = new ArrayList();
        ArrayList arrayList37 = new ArrayList();
        boolean z20 = false;
        boolean z21 = false;
        h hVar = null;
        fe.h hVar2 = null;
        Uri uriD = null;
        l lVar = null;
        ?? r15 = xmlPullParser;
        long jF2 = j26;
        long j27 = zEquals ? -9223372036854775807L : 0L;
        while (true) {
            xmlPullParser.next();
            String str50 = "BaseURL";
            if (h0.g(r15, "BaseURL")) {
                if (!z20) {
                    jF2 = f(r15, jF2);
                    z20 = z10;
                }
                arrayList37.addAll(g(r15, arrayListB, z11));
            } else {
                String str51 = "lang";
                if (h0.g(r15, "ProgramInformation")) {
                    String attributeValue4 = r15.getAttributeValue(r14, "moreInformationURL");
                    ?? r41 = attributeValue4 == null ? r14 : attributeValue4;
                    String attributeValue5 = r15.getAttributeValue(r14, "lang");
                    ?? r42 = attributeValue5 == null ? r14 : attributeValue5;
                    ?? r16 = r14;
                    ?? r17 = r16;
                    ?? r18 = r17;
                    ?? r19 = r16;
                    ?? r20 = r17;
                    while (true) {
                        xmlPullParser.next();
                        j10 = jF2;
                        if (h0.g(r15, "Title")) {
                            NextText3 = xmlPullParser.nextText();
                            NextText2 = r20;
                            NextText = r18;
                        } else if (h0.g(r15, "Source")) {
                            NextText2 = xmlPullParser.nextText();
                            NextText3 = r19;
                            NextText = r18;
                        } else if (h0.g(r15, "Copyright")) {
                            NextText = xmlPullParser.nextText();
                            NextText3 = r19;
                            NextText2 = r20;
                        } else {
                            d(xmlPullParser);
                            NextText3 = r19;
                            NextText2 = r20;
                            NextText = r18;
                        }
                        if (h0.e(r15, "ProgramInformation")) {
                            hVar = new h(NextText3, NextText2, NextText, r41, r42);
                            z10 = true;
                        } else {
                            jF2 = j10;
                            r19 = NextText3;
                            r20 = NextText2;
                            r18 = NextText;
                        }
                    }
                } else {
                    j10 = jF2;
                    String str52 = "value";
                    if (h0.g(r15, "UTCTiming")) {
                        z10 = true;
                        hVar2 = new fe.h(r15.getAttributeValue(r14, "schemeIdUri"), r15.getAttributeValue(r14, "value"), 1);
                    } else if (h0.g(r15, "Location")) {
                        uriD = e0.d(uri.toString(), xmlPullParser.nextText());
                        jF2 = j10;
                        z10 = true;
                    } else if (h0.g(r15, "ServiceDescription")) {
                        long j28 = -9223372036854775807L;
                        long j29 = -9223372036854775807L;
                        long j30 = -9223372036854775807L;
                        float f13 = -3.4028235E38f;
                        float f14 = -3.4028235E38f;
                        while (true) {
                            xmlPullParser.next();
                            float f15 = f13;
                            if (h0.g(r15, "Latency")) {
                                long jN2 = n(r15, "target", -9223372036854775807L);
                                long jN3 = n(r15, "min", -9223372036854775807L);
                                jN = n(r15, "max", -9223372036854775807L);
                                j24 = jN2;
                                j25 = jN3;
                            } else {
                                if (h0.g(r15, "PlaybackRate")) {
                                    String attributeValue6 = r15.getAttributeValue(null, "min");
                                    float f16 = attributeValue6 == null ? -3.4028235E38f : Float.parseFloat(attributeValue6);
                                    String attributeValue7 = r15.getAttributeValue(null, "max");
                                    if (attributeValue7 == null) {
                                        f12 = f16;
                                        j24 = j28;
                                        j25 = j29;
                                        jN = j30;
                                        f14 = -3.4028235E38f;
                                    } else {
                                        f12 = f16;
                                        j24 = j28;
                                        f14 = Float.parseFloat(attributeValue7);
                                        j25 = j29;
                                        jN = j30;
                                    }
                                } else {
                                    j24 = j28;
                                    j25 = j29;
                                    jN = j30;
                                }
                                if (h0.e(r15, "ServiceDescription")) {
                                    lVar = new l(j24, j25, jN, f12, f14);
                                    r12 = 0;
                                    jF2 = j10;
                                    z14 = true;
                                    arrayList = arrayList37;
                                    arrayListB = arrayListB;
                                    z12 = z11;
                                    j14 = j27;
                                    j15 = -9223372036854775807L;
                                    arrayList2 = arrayList36;
                                    r13 = r15;
                                    r11 = r12;
                                } else {
                                    j28 = j24;
                                    j29 = j25;
                                    j30 = jN;
                                    f13 = f12;
                                    f14 = f14;
                                }
                            }
                            f12 = f15;
                            if (h0.e(r15, "ServiceDescription")) {
                                lVar = new l(j24, j25, jN, f12, f14);
                                r12 = 0;
                                jF2 = j10;
                                z14 = true;
                                arrayList = arrayList37;
                                arrayListB = arrayListB;
                                z12 = z11;
                                j14 = j27;
                                j15 = -9223372036854775807L;
                                arrayList2 = arrayList36;
                                r13 = r15;
                                r11 = r12;
                            } else {
                                j28 = j24;
                                j29 = j25;
                                j30 = jN;
                                f13 = f12;
                                f14 = f14;
                            }
                        }
                    } else {
                        if (!h0.g(r15, "Period") || z21) {
                            arrayList = arrayList37;
                            arrayList2 = arrayList36;
                            z12 = z11;
                            j11 = j10;
                            obj = null;
                            j12 = -9223372036854775807L;
                            d(xmlPullParser);
                            j13 = j27;
                            z13 = true;
                            r10 = r15;
                        } else {
                            ArrayList arrayList38 = !arrayList37.isEmpty() ? arrayList37 : arrayListB;
                            String str53 = "id";
                            String str54 = "schemeIdUri";
                            String attributeValue8 = r15.getAttributeValue(null, "id");
                            long jK6 = k(r15, "start", j27);
                            String str55 = "Period";
                            long j31 = jO != -9223372036854775807L ? jO + jK6 : -9223372036854775807L;
                            long jK7 = k(r15, "duration", -9223372036854775807L);
                            ArrayList arrayList39 = new ArrayList();
                            String str56 = "duration";
                            ArrayList arrayList40 = new ArrayList();
                            ArrayList arrayList41 = new ArrayList();
                            e eVarJ = null;
                            k kVarU = null;
                            boolean z22 = false;
                            long jF3 = -9223372036854775807L;
                            ArrayList arrayList42 = arrayList36;
                            long jF4 = j10;
                            z13 = true;
                            XmlPullParser xmlPullParser6 = xmlPullParser;
                            d dVar = this;
                            while (true) {
                                xmlPullParser.next();
                                if (h0.g(xmlPullParser6, str50)) {
                                    if (!z22) {
                                        jF4 = dVar.f(xmlPullParser6, jF4);
                                        z22 = z13;
                                    }
                                    arrayList41.addAll(dVar.g(xmlPullParser6, arrayList38, z11));
                                    str = str53;
                                    arrayList3 = arrayList38;
                                    str5 = str52;
                                    str2 = str51;
                                    j16 = j27;
                                    arrayList = arrayList37;
                                    str3 = str50;
                                    z12 = z11;
                                    str8 = str55;
                                    arrayList5 = arrayList40;
                                    j18 = -9223372036854775807L;
                                    arrayList41 = arrayList41;
                                    xmlPullParser3 = xmlPullParser;
                                    long j32 = j10;
                                    arrayList4 = arrayList39;
                                    str6 = str56;
                                    eVar = eVarJ;
                                    str7 = str54;
                                    j11 = j32;
                                } else {
                                    long j33 = jF4;
                                    arrayList = arrayList37;
                                    if (h0.g(xmlPullParser6, "AdaptationSet")) {
                                        ArrayList arrayList43 = arrayList39;
                                        if (arrayList41.isEmpty()) {
                                            arrayList41 = arrayList38;
                                        }
                                        int iM = m(xmlPullParser6, str53, -1);
                                        int i39 = i(xmlPullParser);
                                        String str57 = "SegmentTemplate";
                                        String str58 = "mimeType";
                                        String attributeValue9 = xmlPullParser6.getAttributeValue(null, "mimeType");
                                        long j34 = j27;
                                        String attributeValue10 = xmlPullParser6.getAttributeValue(null, "codecs");
                                        String str59 = str52;
                                        int iM2 = m(xmlPullParser6, "width", -1);
                                        String str60 = "AdaptationSet";
                                        int iM3 = m(xmlPullParser6, "height", -1);
                                        ArrayList arrayList44 = arrayList38;
                                        float fL = l(xmlPullParser6, -1.0f);
                                        String str61 = "SegmentList";
                                        String str62 = "SegmentBase";
                                        int iM4 = m(xmlPullParser6, "audioSamplingRate", -1);
                                        String str63 = "audioSamplingRate";
                                        String attributeValue11 = xmlPullParser6.getAttributeValue(null, str51);
                                        int i40 = iM4;
                                        String attributeValue12 = xmlPullParser6.getAttributeValue(null, "label");
                                        ArrayList arrayList45 = new ArrayList();
                                        ArrayList arrayList46 = new ArrayList();
                                        ArrayList arrayList47 = new ArrayList();
                                        String strW = attributeValue12;
                                        ArrayList arrayList48 = new ArrayList();
                                        float f17 = fL;
                                        ArrayList arrayList49 = new ArrayList();
                                        int i41 = iM3;
                                        ArrayList arrayList50 = new ArrayList();
                                        String str64 = "height";
                                        ArrayList arrayList51 = new ArrayList();
                                        ArrayList arrayList52 = new ArrayList();
                                        int iE = -1;
                                        String str65 = null;
                                        boolean z23 = false;
                                        ArrayList arrayList53 = arrayList50;
                                        str = str53;
                                        int i42 = iM2;
                                        k kVarU2 = kVarU;
                                        long jF5 = jF3;
                                        long j35 = j33;
                                        int i43 = i39;
                                        String str66 = "width";
                                        String str67 = attributeValue11;
                                        String str68 = "codecs";
                                        XmlPullParser xmlPullParser7 = xmlPullParser;
                                        while (true) {
                                            xmlPullParser.next();
                                            if (h0.g(xmlPullParser7, str50)) {
                                                if (z23) {
                                                    jF = j35;
                                                } else {
                                                    jF = dVar.f(xmlPullParser7, j35);
                                                    z23 = z13;
                                                }
                                                arrayList52.addAll(dVar.g(xmlPullParser7, arrayList41, z11));
                                                j22 = jF;
                                                arrayList8 = arrayList41;
                                            } else {
                                                arrayList8 = arrayList41;
                                                if (h0.g(xmlPullParser7, "ContentProtection")) {
                                                    Pair<String, r3.d.b> pairH = h(xmlPullParser);
                                                    j19 = j35;
                                                    Object obj3 = pairH.first;
                                                    if (obj3 != null) {
                                                        str65 = (String) obj3;
                                                    }
                                                    Object obj4 = pairH.second;
                                                    if (obj4 != null) {
                                                        arrayList45.add((r3.d.b) obj4);
                                                    }
                                                } else {
                                                    j19 = j35;
                                                    if (h0.g(xmlPullParser7, "ContentComponent")) {
                                                        String attributeValue13 = xmlPullParser7.getAttributeValue(null, str51);
                                                        if (str67 == null) {
                                                            str67 = attributeValue13;
                                                        } else if (attributeValue13 != null) {
                                                            m5.a.e(str67.equals(attributeValue13));
                                                        }
                                                        int i44 = i(xmlPullParser);
                                                        if (i43 == -1) {
                                                            i43 = i44;
                                                        } else if (i44 != -1) {
                                                            m5.a.e(i43 == i44 ? z13 : false);
                                                        }
                                                    } else {
                                                        if (h0.g(xmlPullParser7, "Role")) {
                                                            arrayList48.add(j(xmlPullParser7, "Role"));
                                                        } else {
                                                            String str69 = "AudioChannelConfiguration";
                                                            if (h0.g(xmlPullParser7, "AudioChannelConfiguration")) {
                                                                iE = e(xmlPullParser);
                                                            } else if (h0.g(xmlPullParser7, "Accessibility")) {
                                                                arrayList47.add(j(xmlPullParser7, "Accessibility"));
                                                            } else if (h0.g(xmlPullParser7, "EssentialProperty")) {
                                                                arrayList49.add(j(xmlPullParser7, "EssentialProperty"));
                                                            } else {
                                                                String str70 = "ContentProtection";
                                                                if (h0.g(xmlPullParser7, "SupplementalProperty")) {
                                                                    arrayList31 = arrayList53;
                                                                    arrayList31.add(j(xmlPullParser7, "SupplementalProperty"));
                                                                    arrayList9 = arrayList49;
                                                                    arrayList10 = arrayList48;
                                                                    arrayList11 = arrayList52;
                                                                    xmlPullParser4 = xmlPullParser7;
                                                                    str12 = str58;
                                                                    arrayList12 = arrayList45;
                                                                    str4 = str55;
                                                                    str21 = str57;
                                                                    j16 = j34;
                                                                    str10 = str59;
                                                                    arrayList3 = arrayList44;
                                                                    str13 = str61;
                                                                    str20 = str62;
                                                                    f10 = f17;
                                                                    i10 = i41;
                                                                    str14 = str64;
                                                                    arrayList13 = arrayList51;
                                                                    arrayList14 = arrayList31;
                                                                    str2 = str51;
                                                                    str15 = str67;
                                                                    arrayList15 = arrayList47;
                                                                    z12 = z11;
                                                                    str16 = str60;
                                                                    str17 = str68;
                                                                    arrayList16 = arrayList46;
                                                                    i11 = i43;
                                                                    str18 = str66;
                                                                    j20 = jF5;
                                                                    int i45 = i40;
                                                                    str3 = str50;
                                                                    long j36 = j10;
                                                                    str9 = str54;
                                                                    j11 = j36;
                                                                    arrayList4 = arrayList43;
                                                                    str19 = str63;
                                                                    i12 = i45;
                                                                    str13 = str13;
                                                                    jF5 = j20;
                                                                    xmlPullParser7 = xmlPullParser4;
                                                                    str67 = str15;
                                                                    i43 = i11;
                                                                    str41 = strW;
                                                                    str42 = str16;
                                                                } else {
                                                                    String str71 = "SupplementalProperty";
                                                                    ArrayList arrayList54 = arrayList53;
                                                                    String str72 = "EssentialProperty";
                                                                    ArrayList arrayList55 = arrayList54;
                                                                    Object obj5 = "Representation";
                                                                    String str73 = "InbandEventStream";
                                                                    if (h0.g(xmlPullParser7, "Representation")) {
                                                                        if (arrayList52.isEmpty()) {
                                                                            str22 = null;
                                                                            arrayList17 = arrayList8;
                                                                            String str74 = str;
                                                                            arrayList18 = arrayList52;
                                                                            str23 = str74;
                                                                        } else {
                                                                            str22 = null;
                                                                            arrayList17 = arrayList52;
                                                                            str23 = str;
                                                                            arrayList18 = arrayList17;
                                                                        }
                                                                        String attributeValue14 = xmlPullParser7.getAttributeValue(str22, str23);
                                                                        String str75 = str23;
                                                                        int i46 = i43;
                                                                        int iM5 = m(xmlPullParser7, "bandwidth", -1);
                                                                        String attributeValue15 = xmlPullParser7.getAttributeValue(str22, str58);
                                                                        if (attributeValue15 == null) {
                                                                            attributeValue15 = attributeValue9;
                                                                        }
                                                                        String str76 = str68;
                                                                        String str77 = str67;
                                                                        String attributeValue16 = xmlPullParser7.getAttributeValue(str22, str76);
                                                                        String str78 = attributeValue14;
                                                                        if (attributeValue16 == null) {
                                                                            str25 = str66;
                                                                            str24 = attributeValue10;
                                                                            i13 = i42;
                                                                        } else {
                                                                            String str79 = str66;
                                                                            str24 = attributeValue16;
                                                                            str25 = str79;
                                                                            i13 = i42;
                                                                        }
                                                                        int iM6 = m(xmlPullParser7, str25, i13);
                                                                        String str80 = str25;
                                                                        String str81 = str64;
                                                                        int i47 = iM6;
                                                                        int i48 = i41;
                                                                        String str82 = attributeValue15;
                                                                        int i49 = i48;
                                                                        int iM7 = m(xmlPullParser7, str81, i49);
                                                                        String str83 = str81;
                                                                        float f18 = f17;
                                                                        int i50 = iM7;
                                                                        float fL2 = l(xmlPullParser7, f18);
                                                                        String str84 = str63;
                                                                        ArrayList arrayList56 = arrayList47;
                                                                        int i51 = i40;
                                                                        String str85 = str58;
                                                                        int iM8 = m(xmlPullParser7, str84, i51);
                                                                        String str86 = str84;
                                                                        ArrayList arrayList57 = new ArrayList();
                                                                        ArrayList arrayList58 = new ArrayList();
                                                                        ArrayList arrayList59 = new ArrayList(arrayList49);
                                                                        ArrayList arrayList60 = new ArrayList(arrayList55);
                                                                        ArrayList arrayList61 = new ArrayList();
                                                                        String str87 = null;
                                                                        boolean z24 = false;
                                                                        arrayList9 = arrayList49;
                                                                        float f19 = f18;
                                                                        String str88 = str76;
                                                                        int i52 = iM8;
                                                                        int iE2 = iE;
                                                                        long j37 = jF5;
                                                                        k kVarU3 = kVarU2;
                                                                        long jF6 = j19;
                                                                        while (true) {
                                                                            xmlPullParser.next();
                                                                            if (h0.g(xmlPullParser7, str50)) {
                                                                                if (z24) {
                                                                                    z13 = z24;
                                                                                } else {
                                                                                    jF6 = dVar.f(xmlPullParser7, jF6);
                                                                                }
                                                                                arrayList61.addAll(dVar.g(xmlPullParser7, arrayList17, z11));
                                                                                z24 = z13;
                                                                            } else {
                                                                                arrayList55 = arrayList55;
                                                                                if (h0.g(xmlPullParser7, str69)) {
                                                                                    iE2 = e(xmlPullParser);
                                                                                } else {
                                                                                    String str89 = str62;
                                                                                    if (h0.g(xmlPullParser7, str89)) {
                                                                                        str62 = str89;
                                                                                        kVarU3 = dVar.s(xmlPullParser7, (k.e) kVarU3);
                                                                                    } else {
                                                                                        String str90 = str61;
                                                                                        if (h0.g(xmlPullParser7, str90)) {
                                                                                            long jF7 = dVar.f(xmlPullParser7, j37);
                                                                                            i10 = i49;
                                                                                            String str91 = str72;
                                                                                            arrayList14 = arrayList55;
                                                                                            arrayList22 = arrayList17;
                                                                                            String str92 = str75;
                                                                                            str29 = str69;
                                                                                            float f20 = f19;
                                                                                            arrayList3 = arrayList44;
                                                                                            f10 = f20;
                                                                                            str4 = str55;
                                                                                            str28 = str82;
                                                                                            str14 = str83;
                                                                                            arrayList23 = arrayList51;
                                                                                            str30 = str60;
                                                                                            String str93 = str80;
                                                                                            arrayList11 = arrayList18;
                                                                                            str = str92;
                                                                                            long j38 = j10;
                                                                                            arrayList4 = arrayList43;
                                                                                            str9 = str54;
                                                                                            j11 = j38;
                                                                                            str10 = str59;
                                                                                            i16 = iM5;
                                                                                            i17 = i46;
                                                                                            i42 = i13;
                                                                                            str2 = str51;
                                                                                            j16 = j34;
                                                                                            xmlPullParser5 = xmlPullParser7;
                                                                                            j21 = jF6;
                                                                                            String str94 = str77;
                                                                                            str18 = str93;
                                                                                            str17 = str88;
                                                                                            str26 = str94;
                                                                                            str12 = str85;
                                                                                            i18 = i52;
                                                                                            str3 = str50;
                                                                                            str13 = str90;
                                                                                            str20 = str89;
                                                                                            arrayList19 = arrayList46;
                                                                                            i14 = i50;
                                                                                            i15 = i47;
                                                                                            arrayList12 = arrayList45;
                                                                                            str27 = str78;
                                                                                            f11 = fL2;
                                                                                            str19 = str86;
                                                                                            arrayList20 = arrayList61;
                                                                                            arrayList21 = arrayList56;
                                                                                            i12 = i51;
                                                                                            kVarU3 = t(xmlPullParser, (k.b) kVarU3, j31, jK7, j21, jF7, jK4);
                                                                                            str31 = str57;
                                                                                            z12 = z11;
                                                                                            str32 = str70;
                                                                                            str35 = str71;
                                                                                            str33 = str73;
                                                                                            str34 = str91;
                                                                                            i19 = iE2;
                                                                                            j37 = jF7;
                                                                                            arrayList24 = arrayList57;
                                                                                            arrayList25 = arrayList58;
                                                                                            arrayList26 = arrayList59;
                                                                                            arrayList27 = arrayList60;
                                                                                        } else {
                                                                                            str13 = str90;
                                                                                            i10 = i49;
                                                                                            str4 = str55;
                                                                                            j16 = j34;
                                                                                            str10 = str59;
                                                                                            str20 = str89;
                                                                                            str26 = str77;
                                                                                            str12 = str85;
                                                                                            arrayList19 = arrayList46;
                                                                                            i14 = i50;
                                                                                            i15 = i47;
                                                                                            i16 = iM5;
                                                                                            arrayList12 = arrayList45;
                                                                                            i17 = i46;
                                                                                            str27 = str78;
                                                                                            str18 = str80;
                                                                                            f11 = fL2;
                                                                                            ArrayList arrayList62 = arrayList57;
                                                                                            ArrayList arrayList63 = arrayList58;
                                                                                            ArrayList arrayList64 = arrayList59;
                                                                                            ArrayList arrayList65 = arrayList60;
                                                                                            i18 = i52;
                                                                                            arrayList14 = arrayList55;
                                                                                            i42 = i13;
                                                                                            str2 = str51;
                                                                                            j21 = jF6;
                                                                                            str3 = str50;
                                                                                            arrayList20 = arrayList61;
                                                                                            arrayList21 = arrayList56;
                                                                                            str28 = str82;
                                                                                            arrayList11 = arrayList18;
                                                                                            String str95 = str72;
                                                                                            str = str75;
                                                                                            str14 = str83;
                                                                                            str29 = str69;
                                                                                            i12 = i51;
                                                                                            arrayList22 = arrayList17;
                                                                                            arrayList23 = arrayList51;
                                                                                            xmlPullParser5 = xmlPullParser7;
                                                                                            str30 = str60;
                                                                                            str17 = str88;
                                                                                            String str96 = str57;
                                                                                            boolean z25 = z11;
                                                                                            long j39 = j10;
                                                                                            str9 = str54;
                                                                                            j11 = j39;
                                                                                            arrayList4 = arrayList43;
                                                                                            str19 = str86;
                                                                                            float f21 = f19;
                                                                                            arrayList3 = arrayList44;
                                                                                            f10 = f21;
                                                                                            if (h0.g(xmlPullParser5, str96)) {
                                                                                                long jF8 = dVar.f(xmlPullParser5, j37);
                                                                                                str31 = str96;
                                                                                                z12 = z25;
                                                                                                kVarU3 = u(xmlPullParser, (k.c) kVarU3, arrayList14, j31, jK7, j21, jF8, jK4);
                                                                                                str32 = str70;
                                                                                                j37 = jF8;
                                                                                            } else {
                                                                                                str31 = str96;
                                                                                                z12 = z25;
                                                                                                str32 = str70;
                                                                                                if (h0.g(xmlPullParser5, str32)) {
                                                                                                    Pair<String, r3.d.b> pairH2 = h(xmlPullParser);
                                                                                                    Object obj6 = pairH2.first;
                                                                                                    if (obj6 != null) {
                                                                                                        str87 = (String) obj6;
                                                                                                    }
                                                                                                    Object obj7 = pairH2.second;
                                                                                                    if (obj7 != null) {
                                                                                                        arrayList24 = arrayList62;
                                                                                                        arrayList24.add((r3.d.b) obj7);
                                                                                                    }
                                                                                                    str33 = str73;
                                                                                                    arrayList25 = arrayList63;
                                                                                                    str34 = str95;
                                                                                                    arrayList26 = arrayList64;
                                                                                                    str35 = str71;
                                                                                                    arrayList27 = arrayList65;
                                                                                                } else {
                                                                                                    str33 = str73;
                                                                                                    arrayList24 = arrayList62;
                                                                                                    if (h0.g(xmlPullParser5, str33)) {
                                                                                                        arrayList25 = arrayList63;
                                                                                                        arrayList25.add(j(xmlPullParser5, str33));
                                                                                                        str34 = str95;
                                                                                                        arrayList26 = arrayList64;
                                                                                                        str35 = str71;
                                                                                                        arrayList27 = arrayList65;
                                                                                                    } else {
                                                                                                        str34 = str95;
                                                                                                        arrayList25 = arrayList63;
                                                                                                        if (h0.g(xmlPullParser5, str34)) {
                                                                                                            arrayList26 = arrayList64;
                                                                                                            arrayList26.add(j(xmlPullParser5, str34));
                                                                                                            str35 = str71;
                                                                                                            arrayList27 = arrayList65;
                                                                                                        } else {
                                                                                                            str35 = str71;
                                                                                                            arrayList26 = arrayList64;
                                                                                                            if (h0.g(xmlPullParser5, str35)) {
                                                                                                                arrayList27 = arrayList65;
                                                                                                                arrayList27.add(j(xmlPullParser5, str35));
                                                                                                            } else {
                                                                                                                arrayList27 = arrayList65;
                                                                                                                d(xmlPullParser);
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                i19 = iE2;
                                                                                            }
                                                                                            arrayList24 = arrayList62;
                                                                                            str33 = str73;
                                                                                            arrayList25 = arrayList63;
                                                                                            str34 = str95;
                                                                                            arrayList26 = arrayList64;
                                                                                            str35 = str71;
                                                                                            arrayList27 = arrayList65;
                                                                                            i19 = iE2;
                                                                                        }
                                                                                    }
                                                                                    if (h0.e(xmlPullParser5, obj5)) {
                                                                                        if (s.k(str28)) {
                                                                                            strE = s.b(str24);
                                                                                        } else {
                                                                                            if (s.n(str28)) {
                                                                                                strE = s.j(str24);
                                                                                            } else if (s.m(str28) && !s.l(str28)) {
                                                                                                str36 = str28;
                                                                                                if ("application/mp4".equals(str36)) {
                                                                                                    strE = s.e(str24);
                                                                                                    if ("text/vtt".equals(strE)) {
                                                                                                        strE = "application/x-mp4-vtt";
                                                                                                    }
                                                                                                } else {
                                                                                                    strE = null;
                                                                                                }
                                                                                            } else {
                                                                                                strE = str28;
                                                                                                str36 = strE;
                                                                                            }
                                                                                            if ("audio/eac3".equals(strE)) {
                                                                                                i33 = 0;
                                                                                                while (true) {
                                                                                                    if (i33 < arrayList27.size()) {
                                                                                                        e eVar8 = (e) arrayList27.get(i33);
                                                                                                        str46 = eVar8.f15469a;
                                                                                                        if ((!"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str46) && "JOC".equals(eVar8.f15470b)) || ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str46) && "ec+3".equals(eVar8.f15470b))) {
                                                                                                            strE = "audio/eac3-joc";
                                                                                                        }
                                                                                                    } else {
                                                                                                        strE = "audio/eac3";
                                                                                                    }
                                                                                                }
                                                                                                str37 = "audio/eac3-joc".equals(strE) ? "ec+3" : str24;
                                                                                            }
                                                                                            i20 = 0;
                                                                                            i21 = 0;
                                                                                            while (true) {
                                                                                                str38 = "urn:mpeg:dash:role:2011";
                                                                                                if (i20 < arrayList48.size()) {
                                                                                                    ArrayList arrayList66 = arrayList48;
                                                                                                    eVar7 = (e) arrayList66.get(i20);
                                                                                                    if (!androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar7.f15469a)) {
                                                                                                        str45 = eVar7.f15470b;
                                                                                                        if (str45 == null && (str45.equals("forced_subtitle") || str45.equals("forced-subtitle"))) {
                                                                                                            i32 = 2;
                                                                                                        } else {
                                                                                                            i32 = 0;
                                                                                                        }
                                                                                                        i21 |= i32;
                                                                                                    }
                                                                                                    i20++;
                                                                                                    arrayList48 = arrayList66;
                                                                                                } else {
                                                                                                    arrayList28 = arrayList48;
                                                                                                    iQ = 0;
                                                                                                    for (i22 = 0; i22 < arrayList28.size(); i22++) {
                                                                                                        eVar6 = (e) arrayList28.get(i22);
                                                                                                        if (androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar6.f15469a)) {
                                                                                                            iQ |= dVar.q(eVar6.f15470b);
                                                                                                        }
                                                                                                    }
                                                                                                    i23 = 0;
                                                                                                    iQ2 = 0;
                                                                                                    while (i23 < arrayList21.size()) {
                                                                                                        ArrayList arrayList67 = arrayList21;
                                                                                                        ArrayList arrayList68 = arrayList28;
                                                                                                        eVar5 = (e) arrayList67.get(i23);
                                                                                                        ArrayList arrayList69 = arrayList25;
                                                                                                        if (androidx.activity.k.d(str38, eVar5.f15469a)) {
                                                                                                            iQ2 |= dVar.q(eVar5.f15470b);
                                                                                                            str43 = str38;
                                                                                                        } else {
                                                                                                            str43 = str38;
                                                                                                            if (!androidx.activity.k.d("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar5.f15469a)) {
                                                                                                                str44 = eVar5.f15470b;
                                                                                                                if (str44 == null) {
                                                                                                                    i31 = 0;
                                                                                                                } else {
                                                                                                                    switch (str44.hashCode()) {
                                                                                                                        case 49:
                                                                                                                            if (str44.equals("1")) {
                                                                                                                                b10 = 0;
                                                                                                                            } else {
                                                                                                                                b10 = -1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 50:
                                                                                                                            if (str44.equals("2")) {
                                                                                                                                b10 = 1;
                                                                                                                            } else {
                                                                                                                                b10 = -1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 51:
                                                                                                                            if (str44.equals("3")) {
                                                                                                                                b10 = 2;
                                                                                                                            } else {
                                                                                                                                b10 = -1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 52:
                                                                                                                            if (str44.equals("4")) {
                                                                                                                                b10 = 3;
                                                                                                                            } else {
                                                                                                                                b10 = -1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                        case 53:
                                                                                                                        default:
                                                                                                                            b10 = -1;
                                                                                                                            break;
                                                                                                                        case 54:
                                                                                                                            if (str44.equals("6")) {
                                                                                                                                b10 = 4;
                                                                                                                            } else {
                                                                                                                                b10 = -1;
                                                                                                                            }
                                                                                                                            break;
                                                                                                                    }
                                                                                                                    if (b10 != 0) {
                                                                                                                        i31 = 512;
                                                                                                                    } else if (b10 != 1) {
                                                                                                                        i31 = 2048;
                                                                                                                    } else if (b10 != 2) {
                                                                                                                        i31 = 4;
                                                                                                                    } else if (b10 != 3) {
                                                                                                                        i31 = 8;
                                                                                                                    } else if (b10 != 4) {
                                                                                                                        i31 = 0;
                                                                                                                    } else {
                                                                                                                        i31 = 1;
                                                                                                                    }
                                                                                                                }
                                                                                                                iQ2 = i31 | iQ2;
                                                                                                            }
                                                                                                        }
                                                                                                        i23++;
                                                                                                        arrayList21 = arrayList67;
                                                                                                        str38 = str43;
                                                                                                        arrayList28 = arrayList68;
                                                                                                        arrayList25 = arrayList69;
                                                                                                    }
                                                                                                    ArrayList arrayList70 = arrayList25;
                                                                                                    arrayList10 = arrayList28;
                                                                                                    arrayList29 = arrayList21;
                                                                                                    int iR = iQ | iQ2 | dVar.r(arrayList26) | dVar.r(arrayList27);
                                                                                                    aVar = new s0.a();
                                                                                                    aVar.f11695a = str27;
                                                                                                    aVar.f11704j = str36;
                                                                                                    aVar.f11705k = strE;
                                                                                                    aVar.f11702h = str37;
                                                                                                    aVar.f11701g = i16;
                                                                                                    aVar.f11698d = i21;
                                                                                                    aVar.f11699e = iR;
                                                                                                    String str97 = str26;
                                                                                                    aVar.f11697c = str97;
                                                                                                    if (s.n(strE)) {
                                                                                                        aVar.f11710p = i15;
                                                                                                        aVar.f11711q = i14;
                                                                                                        aVar.f11712r = f11;
                                                                                                    } else {
                                                                                                        i24 = i15;
                                                                                                        i25 = i14;
                                                                                                        if (s.k(strE)) {
                                                                                                            aVar.f11718x = i19;
                                                                                                            aVar.f11719y = i18;
                                                                                                        } else if (s.m(strE)) {
                                                                                                            if ("application/cea-608".equals(strE)) {
                                                                                                                i29 = 0;
                                                                                                                while (true) {
                                                                                                                    if (i29 < arrayList29.size()) {
                                                                                                                        eVar3 = (e) arrayList29.get(i29);
                                                                                                                        if (!"urn:scte:dash:cc:cea-608:2015".equals(eVar3.f15469a) && (str40 = eVar3.f15470b) != null) {
                                                                                                                            Matcher matcher = f15456c.matcher(str40);
                                                                                                                            if (matcher.matches()) {
                                                                                                                                i28 = Integer.parseInt(matcher.group(1));
                                                                                                                                z17 = true;
                                                                                                                            } else {
                                                                                                                                StringBuilder sbC = a0.b.c("Unable to parse CEA-608 channel number from: ");
                                                                                                                                sbC.append(eVar3.f15470b);
                                                                                                                                p.g("MpdParser", sbC.toString());
                                                                                                                            }
                                                                                                                        }
                                                                                                                        i29++;
                                                                                                                    }
                                                                                                                    aVar.C = i28;
                                                                                                                    z15 = z17;
                                                                                                                }
                                                                                                            } else {
                                                                                                                if ("application/cea-708".equals(strE)) {
                                                                                                                    i26 = 0;
                                                                                                                    while (true) {
                                                                                                                        if (i26 < arrayList29.size()) {
                                                                                                                            eVar2 = (e) arrayList29.get(i26);
                                                                                                                            if (!"urn:scte:dash:cc:cea-708:2015".equals(eVar2.f15469a) && (str39 = eVar2.f15470b) != null) {
                                                                                                                                Matcher matcher2 = f15457d.matcher(str39);
                                                                                                                                if (matcher2.matches()) {
                                                                                                                                    z16 = true;
                                                                                                                                    i27 = Integer.parseInt(matcher2.group(1));
                                                                                                                                } else {
                                                                                                                                    StringBuilder sbC2 = a0.b.c("Unable to parse CEA-708 service block number from: ");
                                                                                                                                    sbC2.append(eVar2.f15470b);
                                                                                                                                    p.g("MpdParser", sbC2.toString());
                                                                                                                                }
                                                                                                                            }
                                                                                                                            i26++;
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                                int i53 = i27;
                                                                                                                z17 = z16;
                                                                                                                i28 = i53;
                                                                                                                aVar.C = i28;
                                                                                                                z15 = z17;
                                                                                                            }
                                                                                                            z16 = true;
                                                                                                            i27 = -1;
                                                                                                            int i54 = i27;
                                                                                                            z17 = z16;
                                                                                                            i28 = i54;
                                                                                                            aVar.C = i28;
                                                                                                            z15 = z17;
                                                                                                        } else {
                                                                                                            if (s.l(strE)) {
                                                                                                                aVar.f11710p = i24;
                                                                                                                aVar.f11711q = i25;
                                                                                                            }
                                                                                                            z15 = true;
                                                                                                        }
                                                                                                        s0 s0Var2 = new s0(aVar);
                                                                                                        if (kVarU3 != null) {
                                                                                                            eVar4 = kVarU3;
                                                                                                        } else {
                                                                                                            eVar4 = new k.e();
                                                                                                        }
                                                                                                        if (arrayList20.isEmpty()) {
                                                                                                            arrayList30 = arrayList22;
                                                                                                        } else {
                                                                                                            arrayList30 = arrayList20;
                                                                                                        }
                                                                                                        a aVar4 = new a(s0Var2, arrayList30, eVar4, str87, arrayList24, arrayList70, arrayList26, arrayList27);
                                                                                                        i43 = s.i(s0Var2.f11687s);
                                                                                                        i30 = i17;
                                                                                                        if (i30 != -1) {
                                                                                                            if (i43 != -1) {
                                                                                                                if (i30 == i43) {
                                                                                                                    z18 = z15;
                                                                                                                } else {
                                                                                                                    z18 = false;
                                                                                                                }
                                                                                                                m5.a.e(z18);
                                                                                                            }
                                                                                                            i43 = i30;
                                                                                                        }
                                                                                                        ArrayList arrayList71 = arrayList23;
                                                                                                        arrayList71.add(aVar4);
                                                                                                        xmlPullParser7 = xmlPullParser;
                                                                                                        z13 = z15;
                                                                                                        str67 = str97;
                                                                                                        arrayList13 = arrayList71;
                                                                                                        arrayList15 = arrayList29;
                                                                                                        str41 = strW;
                                                                                                        str42 = str30;
                                                                                                        arrayList16 = arrayList19;
                                                                                                        str21 = str31;
                                                                                                    }
                                                                                                    z15 = true;
                                                                                                    s0 s0Var3 = new s0(aVar);
                                                                                                    if (kVarU3 != null) {
                                                                                                        eVar4 = kVarU3;
                                                                                                    } else {
                                                                                                        eVar4 = new k.e();
                                                                                                    }
                                                                                                    if (arrayList20.isEmpty()) {
                                                                                                        arrayList30 = arrayList20;
                                                                                                    } else {
                                                                                                        arrayList30 = arrayList22;
                                                                                                    }
                                                                                                    a aVar5 = new a(s0Var3, arrayList30, eVar4, str87, arrayList24, arrayList70, arrayList26, arrayList27);
                                                                                                    i43 = s.i(s0Var3.f11687s);
                                                                                                    i30 = i17;
                                                                                                    if (i30 != -1) {
                                                                                                        if (i43 != -1) {
                                                                                                            if (i30 == i43) {
                                                                                                                z18 = z15;
                                                                                                            } else {
                                                                                                                z18 = false;
                                                                                                            }
                                                                                                            m5.a.e(z18);
                                                                                                        }
                                                                                                        i43 = i30;
                                                                                                    }
                                                                                                    ArrayList arrayList72 = arrayList23;
                                                                                                    arrayList72.add(aVar5);
                                                                                                    xmlPullParser7 = xmlPullParser;
                                                                                                    z13 = z15;
                                                                                                    str67 = str97;
                                                                                                    arrayList13 = arrayList72;
                                                                                                    arrayList15 = arrayList29;
                                                                                                    str41 = strW;
                                                                                                    str42 = str30;
                                                                                                    arrayList16 = arrayList19;
                                                                                                    str21 = str31;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        str36 = str28;
                                                                                        if ("audio/eac3".equals(strE)) {
                                                                                            i33 = 0;
                                                                                            while (true) {
                                                                                                if (i33 < arrayList27.size()) {
                                                                                                    e eVar9 = (e) arrayList27.get(i33);
                                                                                                    str46 = eVar9.f15469a;
                                                                                                    i33 = !"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str46) ? i33 + 1 : i33 + 1;
                                                                                                    strE = "audio/eac3-joc";
                                                                                                } else {
                                                                                                    strE = "audio/eac3";
                                                                                                }
                                                                                            }
                                                                                            if ("audio/eac3-joc".equals(strE)) {
                                                                                            }
                                                                                        }
                                                                                        i20 = 0;
                                                                                        i21 = 0;
                                                                                        while (true) {
                                                                                            str38 = "urn:mpeg:dash:role:2011";
                                                                                            if (i20 < arrayList48.size()) {
                                                                                                ArrayList arrayList610 = arrayList48;
                                                                                                eVar7 = (e) arrayList610.get(i20);
                                                                                                if (!androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar7.f15469a)) {
                                                                                                    str45 = eVar7.f15470b;
                                                                                                    if (str45 == null) {
                                                                                                        i32 = 0;
                                                                                                    } else {
                                                                                                        i32 = 2;
                                                                                                    }
                                                                                                    i21 |= i32;
                                                                                                }
                                                                                                i20++;
                                                                                                arrayList48 = arrayList610;
                                                                                            } else {
                                                                                                arrayList28 = arrayList48;
                                                                                                iQ = 0;
                                                                                                while (i22 < arrayList28.size()) {
                                                                                                    eVar6 = (e) arrayList28.get(i22);
                                                                                                    if (androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar6.f15469a)) {
                                                                                                        iQ |= dVar.q(eVar6.f15470b);
                                                                                                    }
                                                                                                }
                                                                                                i23 = 0;
                                                                                                iQ2 = 0;
                                                                                                while (i23 < arrayList21.size()) {
                                                                                                    ArrayList arrayList611 = arrayList21;
                                                                                                    ArrayList arrayList612 = arrayList28;
                                                                                                    eVar5 = (e) arrayList611.get(i23);
                                                                                                    ArrayList arrayList613 = arrayList25;
                                                                                                    if (androidx.activity.k.d(str38, eVar5.f15469a)) {
                                                                                                        iQ2 |= dVar.q(eVar5.f15470b);
                                                                                                        str43 = str38;
                                                                                                    } else {
                                                                                                        str43 = str38;
                                                                                                        if (!androidx.activity.k.d("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar5.f15469a)) {
                                                                                                            str44 = eVar5.f15470b;
                                                                                                            if (str44 == null) {
                                                                                                                i31 = 0;
                                                                                                            } else {
                                                                                                                switch (str44.hashCode()) {
                                                                                                                    case 49:
                                                                                                                        if (str44.equals("1")) {
                                                                                                                            b10 = -1;
                                                                                                                        } else {
                                                                                                                            b10 = 0;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 50:
                                                                                                                        if (str44.equals("2")) {
                                                                                                                            b10 = -1;
                                                                                                                        } else {
                                                                                                                            b10 = 1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 51:
                                                                                                                        if (str44.equals("3")) {
                                                                                                                            b10 = -1;
                                                                                                                        } else {
                                                                                                                            b10 = 2;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 52:
                                                                                                                        if (str44.equals("4")) {
                                                                                                                            b10 = -1;
                                                                                                                        } else {
                                                                                                                            b10 = 3;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    case 53:
                                                                                                                    default:
                                                                                                                        b10 = -1;
                                                                                                                        break;
                                                                                                                    case 54:
                                                                                                                        if (str44.equals("6")) {
                                                                                                                            b10 = -1;
                                                                                                                        } else {
                                                                                                                            b10 = 4;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                }
                                                                                                                if (b10 != 0) {
                                                                                                                    i31 = 512;
                                                                                                                } else if (b10 != 1) {
                                                                                                                    i31 = 2048;
                                                                                                                } else if (b10 != 2) {
                                                                                                                    i31 = 4;
                                                                                                                } else if (b10 != 3) {
                                                                                                                    i31 = 8;
                                                                                                                } else if (b10 != 4) {
                                                                                                                    i31 = 0;
                                                                                                                } else {
                                                                                                                    i31 = 1;
                                                                                                                }
                                                                                                            }
                                                                                                            iQ2 = i31 | iQ2;
                                                                                                        }
                                                                                                    }
                                                                                                    i23++;
                                                                                                    arrayList21 = arrayList611;
                                                                                                    str38 = str43;
                                                                                                    arrayList28 = arrayList612;
                                                                                                    arrayList25 = arrayList613;
                                                                                                }
                                                                                                ArrayList arrayList73 = arrayList25;
                                                                                                arrayList10 = arrayList28;
                                                                                                arrayList29 = arrayList21;
                                                                                                int iR2 = iQ | iQ2 | dVar.r(arrayList26) | dVar.r(arrayList27);
                                                                                                aVar = new s0.a();
                                                                                                aVar.f11695a = str27;
                                                                                                aVar.f11704j = str36;
                                                                                                aVar.f11705k = strE;
                                                                                                aVar.f11702h = str37;
                                                                                                aVar.f11701g = i16;
                                                                                                aVar.f11698d = i21;
                                                                                                aVar.f11699e = iR2;
                                                                                                String str98 = str26;
                                                                                                aVar.f11697c = str98;
                                                                                                if (s.n(strE)) {
                                                                                                    aVar.f11710p = i15;
                                                                                                    aVar.f11711q = i14;
                                                                                                    aVar.f11712r = f11;
                                                                                                } else {
                                                                                                    i24 = i15;
                                                                                                    i25 = i14;
                                                                                                    if (s.k(strE)) {
                                                                                                        aVar.f11718x = i19;
                                                                                                        aVar.f11719y = i18;
                                                                                                    } else if (s.m(strE)) {
                                                                                                        if ("application/cea-608".equals(strE)) {
                                                                                                            i29 = 0;
                                                                                                            while (true) {
                                                                                                                if (i29 < arrayList29.size()) {
                                                                                                                    eVar3 = (e) arrayList29.get(i29);
                                                                                                                    if (!"urn:scte:dash:cc:cea-608:2015".equals(eVar3.f15469a)) {
                                                                                                                    }
                                                                                                                    i29++;
                                                                                                                }
                                                                                                                aVar.C = i28;
                                                                                                                z15 = z17;
                                                                                                            }
                                                                                                        } else {
                                                                                                            if ("application/cea-708".equals(strE)) {
                                                                                                                i26 = 0;
                                                                                                                while (true) {
                                                                                                                    if (i26 < arrayList29.size()) {
                                                                                                                        eVar2 = (e) arrayList29.get(i26);
                                                                                                                        if (!"urn:scte:dash:cc:cea-708:2015".equals(eVar2.f15469a)) {
                                                                                                                        }
                                                                                                                        i26++;
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            int i55 = i27;
                                                                                                            z17 = z16;
                                                                                                            i28 = i55;
                                                                                                            aVar.C = i28;
                                                                                                            z15 = z17;
                                                                                                        }
                                                                                                        z16 = true;
                                                                                                        i27 = -1;
                                                                                                        int i56 = i27;
                                                                                                        z17 = z16;
                                                                                                        i28 = i56;
                                                                                                        aVar.C = i28;
                                                                                                        z15 = z17;
                                                                                                    } else {
                                                                                                        if (s.l(strE)) {
                                                                                                            aVar.f11710p = i24;
                                                                                                            aVar.f11711q = i25;
                                                                                                        }
                                                                                                        z15 = true;
                                                                                                    }
                                                                                                    s0 s0Var4 = new s0(aVar);
                                                                                                    if (kVarU3 != null) {
                                                                                                        eVar4 = kVarU3;
                                                                                                    } else {
                                                                                                        eVar4 = new k.e();
                                                                                                    }
                                                                                                    if (arrayList20.isEmpty()) {
                                                                                                        arrayList30 = arrayList20;
                                                                                                    } else {
                                                                                                        arrayList30 = arrayList22;
                                                                                                    }
                                                                                                    a aVar6 = new a(s0Var4, arrayList30, eVar4, str87, arrayList24, arrayList73, arrayList26, arrayList27);
                                                                                                    i43 = s.i(s0Var4.f11687s);
                                                                                                    i30 = i17;
                                                                                                    if (i30 != -1) {
                                                                                                        if (i43 != -1) {
                                                                                                            if (i30 == i43) {
                                                                                                                z18 = z15;
                                                                                                            } else {
                                                                                                                z18 = false;
                                                                                                            }
                                                                                                            m5.a.e(z18);
                                                                                                        }
                                                                                                        i43 = i30;
                                                                                                    }
                                                                                                    ArrayList arrayList74 = arrayList23;
                                                                                                    arrayList74.add(aVar6);
                                                                                                    xmlPullParser7 = xmlPullParser;
                                                                                                    z13 = z15;
                                                                                                    str67 = str98;
                                                                                                    arrayList13 = arrayList74;
                                                                                                    arrayList15 = arrayList29;
                                                                                                    str41 = strW;
                                                                                                    str42 = str30;
                                                                                                    arrayList16 = arrayList19;
                                                                                                    str21 = str31;
                                                                                                }
                                                                                                z15 = true;
                                                                                                s0 s0Var5 = new s0(aVar);
                                                                                                if (kVarU3 != null) {
                                                                                                    eVar4 = kVarU3;
                                                                                                } else {
                                                                                                    eVar4 = new k.e();
                                                                                                }
                                                                                                if (arrayList20.isEmpty()) {
                                                                                                    arrayList30 = arrayList20;
                                                                                                } else {
                                                                                                    arrayList30 = arrayList22;
                                                                                                }
                                                                                                a aVar7 = new a(s0Var5, arrayList30, eVar4, str87, arrayList24, arrayList73, arrayList26, arrayList27);
                                                                                                i43 = s.i(s0Var5.f11687s);
                                                                                                i30 = i17;
                                                                                                if (i30 != -1) {
                                                                                                    if (i43 != -1) {
                                                                                                        if (i30 == i43) {
                                                                                                            z18 = z15;
                                                                                                        } else {
                                                                                                            z18 = false;
                                                                                                        }
                                                                                                        m5.a.e(z18);
                                                                                                    }
                                                                                                    i43 = i30;
                                                                                                }
                                                                                                ArrayList arrayList75 = arrayList23;
                                                                                                arrayList75.add(aVar7);
                                                                                                xmlPullParser7 = xmlPullParser;
                                                                                                z13 = z15;
                                                                                                str67 = str98;
                                                                                                arrayList13 = arrayList75;
                                                                                                arrayList15 = arrayList29;
                                                                                                str41 = strW;
                                                                                                str42 = str30;
                                                                                                arrayList16 = arrayList19;
                                                                                                str21 = str31;
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        ArrayList arrayList76 = arrayList25;
                                                                                        ArrayList arrayList77 = arrayList21;
                                                                                        z13 = true;
                                                                                        arrayList57 = arrayList24;
                                                                                        str78 = str27;
                                                                                        iE2 = i19;
                                                                                        arrayList59 = arrayList26;
                                                                                        arrayList60 = arrayList27;
                                                                                        str86 = str19;
                                                                                        str51 = str2;
                                                                                        str88 = str17;
                                                                                        i49 = i10;
                                                                                        str50 = str3;
                                                                                        i46 = i17;
                                                                                        str60 = str30;
                                                                                        fL2 = f11;
                                                                                        i52 = i18;
                                                                                        arrayList51 = arrayList23;
                                                                                        str59 = str10;
                                                                                        str85 = str12;
                                                                                        str61 = str13;
                                                                                        arrayList45 = arrayList12;
                                                                                        arrayList46 = arrayList19;
                                                                                        arrayList58 = arrayList76;
                                                                                        xmlPullParser7 = xmlPullParser;
                                                                                        str73 = str33;
                                                                                        obj5 = obj5;
                                                                                        arrayList43 = arrayList4;
                                                                                        arrayList61 = arrayList20;
                                                                                        str83 = str14;
                                                                                        i50 = i14;
                                                                                        str69 = str29;
                                                                                        str71 = str35;
                                                                                        str82 = str28;
                                                                                        jF6 = j21;
                                                                                        i51 = i12;
                                                                                        str75 = str;
                                                                                        arrayList18 = arrayList11;
                                                                                        j34 = j16;
                                                                                        arrayList56 = arrayList77;
                                                                                        str80 = str18;
                                                                                        z11 = z12;
                                                                                        i47 = i15;
                                                                                        str70 = str32;
                                                                                        str77 = str26;
                                                                                        arrayList55 = arrayList14;
                                                                                        str62 = str20;
                                                                                        str57 = str31;
                                                                                        ArrayList arrayList78 = arrayList22;
                                                                                        str72 = str34;
                                                                                        i13 = i42;
                                                                                        iM5 = i16;
                                                                                        arrayList17 = arrayList78;
                                                                                        long j40 = j11;
                                                                                        str54 = str9;
                                                                                        j10 = j40;
                                                                                        str55 = str4;
                                                                                        ArrayList arrayList79 = arrayList3;
                                                                                        f19 = f10;
                                                                                        arrayList44 = arrayList79;
                                                                                    }
                                                                                }
                                                                            }
                                                                            str4 = str55;
                                                                            str31 = str57;
                                                                            j16 = j34;
                                                                            str10 = str59;
                                                                            str13 = str61;
                                                                            str20 = str62;
                                                                            str26 = str77;
                                                                            str12 = str85;
                                                                            arrayList19 = arrayList46;
                                                                            i14 = i50;
                                                                            i15 = i47;
                                                                            i16 = iM5;
                                                                            str32 = str70;
                                                                            arrayList12 = arrayList45;
                                                                            i17 = i46;
                                                                            str27 = str78;
                                                                            str18 = str80;
                                                                            f11 = fL2;
                                                                            i18 = i52;
                                                                            arrayList14 = arrayList55;
                                                                            i10 = i49;
                                                                            i42 = i13;
                                                                            str2 = str51;
                                                                            j21 = jF6;
                                                                            str3 = str50;
                                                                            arrayList20 = arrayList61;
                                                                            z12 = z11;
                                                                            arrayList21 = arrayList56;
                                                                            str28 = str82;
                                                                            arrayList11 = arrayList18;
                                                                            str34 = str72;
                                                                            str35 = str71;
                                                                            str = str75;
                                                                            str14 = str83;
                                                                            arrayList24 = arrayList57;
                                                                            arrayList25 = arrayList58;
                                                                            arrayList26 = arrayList59;
                                                                            arrayList27 = arrayList60;
                                                                            str29 = str69;
                                                                            i12 = i51;
                                                                            arrayList22 = arrayList17;
                                                                            arrayList23 = arrayList51;
                                                                            str33 = str73;
                                                                            xmlPullParser5 = xmlPullParser7;
                                                                            str30 = str60;
                                                                            str17 = str88;
                                                                            long j41 = j10;
                                                                            str9 = str54;
                                                                            j11 = j41;
                                                                            arrayList4 = arrayList43;
                                                                            str19 = str86;
                                                                            float f22 = f19;
                                                                            arrayList3 = arrayList44;
                                                                            f10 = f22;
                                                                            i19 = iE2;
                                                                            if (h0.e(xmlPullParser5, obj5)) {
                                                                                if (s.k(str28)) {
                                                                                    strE = s.b(str24);
                                                                                } else {
                                                                                    if (s.n(str28)) {
                                                                                        strE = s.j(str24);
                                                                                    } else if (s.m(str28)) {
                                                                                        strE = str28;
                                                                                        str36 = strE;
                                                                                    } else {
                                                                                        str36 = str28;
                                                                                        if ("application/mp4".equals(str36)) {
                                                                                            strE = s.e(str24);
                                                                                            if ("text/vtt".equals(strE)) {
                                                                                                strE = "application/x-mp4-vtt";
                                                                                            }
                                                                                        } else {
                                                                                            strE = null;
                                                                                        }
                                                                                    }
                                                                                    if ("audio/eac3".equals(strE)) {
                                                                                        i33 = 0;
                                                                                        while (true) {
                                                                                            if (i33 < arrayList27.size()) {
                                                                                                e eVar10 = (e) arrayList27.get(i33);
                                                                                                str46 = eVar10.f15469a;
                                                                                                if (!"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str46)) {
                                                                                                }
                                                                                                strE = "audio/eac3-joc";
                                                                                            } else {
                                                                                                strE = "audio/eac3";
                                                                                            }
                                                                                        }
                                                                                        if ("audio/eac3-joc".equals(strE)) {
                                                                                        }
                                                                                    }
                                                                                    i20 = 0;
                                                                                    i21 = 0;
                                                                                    while (true) {
                                                                                        str38 = "urn:mpeg:dash:role:2011";
                                                                                        if (i20 < arrayList48.size()) {
                                                                                            ArrayList arrayList614 = arrayList48;
                                                                                            eVar7 = (e) arrayList614.get(i20);
                                                                                            if (!androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar7.f15469a)) {
                                                                                                str45 = eVar7.f15470b;
                                                                                                if (str45 == null) {
                                                                                                    i32 = 0;
                                                                                                } else {
                                                                                                    i32 = 2;
                                                                                                }
                                                                                                i21 |= i32;
                                                                                            }
                                                                                            i20++;
                                                                                            arrayList48 = arrayList614;
                                                                                        } else {
                                                                                            arrayList28 = arrayList48;
                                                                                            iQ = 0;
                                                                                            while (i22 < arrayList28.size()) {
                                                                                                eVar6 = (e) arrayList28.get(i22);
                                                                                                if (androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar6.f15469a)) {
                                                                                                    iQ |= dVar.q(eVar6.f15470b);
                                                                                                }
                                                                                            }
                                                                                            i23 = 0;
                                                                                            iQ2 = 0;
                                                                                            while (i23 < arrayList21.size()) {
                                                                                                ArrayList arrayList615 = arrayList21;
                                                                                                ArrayList arrayList616 = arrayList28;
                                                                                                eVar5 = (e) arrayList615.get(i23);
                                                                                                ArrayList arrayList617 = arrayList25;
                                                                                                if (androidx.activity.k.d(str38, eVar5.f15469a)) {
                                                                                                    iQ2 |= dVar.q(eVar5.f15470b);
                                                                                                    str43 = str38;
                                                                                                } else {
                                                                                                    str43 = str38;
                                                                                                    if (!androidx.activity.k.d("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar5.f15469a)) {
                                                                                                        str44 = eVar5.f15470b;
                                                                                                        if (str44 == null) {
                                                                                                            i31 = 0;
                                                                                                        } else {
                                                                                                            switch (str44.hashCode()) {
                                                                                                                case 49:
                                                                                                                    if (str44.equals("1")) {
                                                                                                                        b10 = -1;
                                                                                                                    } else {
                                                                                                                        b10 = 0;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 50:
                                                                                                                    if (str44.equals("2")) {
                                                                                                                        b10 = -1;
                                                                                                                    } else {
                                                                                                                        b10 = 1;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 51:
                                                                                                                    if (str44.equals("3")) {
                                                                                                                        b10 = -1;
                                                                                                                    } else {
                                                                                                                        b10 = 2;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 52:
                                                                                                                    if (str44.equals("4")) {
                                                                                                                        b10 = -1;
                                                                                                                    } else {
                                                                                                                        b10 = 3;
                                                                                                                    }
                                                                                                                    break;
                                                                                                                case 53:
                                                                                                                default:
                                                                                                                    b10 = -1;
                                                                                                                    break;
                                                                                                                case 54:
                                                                                                                    if (str44.equals("6")) {
                                                                                                                        b10 = -1;
                                                                                                                    } else {
                                                                                                                        b10 = 4;
                                                                                                                    }
                                                                                                                    break;
                                                                                                            }
                                                                                                            if (b10 != 0) {
                                                                                                                i31 = 512;
                                                                                                            } else if (b10 != 1) {
                                                                                                                i31 = 2048;
                                                                                                            } else if (b10 != 2) {
                                                                                                                i31 = 4;
                                                                                                            } else if (b10 != 3) {
                                                                                                                i31 = 8;
                                                                                                            } else if (b10 != 4) {
                                                                                                                i31 = 0;
                                                                                                            } else {
                                                                                                                i31 = 1;
                                                                                                            }
                                                                                                        }
                                                                                                        iQ2 = i31 | iQ2;
                                                                                                    }
                                                                                                }
                                                                                                i23++;
                                                                                                arrayList21 = arrayList615;
                                                                                                str38 = str43;
                                                                                                arrayList28 = arrayList616;
                                                                                                arrayList25 = arrayList617;
                                                                                            }
                                                                                            ArrayList arrayList710 = arrayList25;
                                                                                            arrayList10 = arrayList28;
                                                                                            arrayList29 = arrayList21;
                                                                                            int iR3 = iQ | iQ2 | dVar.r(arrayList26) | dVar.r(arrayList27);
                                                                                            aVar = new s0.a();
                                                                                            aVar.f11695a = str27;
                                                                                            aVar.f11704j = str36;
                                                                                            aVar.f11705k = strE;
                                                                                            aVar.f11702h = str37;
                                                                                            aVar.f11701g = i16;
                                                                                            aVar.f11698d = i21;
                                                                                            aVar.f11699e = iR3;
                                                                                            String str99 = str26;
                                                                                            aVar.f11697c = str99;
                                                                                            if (s.n(strE)) {
                                                                                                aVar.f11710p = i15;
                                                                                                aVar.f11711q = i14;
                                                                                                aVar.f11712r = f11;
                                                                                            } else {
                                                                                                i24 = i15;
                                                                                                i25 = i14;
                                                                                                if (s.k(strE)) {
                                                                                                    aVar.f11718x = i19;
                                                                                                    aVar.f11719y = i18;
                                                                                                } else if (s.m(strE)) {
                                                                                                    if ("application/cea-608".equals(strE)) {
                                                                                                        i29 = 0;
                                                                                                        while (true) {
                                                                                                            if (i29 < arrayList29.size()) {
                                                                                                                eVar3 = (e) arrayList29.get(i29);
                                                                                                                if (!"urn:scte:dash:cc:cea-608:2015".equals(eVar3.f15469a)) {
                                                                                                                }
                                                                                                                i29++;
                                                                                                            }
                                                                                                            aVar.C = i28;
                                                                                                            z15 = z17;
                                                                                                        }
                                                                                                    } else {
                                                                                                        if ("application/cea-708".equals(strE)) {
                                                                                                            i26 = 0;
                                                                                                            while (true) {
                                                                                                                if (i26 < arrayList29.size()) {
                                                                                                                    eVar2 = (e) arrayList29.get(i26);
                                                                                                                    if (!"urn:scte:dash:cc:cea-708:2015".equals(eVar2.f15469a)) {
                                                                                                                    }
                                                                                                                    i26++;
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        int i57 = i27;
                                                                                                        z17 = z16;
                                                                                                        i28 = i57;
                                                                                                        aVar.C = i28;
                                                                                                        z15 = z17;
                                                                                                    }
                                                                                                    z16 = true;
                                                                                                    i27 = -1;
                                                                                                    int i58 = i27;
                                                                                                    z17 = z16;
                                                                                                    i28 = i58;
                                                                                                    aVar.C = i28;
                                                                                                    z15 = z17;
                                                                                                } else {
                                                                                                    if (s.l(strE)) {
                                                                                                        aVar.f11710p = i24;
                                                                                                        aVar.f11711q = i25;
                                                                                                    }
                                                                                                    z15 = true;
                                                                                                }
                                                                                                s0 s0Var6 = new s0(aVar);
                                                                                                if (kVarU3 != null) {
                                                                                                    eVar4 = kVarU3;
                                                                                                } else {
                                                                                                    eVar4 = new k.e();
                                                                                                }
                                                                                                if (arrayList20.isEmpty()) {
                                                                                                    arrayList30 = arrayList20;
                                                                                                } else {
                                                                                                    arrayList30 = arrayList22;
                                                                                                }
                                                                                                a aVar8 = new a(s0Var6, arrayList30, eVar4, str87, arrayList24, arrayList710, arrayList26, arrayList27);
                                                                                                i43 = s.i(s0Var6.f11687s);
                                                                                                i30 = i17;
                                                                                                if (i30 != -1) {
                                                                                                    if (i43 != -1) {
                                                                                                        if (i30 == i43) {
                                                                                                            z18 = z15;
                                                                                                        } else {
                                                                                                            z18 = false;
                                                                                                        }
                                                                                                        m5.a.e(z18);
                                                                                                    }
                                                                                                    i43 = i30;
                                                                                                }
                                                                                                ArrayList arrayList711 = arrayList23;
                                                                                                arrayList711.add(aVar8);
                                                                                                xmlPullParser7 = xmlPullParser;
                                                                                                z13 = z15;
                                                                                                str67 = str99;
                                                                                                arrayList13 = arrayList711;
                                                                                                arrayList15 = arrayList29;
                                                                                                str41 = strW;
                                                                                                str42 = str30;
                                                                                                arrayList16 = arrayList19;
                                                                                                str21 = str31;
                                                                                            }
                                                                                            z15 = true;
                                                                                            s0 s0Var7 = new s0(aVar);
                                                                                            if (kVarU3 != null) {
                                                                                                eVar4 = kVarU3;
                                                                                            } else {
                                                                                                eVar4 = new k.e();
                                                                                            }
                                                                                            if (arrayList20.isEmpty()) {
                                                                                                arrayList30 = arrayList20;
                                                                                            } else {
                                                                                                arrayList30 = arrayList22;
                                                                                            }
                                                                                            a aVar9 = new a(s0Var7, arrayList30, eVar4, str87, arrayList24, arrayList710, arrayList26, arrayList27);
                                                                                            i43 = s.i(s0Var7.f11687s);
                                                                                            i30 = i17;
                                                                                            if (i30 != -1) {
                                                                                                if (i43 != -1) {
                                                                                                    if (i30 == i43) {
                                                                                                        z18 = z15;
                                                                                                    } else {
                                                                                                        z18 = false;
                                                                                                    }
                                                                                                    m5.a.e(z18);
                                                                                                }
                                                                                                i43 = i30;
                                                                                            }
                                                                                            ArrayList arrayList712 = arrayList23;
                                                                                            arrayList712.add(aVar9);
                                                                                            xmlPullParser7 = xmlPullParser;
                                                                                            z13 = z15;
                                                                                            str67 = str99;
                                                                                            arrayList13 = arrayList712;
                                                                                            arrayList15 = arrayList29;
                                                                                            str41 = strW;
                                                                                            str42 = str30;
                                                                                            arrayList16 = arrayList19;
                                                                                            str21 = str31;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                str36 = str28;
                                                                                if ("audio/eac3".equals(strE)) {
                                                                                    i33 = 0;
                                                                                    while (true) {
                                                                                        if (i33 < arrayList27.size()) {
                                                                                            e eVar11 = (e) arrayList27.get(i33);
                                                                                            str46 = eVar11.f15469a;
                                                                                            if (!"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str46)) {
                                                                                            }
                                                                                            strE = "audio/eac3-joc";
                                                                                        } else {
                                                                                            strE = "audio/eac3";
                                                                                        }
                                                                                    }
                                                                                    if ("audio/eac3-joc".equals(strE)) {
                                                                                    }
                                                                                }
                                                                                i20 = 0;
                                                                                i21 = 0;
                                                                                while (true) {
                                                                                    str38 = "urn:mpeg:dash:role:2011";
                                                                                    if (i20 < arrayList48.size()) {
                                                                                        ArrayList arrayList618 = arrayList48;
                                                                                        eVar7 = (e) arrayList618.get(i20);
                                                                                        if (!androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar7.f15469a)) {
                                                                                            str45 = eVar7.f15470b;
                                                                                            if (str45 == null) {
                                                                                                i32 = 0;
                                                                                            } else {
                                                                                                i32 = 2;
                                                                                            }
                                                                                            i21 |= i32;
                                                                                        }
                                                                                        i20++;
                                                                                        arrayList48 = arrayList618;
                                                                                    } else {
                                                                                        arrayList28 = arrayList48;
                                                                                        iQ = 0;
                                                                                        while (i22 < arrayList28.size()) {
                                                                                            eVar6 = (e) arrayList28.get(i22);
                                                                                            if (androidx.activity.k.d("urn:mpeg:dash:role:2011", eVar6.f15469a)) {
                                                                                                iQ |= dVar.q(eVar6.f15470b);
                                                                                            }
                                                                                        }
                                                                                        i23 = 0;
                                                                                        iQ2 = 0;
                                                                                        while (i23 < arrayList21.size()) {
                                                                                            ArrayList arrayList619 = arrayList21;
                                                                                            ArrayList arrayList6110 = arrayList28;
                                                                                            eVar5 = (e) arrayList619.get(i23);
                                                                                            ArrayList arrayList6111 = arrayList25;
                                                                                            if (androidx.activity.k.d(str38, eVar5.f15469a)) {
                                                                                                iQ2 |= dVar.q(eVar5.f15470b);
                                                                                                str43 = str38;
                                                                                            } else {
                                                                                                str43 = str38;
                                                                                                if (!androidx.activity.k.d("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar5.f15469a)) {
                                                                                                    str44 = eVar5.f15470b;
                                                                                                    if (str44 == null) {
                                                                                                        i31 = 0;
                                                                                                    } else {
                                                                                                        switch (str44.hashCode()) {
                                                                                                            case 49:
                                                                                                                if (str44.equals("1")) {
                                                                                                                    b10 = -1;
                                                                                                                } else {
                                                                                                                    b10 = 0;
                                                                                                                }
                                                                                                                break;
                                                                                                            case 50:
                                                                                                                if (str44.equals("2")) {
                                                                                                                    b10 = -1;
                                                                                                                } else {
                                                                                                                    b10 = 1;
                                                                                                                }
                                                                                                                break;
                                                                                                            case 51:
                                                                                                                if (str44.equals("3")) {
                                                                                                                    b10 = -1;
                                                                                                                } else {
                                                                                                                    b10 = 2;
                                                                                                                }
                                                                                                                break;
                                                                                                            case 52:
                                                                                                                if (str44.equals("4")) {
                                                                                                                    b10 = -1;
                                                                                                                } else {
                                                                                                                    b10 = 3;
                                                                                                                }
                                                                                                                break;
                                                                                                            case 53:
                                                                                                            default:
                                                                                                                b10 = -1;
                                                                                                                break;
                                                                                                            case 54:
                                                                                                                if (str44.equals("6")) {
                                                                                                                    b10 = -1;
                                                                                                                } else {
                                                                                                                    b10 = 4;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                        if (b10 != 0) {
                                                                                                            i31 = 512;
                                                                                                        } else if (b10 != 1) {
                                                                                                            i31 = 2048;
                                                                                                        } else if (b10 != 2) {
                                                                                                            i31 = 4;
                                                                                                        } else if (b10 != 3) {
                                                                                                            i31 = 8;
                                                                                                        } else if (b10 != 4) {
                                                                                                            i31 = 0;
                                                                                                        } else {
                                                                                                            i31 = 1;
                                                                                                        }
                                                                                                    }
                                                                                                    iQ2 = i31 | iQ2;
                                                                                                }
                                                                                            }
                                                                                            i23++;
                                                                                            arrayList21 = arrayList619;
                                                                                            str38 = str43;
                                                                                            arrayList28 = arrayList6110;
                                                                                            arrayList25 = arrayList6111;
                                                                                        }
                                                                                        ArrayList arrayList713 = arrayList25;
                                                                                        arrayList10 = arrayList28;
                                                                                        arrayList29 = arrayList21;
                                                                                        int iR4 = iQ | iQ2 | dVar.r(arrayList26) | dVar.r(arrayList27);
                                                                                        aVar = new s0.a();
                                                                                        aVar.f11695a = str27;
                                                                                        aVar.f11704j = str36;
                                                                                        aVar.f11705k = strE;
                                                                                        aVar.f11702h = str37;
                                                                                        aVar.f11701g = i16;
                                                                                        aVar.f11698d = i21;
                                                                                        aVar.f11699e = iR4;
                                                                                        String str910 = str26;
                                                                                        aVar.f11697c = str910;
                                                                                        if (s.n(strE)) {
                                                                                            aVar.f11710p = i15;
                                                                                            aVar.f11711q = i14;
                                                                                            aVar.f11712r = f11;
                                                                                        } else {
                                                                                            i24 = i15;
                                                                                            i25 = i14;
                                                                                            if (s.k(strE)) {
                                                                                                aVar.f11718x = i19;
                                                                                                aVar.f11719y = i18;
                                                                                            } else if (s.m(strE)) {
                                                                                                if ("application/cea-608".equals(strE)) {
                                                                                                    i29 = 0;
                                                                                                    while (true) {
                                                                                                        if (i29 < arrayList29.size()) {
                                                                                                            eVar3 = (e) arrayList29.get(i29);
                                                                                                            if (!"urn:scte:dash:cc:cea-608:2015".equals(eVar3.f15469a)) {
                                                                                                            }
                                                                                                            i29++;
                                                                                                        }
                                                                                                        aVar.C = i28;
                                                                                                        z15 = z17;
                                                                                                    }
                                                                                                } else {
                                                                                                    if ("application/cea-708".equals(strE)) {
                                                                                                        i26 = 0;
                                                                                                        while (true) {
                                                                                                            if (i26 < arrayList29.size()) {
                                                                                                                eVar2 = (e) arrayList29.get(i26);
                                                                                                                if (!"urn:scte:dash:cc:cea-708:2015".equals(eVar2.f15469a)) {
                                                                                                                }
                                                                                                                i26++;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    int i59 = i27;
                                                                                                    z17 = z16;
                                                                                                    i28 = i59;
                                                                                                    aVar.C = i28;
                                                                                                    z15 = z17;
                                                                                                }
                                                                                                z16 = true;
                                                                                                i27 = -1;
                                                                                                int i510 = i27;
                                                                                                z17 = z16;
                                                                                                i28 = i510;
                                                                                                aVar.C = i28;
                                                                                                z15 = z17;
                                                                                            } else {
                                                                                                if (s.l(strE)) {
                                                                                                    aVar.f11710p = i24;
                                                                                                    aVar.f11711q = i25;
                                                                                                }
                                                                                                z15 = true;
                                                                                            }
                                                                                            s0 s0Var8 = new s0(aVar);
                                                                                            if (kVarU3 != null) {
                                                                                                eVar4 = kVarU3;
                                                                                            } else {
                                                                                                eVar4 = new k.e();
                                                                                            }
                                                                                            if (arrayList20.isEmpty()) {
                                                                                                arrayList30 = arrayList20;
                                                                                            } else {
                                                                                                arrayList30 = arrayList22;
                                                                                            }
                                                                                            a aVar10 = new a(s0Var8, arrayList30, eVar4, str87, arrayList24, arrayList713, arrayList26, arrayList27);
                                                                                            i43 = s.i(s0Var8.f11687s);
                                                                                            i30 = i17;
                                                                                            if (i30 != -1) {
                                                                                                if (i43 != -1) {
                                                                                                    if (i30 == i43) {
                                                                                                        z18 = z15;
                                                                                                    } else {
                                                                                                        z18 = false;
                                                                                                    }
                                                                                                    m5.a.e(z18);
                                                                                                }
                                                                                                i43 = i30;
                                                                                            }
                                                                                            ArrayList arrayList714 = arrayList23;
                                                                                            arrayList714.add(aVar10);
                                                                                            xmlPullParser7 = xmlPullParser;
                                                                                            z13 = z15;
                                                                                            str67 = str910;
                                                                                            arrayList13 = arrayList714;
                                                                                            arrayList15 = arrayList29;
                                                                                            str41 = strW;
                                                                                            str42 = str30;
                                                                                            arrayList16 = arrayList19;
                                                                                            str21 = str31;
                                                                                        }
                                                                                        z15 = true;
                                                                                        s0 s0Var9 = new s0(aVar);
                                                                                        if (kVarU3 != null) {
                                                                                            eVar4 = kVarU3;
                                                                                        } else {
                                                                                            eVar4 = new k.e();
                                                                                        }
                                                                                        if (arrayList20.isEmpty()) {
                                                                                            arrayList30 = arrayList20;
                                                                                        } else {
                                                                                            arrayList30 = arrayList22;
                                                                                        }
                                                                                        a aVar11 = new a(s0Var9, arrayList30, eVar4, str87, arrayList24, arrayList713, arrayList26, arrayList27);
                                                                                        i43 = s.i(s0Var9.f11687s);
                                                                                        i30 = i17;
                                                                                        if (i30 != -1) {
                                                                                            if (i43 != -1) {
                                                                                                if (i30 == i43) {
                                                                                                    z18 = z15;
                                                                                                } else {
                                                                                                    z18 = false;
                                                                                                }
                                                                                                m5.a.e(z18);
                                                                                            }
                                                                                            i43 = i30;
                                                                                        }
                                                                                        ArrayList arrayList715 = arrayList23;
                                                                                        arrayList715.add(aVar11);
                                                                                        xmlPullParser7 = xmlPullParser;
                                                                                        z13 = z15;
                                                                                        str67 = str910;
                                                                                        arrayList13 = arrayList715;
                                                                                        arrayList15 = arrayList29;
                                                                                        str41 = strW;
                                                                                        str42 = str30;
                                                                                        arrayList16 = arrayList19;
                                                                                        str21 = str31;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                ArrayList arrayList716 = arrayList25;
                                                                                ArrayList arrayList717 = arrayList21;
                                                                                z13 = true;
                                                                                arrayList57 = arrayList24;
                                                                                str78 = str27;
                                                                                iE2 = i19;
                                                                                arrayList59 = arrayList26;
                                                                                arrayList60 = arrayList27;
                                                                                str86 = str19;
                                                                                str51 = str2;
                                                                                str88 = str17;
                                                                                i49 = i10;
                                                                                str50 = str3;
                                                                                i46 = i17;
                                                                                str60 = str30;
                                                                                fL2 = f11;
                                                                                i52 = i18;
                                                                                arrayList51 = arrayList23;
                                                                                str59 = str10;
                                                                                str85 = str12;
                                                                                str61 = str13;
                                                                                arrayList45 = arrayList12;
                                                                                arrayList46 = arrayList19;
                                                                                arrayList58 = arrayList716;
                                                                                xmlPullParser7 = xmlPullParser;
                                                                                str73 = str33;
                                                                                obj5 = obj5;
                                                                                arrayList43 = arrayList4;
                                                                                arrayList61 = arrayList20;
                                                                                str83 = str14;
                                                                                i50 = i14;
                                                                                str69 = str29;
                                                                                str71 = str35;
                                                                                str82 = str28;
                                                                                jF6 = j21;
                                                                                i51 = i12;
                                                                                str75 = str;
                                                                                arrayList18 = arrayList11;
                                                                                j34 = j16;
                                                                                arrayList56 = arrayList717;
                                                                                str80 = str18;
                                                                                z11 = z12;
                                                                                i47 = i15;
                                                                                str70 = str32;
                                                                                str77 = str26;
                                                                                arrayList55 = arrayList14;
                                                                                str62 = str20;
                                                                                str57 = str31;
                                                                                ArrayList arrayList718 = arrayList22;
                                                                                str72 = str34;
                                                                                i13 = i42;
                                                                                iM5 = i16;
                                                                                arrayList17 = arrayList718;
                                                                                long j42 = j11;
                                                                                str54 = str9;
                                                                                j10 = j42;
                                                                                str55 = str4;
                                                                                ArrayList arrayList719 = arrayList3;
                                                                                f19 = f10;
                                                                                arrayList44 = arrayList719;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        arrayList9 = arrayList49;
                                                                        arrayList10 = arrayList48;
                                                                        arrayList11 = arrayList52;
                                                                        str12 = str58;
                                                                        arrayList12 = arrayList45;
                                                                        str4 = str55;
                                                                        String str100 = str57;
                                                                        j16 = j34;
                                                                        str10 = str59;
                                                                        arrayList3 = arrayList44;
                                                                        str13 = str61;
                                                                        String str101 = str62;
                                                                        ArrayList arrayList80 = arrayList46;
                                                                        f10 = f17;
                                                                        i10 = i41;
                                                                        str14 = str64;
                                                                        arrayList13 = arrayList51;
                                                                        arrayList14 = arrayList55;
                                                                        i11 = i43;
                                                                        str2 = str51;
                                                                        str15 = str67;
                                                                        z12 = z11;
                                                                        str16 = str60;
                                                                        str17 = str68;
                                                                        arrayList15 = arrayList47;
                                                                        str18 = str66;
                                                                        int i60 = i40;
                                                                        str3 = str50;
                                                                        long j43 = j10;
                                                                        str9 = str54;
                                                                        j11 = j43;
                                                                        arrayList4 = arrayList43;
                                                                        str19 = str63;
                                                                        i12 = i60;
                                                                        if (h0.g(xmlPullParser7, str101)) {
                                                                            kVarT = dVar.s(xmlPullParser7, (k.e) kVarU2);
                                                                            str20 = str101;
                                                                            xmlPullParser4 = xmlPullParser7;
                                                                        } else {
                                                                            if (h0.g(xmlPullParser7, str13)) {
                                                                                jF5 = dVar.f(xmlPullParser7, jF5);
                                                                                str20 = str101;
                                                                                str13 = str13;
                                                                                xmlPullParser4 = xmlPullParser7;
                                                                                kVarT = t(xmlPullParser, (k.b) kVarU2, j31, jK7, j19, jF5, jK4);
                                                                            } else {
                                                                                str20 = str101;
                                                                                j20 = jF5;
                                                                                xmlPullParser4 = xmlPullParser7;
                                                                                if (h0.g(xmlPullParser4, str100)) {
                                                                                    str13 = str13;
                                                                                    long jF9 = dVar.f(xmlPullParser4, j20);
                                                                                    str21 = str100;
                                                                                    kVarU2 = u(xmlPullParser, (k.c) kVarU2, arrayList14, j31, jK7, j19, jF9, jK4);
                                                                                    jF5 = jF9;
                                                                                } else {
                                                                                    str21 = str100;
                                                                                    arrayList15 = arrayList15;
                                                                                    if (h0.g(xmlPullParser4, "InbandEventStream")) {
                                                                                        str13 = str13;
                                                                                        arrayList16 = arrayList80;
                                                                                        arrayList16.add(j(xmlPullParser4, "InbandEventStream"));
                                                                                    } else {
                                                                                        arrayList16 = arrayList80;
                                                                                        if (h0.g(xmlPullParser4, "Label")) {
                                                                                            str13 = str13;
                                                                                            strW = w(xmlPullParser4, "Label");
                                                                                        } else if (h0.f(xmlPullParser)) {
                                                                                            str13 = str13;
                                                                                            d(xmlPullParser);
                                                                                        }
                                                                                    }
                                                                                    str13 = str13;
                                                                                    jF5 = j20;
                                                                                    xmlPullParser7 = xmlPullParser4;
                                                                                    str67 = str15;
                                                                                    i43 = i11;
                                                                                    str41 = strW;
                                                                                    str42 = str16;
                                                                                }
                                                                            }
                                                                            arrayList16 = arrayList80;
                                                                            xmlPullParser7 = xmlPullParser4;
                                                                            str67 = str15;
                                                                            i43 = i11;
                                                                            str41 = strW;
                                                                            str42 = str16;
                                                                        }
                                                                        kVarU2 = kVarT;
                                                                        str21 = str100;
                                                                        arrayList16 = arrayList80;
                                                                        xmlPullParser7 = xmlPullParser4;
                                                                        str67 = str15;
                                                                        i43 = i11;
                                                                        str41 = strW;
                                                                        str42 = str16;
                                                                    }
                                                                }
                                                            }
                                                            if (h0.e(xmlPullParser7, str42)) {
                                                                arrayList32 = new ArrayList(arrayList13.size());
                                                                i34 = 0;
                                                                while (i34 < arrayList13.size()) {
                                                                    arrayList33 = arrayList13;
                                                                    a aVar12 = (a) arrayList33.get(i34);
                                                                    aVar2 = new s0.a(aVar12.f15460a);
                                                                    if (str41 != null) {
                                                                        aVar2.f11696b = str41;
                                                                    }
                                                                    str47 = aVar12.f15463d;
                                                                    if (str47 == null) {
                                                                        str47 = str65;
                                                                    }
                                                                    arrayList34 = aVar12.f15464e;
                                                                    ArrayList arrayList81 = arrayList12;
                                                                    arrayList34.addAll(arrayList81);
                                                                    if (arrayList34.isEmpty()) {
                                                                        str48 = str41;
                                                                        arrayList13 = arrayList33;
                                                                    } else {
                                                                        i35 = 0;
                                                                        while (true) {
                                                                            if (i35 < arrayList34.size()) {
                                                                                bVar4 = arrayList34.get(i35);
                                                                                if (n3.i.f11427c.equals(bVar4.f14484i) || (str49 = bVar4.f14485j) == null) {
                                                                                    i35++;
                                                                                } else {
                                                                                    arrayList34.remove(i35);
                                                                                }
                                                                            } else {
                                                                                str49 = null;
                                                                            }
                                                                        }
                                                                        if (str49 != null) {
                                                                            i36 = 0;
                                                                            while (i36 < arrayList34.size()) {
                                                                                bVar = arrayList34.get(i36);
                                                                                String str102 = str41;
                                                                                if (!n3.i.f11426b.equals(bVar.f14484i) && bVar.f14485j == null) {
                                                                                    arrayList34.set(i36, new r3.d.b(n3.i.f11427c, str49, bVar.f14486k, bVar.f14487l));
                                                                                }
                                                                                i36++;
                                                                                str41 = str102;
                                                                                arrayList33 = arrayList33;
                                                                            }
                                                                        }
                                                                        str48 = str41;
                                                                        arrayList13 = arrayList33;
                                                                        size = arrayList34.size();
                                                                        while (true) {
                                                                            size--;
                                                                            if (size >= 0) {
                                                                                bVar2 = arrayList34.get(size);
                                                                                if (!bVar2.a()) {
                                                                                    for (i37 = 0; i37 < arrayList34.size(); i37++) {
                                                                                        bVar3 = arrayList34.get(i37);
                                                                                        if (bVar3.a() || bVar2.a() || !bVar3.b(bVar2.f14484i)) {
                                                                                            z19 = false;
                                                                                        } else {
                                                                                            z19 = z13;
                                                                                        }
                                                                                        if (z19) {
                                                                                            arrayList34.remove(size);
                                                                                            break;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                aVar2.f11708n = new r3.d(str47, false, (r3.d.b[]) arrayList34.toArray(new r3.d.b[0]));
                                                                            }
                                                                        }
                                                                    }
                                                                    arrayList35 = aVar12.f15465f;
                                                                    arrayList35.addAll(arrayList16);
                                                                    j23 = aVar12.f15466g;
                                                                    s0Var = new s0(aVar2);
                                                                    vVar = aVar12.f15461b;
                                                                    kVar = aVar12.f15462c;
                                                                    list = aVar12.f15467h;
                                                                    list2 = aVar12.f15468i;
                                                                    if (kVar instanceof k.e) {
                                                                        aVar3 = new j.b(j23, s0Var, vVar, (k.e) kVar, arrayList35, list, list2);
                                                                    } else {
                                                                        if (!(kVar instanceof k.a)) {
                                                                            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
                                                                        }
                                                                        aVar3 = new j.a(j23, s0Var, vVar, (k.a) kVar, arrayList35, list, list2);
                                                                    }
                                                                    arrayList32.add(aVar3);
                                                                    i34++;
                                                                    arrayList12 = arrayList81;
                                                                    str41 = str48;
                                                                }
                                                                arrayList4.add(new t4.a(iM, i43, arrayList32, arrayList15, arrayList9, arrayList14));
                                                                xmlPullParser2 = xmlPullParser;
                                                                arrayList5 = arrayList40;
                                                            } else {
                                                                arrayList46 = arrayList16;
                                                                strW = str41;
                                                                str51 = str2;
                                                                arrayList53 = arrayList14;
                                                                str66 = str18;
                                                                str50 = str3;
                                                                arrayList47 = arrayList15;
                                                                z11 = z12;
                                                                arrayList41 = arrayList8;
                                                                j35 = j19;
                                                                arrayList48 = arrayList10;
                                                                arrayList52 = arrayList11;
                                                                arrayList51 = arrayList13;
                                                                str59 = str10;
                                                                j34 = j16;
                                                                str58 = str12;
                                                                str62 = str20;
                                                                arrayList45 = arrayList12;
                                                                str57 = str21;
                                                                str68 = str17;
                                                                f17 = f10;
                                                                i40 = i12;
                                                                str64 = str14;
                                                                arrayList44 = arrayList3;
                                                                str60 = str42;
                                                                str63 = str19;
                                                                i41 = i10;
                                                                arrayList49 = arrayList9;
                                                                str61 = str13;
                                                                arrayList43 = arrayList4;
                                                                long j44 = j11;
                                                                str54 = str9;
                                                                j10 = j44;
                                                                str55 = str4;
                                                            }
                                                        }
                                                        arrayList31 = arrayList53;
                                                        arrayList9 = arrayList49;
                                                        arrayList10 = arrayList48;
                                                        arrayList11 = arrayList52;
                                                        xmlPullParser4 = xmlPullParser7;
                                                        str12 = str58;
                                                        arrayList12 = arrayList45;
                                                        str4 = str55;
                                                        str21 = str57;
                                                        j16 = j34;
                                                        str10 = str59;
                                                        arrayList3 = arrayList44;
                                                        str13 = str61;
                                                        str20 = str62;
                                                        f10 = f17;
                                                        i10 = i41;
                                                        str14 = str64;
                                                        arrayList13 = arrayList51;
                                                        arrayList14 = arrayList31;
                                                        str2 = str51;
                                                        str15 = str67;
                                                        arrayList15 = arrayList47;
                                                        z12 = z11;
                                                        str16 = str60;
                                                        str17 = str68;
                                                        arrayList16 = arrayList46;
                                                        i11 = i43;
                                                        str18 = str66;
                                                        j20 = jF5;
                                                        int i410 = i40;
                                                        str3 = str50;
                                                        long j310 = j10;
                                                        str9 = str54;
                                                        j11 = j310;
                                                        arrayList4 = arrayList43;
                                                        str19 = str63;
                                                        i12 = i410;
                                                        str13 = str13;
                                                        jF5 = j20;
                                                        xmlPullParser7 = xmlPullParser4;
                                                        str67 = str15;
                                                        i43 = i11;
                                                        str41 = strW;
                                                        str42 = str16;
                                                        if (h0.e(xmlPullParser7, str42)) {
                                                            arrayList32 = new ArrayList(arrayList13.size());
                                                            i34 = 0;
                                                            while (i34 < arrayList13.size()) {
                                                                arrayList33 = arrayList13;
                                                                a aVar13 = (a) arrayList33.get(i34);
                                                                aVar2 = new s0.a(aVar13.f15460a);
                                                                if (str41 != null) {
                                                                    aVar2.f11696b = str41;
                                                                }
                                                                str47 = aVar13.f15463d;
                                                                if (str47 == null) {
                                                                    str47 = str65;
                                                                }
                                                                arrayList34 = aVar13.f15464e;
                                                                ArrayList arrayList82 = arrayList12;
                                                                arrayList34.addAll(arrayList82);
                                                                if (arrayList34.isEmpty()) {
                                                                    i35 = 0;
                                                                    while (true) {
                                                                        if (i35 < arrayList34.size()) {
                                                                            bVar4 = arrayList34.get(i35);
                                                                            if (n3.i.f11427c.equals(bVar4.f14484i)) {
                                                                            }
                                                                            i35++;
                                                                        } else {
                                                                            str49 = null;
                                                                        }
                                                                    }
                                                                    if (str49 != null) {
                                                                        i36 = 0;
                                                                        while (i36 < arrayList34.size()) {
                                                                            bVar = arrayList34.get(i36);
                                                                            String str103 = str41;
                                                                            if (!n3.i.f11426b.equals(bVar.f14484i)) {
                                                                            }
                                                                            i36++;
                                                                            str41 = str103;
                                                                            arrayList33 = arrayList33;
                                                                        }
                                                                    }
                                                                    str48 = str41;
                                                                    arrayList13 = arrayList33;
                                                                    size = arrayList34.size();
                                                                    while (true) {
                                                                        size--;
                                                                        if (size >= 0) {
                                                                            bVar2 = arrayList34.get(size);
                                                                            if (!bVar2.a()) {
                                                                                while (i37 < arrayList34.size()) {
                                                                                    bVar3 = arrayList34.get(i37);
                                                                                    if (bVar3.a()) {
                                                                                        z19 = false;
                                                                                    } else {
                                                                                        z19 = false;
                                                                                    }
                                                                                    if (z19) {
                                                                                        arrayList34.remove(size);
                                                                                        break;
                                                                                        break;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            aVar2.f11708n = new r3.d(str47, false, (r3.d.b[]) arrayList34.toArray(new r3.d.b[0]));
                                                                        }
                                                                    }
                                                                } else {
                                                                    str48 = str41;
                                                                    arrayList13 = arrayList33;
                                                                }
                                                                arrayList35 = aVar13.f15465f;
                                                                arrayList35.addAll(arrayList16);
                                                                j23 = aVar13.f15466g;
                                                                s0Var = new s0(aVar2);
                                                                vVar = aVar13.f15461b;
                                                                kVar = aVar13.f15462c;
                                                                list = aVar13.f15467h;
                                                                list2 = aVar13.f15468i;
                                                                if (kVar instanceof k.e) {
                                                                    aVar3 = new j.b(j23, s0Var, vVar, (k.e) kVar, arrayList35, list, list2);
                                                                } else {
                                                                    if (!(kVar instanceof k.a)) {
                                                                        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
                                                                    }
                                                                    aVar3 = new j.a(j23, s0Var, vVar, (k.a) kVar, arrayList35, list, list2);
                                                                }
                                                                arrayList32.add(aVar3);
                                                                i34++;
                                                                arrayList12 = arrayList82;
                                                                str41 = str48;
                                                            }
                                                            arrayList4.add(new t4.a(iM, i43, arrayList32, arrayList15, arrayList9, arrayList14));
                                                            xmlPullParser2 = xmlPullParser;
                                                            arrayList5 = arrayList40;
                                                        } else {
                                                            arrayList46 = arrayList16;
                                                            strW = str41;
                                                            str51 = str2;
                                                            arrayList53 = arrayList14;
                                                            str66 = str18;
                                                            str50 = str3;
                                                            arrayList47 = arrayList15;
                                                            z11 = z12;
                                                            arrayList41 = arrayList8;
                                                            j35 = j19;
                                                            arrayList48 = arrayList10;
                                                            arrayList52 = arrayList11;
                                                            arrayList51 = arrayList13;
                                                            str59 = str10;
                                                            j34 = j16;
                                                            str58 = str12;
                                                            str62 = str20;
                                                            arrayList45 = arrayList12;
                                                            str57 = str21;
                                                            str68 = str17;
                                                            f17 = f10;
                                                            i40 = i12;
                                                            str64 = str14;
                                                            arrayList44 = arrayList3;
                                                            str60 = str42;
                                                            str63 = str19;
                                                            i41 = i10;
                                                            arrayList49 = arrayList9;
                                                            str61 = str13;
                                                            arrayList43 = arrayList4;
                                                            long j45 = j11;
                                                            str54 = str9;
                                                            j10 = j45;
                                                            str55 = str4;
                                                        }
                                                    }
                                                }
                                                j22 = j19;
                                            }
                                            j19 = j22;
                                            arrayList9 = arrayList49;
                                            arrayList10 = arrayList48;
                                            arrayList11 = arrayList52;
                                            str12 = str58;
                                            arrayList12 = arrayList45;
                                            str4 = str55;
                                            str21 = str57;
                                            j16 = j34;
                                            str10 = str59;
                                            str42 = str60;
                                            arrayList3 = arrayList44;
                                            str13 = str61;
                                            str20 = str62;
                                            str17 = str68;
                                            arrayList16 = arrayList46;
                                            str41 = strW;
                                            f10 = f17;
                                            i10 = i41;
                                            str14 = str64;
                                            arrayList13 = arrayList51;
                                            arrayList14 = arrayList53;
                                            str2 = str51;
                                            arrayList15 = arrayList47;
                                            z12 = z11;
                                            str18 = str66;
                                            int i61 = i40;
                                            str3 = str50;
                                            long j46 = j10;
                                            str9 = str54;
                                            j11 = j46;
                                            arrayList4 = arrayList43;
                                            str19 = str63;
                                            i12 = i61;
                                            if (h0.e(xmlPullParser7, str42)) {
                                                arrayList32 = new ArrayList(arrayList13.size());
                                                i34 = 0;
                                                while (i34 < arrayList13.size()) {
                                                    arrayList33 = arrayList13;
                                                    a aVar14 = (a) arrayList33.get(i34);
                                                    aVar2 = new s0.a(aVar14.f15460a);
                                                    if (str41 != null) {
                                                        aVar2.f11696b = str41;
                                                    }
                                                    str47 = aVar14.f15463d;
                                                    if (str47 == null) {
                                                        str47 = str65;
                                                    }
                                                    arrayList34 = aVar14.f15464e;
                                                    ArrayList arrayList83 = arrayList12;
                                                    arrayList34.addAll(arrayList83);
                                                    if (arrayList34.isEmpty()) {
                                                        i35 = 0;
                                                        while (true) {
                                                            if (i35 < arrayList34.size()) {
                                                                bVar4 = arrayList34.get(i35);
                                                                if (n3.i.f11427c.equals(bVar4.f14484i)) {
                                                                }
                                                                i35++;
                                                            } else {
                                                                str49 = null;
                                                            }
                                                        }
                                                        if (str49 != null) {
                                                            i36 = 0;
                                                            while (i36 < arrayList34.size()) {
                                                                bVar = arrayList34.get(i36);
                                                                String str104 = str41;
                                                                if (!n3.i.f11426b.equals(bVar.f14484i)) {
                                                                }
                                                                i36++;
                                                                str41 = str104;
                                                                arrayList33 = arrayList33;
                                                            }
                                                        }
                                                        str48 = str41;
                                                        arrayList13 = arrayList33;
                                                        size = arrayList34.size();
                                                        while (true) {
                                                            size--;
                                                            if (size >= 0) {
                                                                bVar2 = arrayList34.get(size);
                                                                if (!bVar2.a()) {
                                                                    while (i37 < arrayList34.size()) {
                                                                        bVar3 = arrayList34.get(i37);
                                                                        if (bVar3.a()) {
                                                                            z19 = false;
                                                                        } else {
                                                                            z19 = false;
                                                                        }
                                                                        if (z19) {
                                                                            arrayList34.remove(size);
                                                                            break;
                                                                            break;
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                aVar2.f11708n = new r3.d(str47, false, (r3.d.b[]) arrayList34.toArray(new r3.d.b[0]));
                                                            }
                                                        }
                                                    } else {
                                                        str48 = str41;
                                                        arrayList13 = arrayList33;
                                                    }
                                                    arrayList35 = aVar14.f15465f;
                                                    arrayList35.addAll(arrayList16);
                                                    j23 = aVar14.f15466g;
                                                    s0Var = new s0(aVar2);
                                                    vVar = aVar14.f15461b;
                                                    kVar = aVar14.f15462c;
                                                    list = aVar14.f15467h;
                                                    list2 = aVar14.f15468i;
                                                    if (kVar instanceof k.e) {
                                                        aVar3 = new j.b(j23, s0Var, vVar, (k.e) kVar, arrayList35, list, list2);
                                                    } else {
                                                        if (!(kVar instanceof k.a)) {
                                                            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
                                                        }
                                                        aVar3 = new j.a(j23, s0Var, vVar, (k.a) kVar, arrayList35, list, list2);
                                                    }
                                                    arrayList32.add(aVar3);
                                                    i34++;
                                                    arrayList12 = arrayList83;
                                                    str41 = str48;
                                                }
                                                arrayList4.add(new t4.a(iM, i43, arrayList32, arrayList15, arrayList9, arrayList14));
                                                xmlPullParser2 = xmlPullParser;
                                                arrayList5 = arrayList40;
                                            } else {
                                                arrayList46 = arrayList16;
                                                strW = str41;
                                                str51 = str2;
                                                arrayList53 = arrayList14;
                                                str66 = str18;
                                                str50 = str3;
                                                arrayList47 = arrayList15;
                                                z11 = z12;
                                                arrayList41 = arrayList8;
                                                j35 = j19;
                                                arrayList48 = arrayList10;
                                                arrayList52 = arrayList11;
                                                arrayList51 = arrayList13;
                                                str59 = str10;
                                                j34 = j16;
                                                str58 = str12;
                                                str62 = str20;
                                                arrayList45 = arrayList12;
                                                str57 = str21;
                                                str68 = str17;
                                                f17 = f10;
                                                i40 = i12;
                                                str64 = str14;
                                                arrayList44 = arrayList3;
                                                str60 = str42;
                                                str63 = str19;
                                                i41 = i10;
                                                arrayList49 = arrayList9;
                                                str61 = str13;
                                                arrayList43 = arrayList4;
                                                long j47 = j11;
                                                str54 = str9;
                                                j10 = j47;
                                                str55 = str4;
                                            }
                                        }
                                    } else {
                                        str = str53;
                                        arrayList3 = arrayList38;
                                        String str105 = str52;
                                        str2 = str51;
                                        j16 = j27;
                                        str3 = str50;
                                        z12 = z11;
                                        arrayList41 = arrayList41;
                                        str4 = str55;
                                        arrayList4 = arrayList39;
                                        long j48 = j10;
                                        String str106 = str54;
                                        j11 = j48;
                                        String str107 = "EventStream";
                                        xmlPullParser2 = xmlPullParser;
                                        str56 = str56;
                                        if (h0.g(xmlPullParser2, "EventStream")) {
                                            String str108 = null;
                                            str9 = str106;
                                            String attributeValue17 = xmlPullParser2.getAttributeValue(null, str9);
                                            if (attributeValue17 == null) {
                                                attributeValue17 = "";
                                            }
                                            str10 = str105;
                                            String attributeValue18 = xmlPullParser2.getAttributeValue(null, str10);
                                            String str109 = attributeValue18 != null ? attributeValue18 : "";
                                            long jN4 = n(xmlPullParser2, "timescale", 1L);
                                            ArrayList arrayList84 = new ArrayList();
                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
                                            while (true) {
                                                xmlPullParser.next();
                                                String str110 = "Event";
                                                if (h0.g(xmlPullParser2, "Event")) {
                                                    long jN5 = n(xmlPullParser2, str, 0L);
                                                    long jN6 = n(xmlPullParser2, str56, -9223372036854775807L);
                                                    long jN7 = n(xmlPullParser2, "presentationTime", 0L);
                                                    long j49 = jN4;
                                                    long jR = g0.R(jN6, 1000L, j49);
                                                    long jR2 = g0.R(jN7, 1000000L, j49);
                                                    String attributeValue19 = xmlPullParser2.getAttributeValue(str108, "messageData");
                                                    if (attributeValue19 != null) {
                                                        str108 = attributeValue19;
                                                    }
                                                    byteArrayOutputStream.reset();
                                                    XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
                                                    xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, t6.c.f15538c.name());
                                                    xmlPullParser.nextToken();
                                                    while (!h0.e(xmlPullParser2, str110)) {
                                                        switch (xmlPullParser.getEventType()) {
                                                            case 0:
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                xmlSerializerNewSerializer.startDocument(null, Boolean.FALSE);
                                                                break;
                                                            case 1:
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                xmlSerializerNewSerializer.endDocument();
                                                                break;
                                                            case 2:
                                                                xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                                                                int i62 = 0;
                                                                while (i62 < xmlPullParser.getAttributeCount()) {
                                                                    xmlSerializerNewSerializer.attribute(xmlPullParser2.getAttributeNamespace(i62), xmlPullParser2.getAttributeName(i62), xmlPullParser2.getAttributeValue(i62));
                                                                    i62++;
                                                                    str107 = str107;
                                                                    arrayList84 = arrayList84;
                                                                }
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                break;
                                                            case 3:
                                                                xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                break;
                                                            case 4:
                                                                xmlSerializerNewSerializer.text(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            case 5:
                                                                xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            case 6:
                                                                xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            case 7:
                                                                xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            case 8:
                                                                xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            case 9:
                                                                xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            case 10:
                                                                xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                            default:
                                                                str11 = str107;
                                                                arrayList7 = arrayList84;
                                                                str110 = str110;
                                                                break;
                                                        }
                                                        xmlPullParser.nextToken();
                                                        str110 = str110;
                                                        str107 = str11;
                                                        arrayList84 = arrayList7;
                                                    }
                                                    String str111 = str107;
                                                    ArrayList arrayList85 = arrayList84;
                                                    xmlSerializerNewSerializer.flush();
                                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                    Long lValueOf = Long.valueOf(jR2);
                                                    if (str108 != null) {
                                                        byteArray = g0.F(str108);
                                                    }
                                                    arrayList6 = arrayList85;
                                                    arrayList6.add(Pair.create(lValueOf, new h4.a(attributeValue17, str109, jR, jN5, byteArray)));
                                                    str107 = str111;
                                                } else {
                                                    arrayList6 = arrayList84;
                                                    d(xmlPullParser);
                                                }
                                                if (h0.e(xmlPullParser2, str107)) {
                                                    long[] jArr = new long[arrayList6.size()];
                                                    h4.a[] aVarArr = new h4.a[arrayList6.size()];
                                                    for (int i63 = 0; i63 < arrayList6.size(); i63++) {
                                                        Pair pair = (Pair) arrayList6.get(i63);
                                                        jArr[i63] = ((Long) pair.first).longValue();
                                                        aVarArr[i63] = (h4.a) pair.second;
                                                    }
                                                    arrayList5 = arrayList40;
                                                    arrayList5.add(new f(attributeValue17, str109, jArr, aVarArr));
                                                } else {
                                                    arrayList84 = arrayList6;
                                                    str108 = null;
                                                    str56 = str56;
                                                    str9 = str9;
                                                    arrayList4 = arrayList4;
                                                    jN4 = jN4;
                                                    str10 = str10;
                                                }
                                            }
                                        } else {
                                            arrayList4 = arrayList4;
                                            arrayList5 = arrayList40;
                                            if (h0.g(xmlPullParser2, "SegmentBase")) {
                                                j18 = -9223372036854775807L;
                                                kVarU = s(xmlPullParser2, null);
                                                xmlPullParser6 = xmlPullParser2;
                                                xmlPullParser3 = xmlPullParser6;
                                                eVar = eVarJ;
                                                jF4 = j33;
                                                str8 = str4;
                                                str5 = str105;
                                                str6 = str56;
                                                str7 = str106;
                                            } else {
                                                if (h0.g(xmlPullParser2, "SegmentList")) {
                                                    long jF10 = f(xmlPullParser2, -9223372036854775807L);
                                                    str5 = str105;
                                                    str6 = str56;
                                                    str7 = str106;
                                                    jF3 = jF10;
                                                    kVarU = t(xmlPullParser, null, j31, jK7, j33, jF10, jK4);
                                                    j17 = -9223372036854775807L;
                                                    xmlPullParser3 = xmlPullParser2;
                                                } else {
                                                    str5 = str105;
                                                    str6 = str56;
                                                    str7 = str106;
                                                    if (h0.g(xmlPullParser2, "SegmentTemplate")) {
                                                        jF3 = f(xmlPullParser2, -9223372036854775807L);
                                                        u6.a aVar15 = v.f16002i;
                                                        xmlPullParser3 = xmlPullParser2;
                                                        kVarU = u(xmlPullParser, null, p0.f15967l, j31, jK7, j33, jF3, jK4);
                                                        j17 = -9223372036854775807L;
                                                    } else {
                                                        xmlPullParser3 = xmlPullParser2;
                                                        j17 = -9223372036854775807L;
                                                        if (h0.g(xmlPullParser3, "AssetIdentifier")) {
                                                            eVarJ = j(xmlPullParser3, "AssetIdentifier");
                                                        } else {
                                                            d(xmlPullParser);
                                                        }
                                                    }
                                                }
                                                j18 = j17;
                                                xmlPullParser6 = xmlPullParser3;
                                                eVar = eVarJ;
                                                jF4 = j33;
                                                str8 = str4;
                                            }
                                        }
                                    }
                                    str5 = str10;
                                    String str112 = str9;
                                    str6 = str56;
                                    str7 = str112;
                                    j17 = -9223372036854775807L;
                                    xmlPullParser3 = xmlPullParser2;
                                    j18 = j17;
                                    xmlPullParser6 = xmlPullParser3;
                                    eVar = eVarJ;
                                    jF4 = j33;
                                    str8 = str4;
                                }
                                if (h0.e(xmlPullParser6, str8)) {
                                    Pair pairCreate = Pair.create(new g(attributeValue8, jK6, arrayList4, arrayList5, eVar), Long.valueOf(jK7));
                                    g gVar = (g) pairCreate.first;
                                    if (gVar.f15477b != j18) {
                                        long jLongValue = ((Long) pairCreate.second).longValue();
                                        j13 = jLongValue == j18 ? j18 : gVar.f15477b + jLongValue;
                                        arrayList2 = arrayList42;
                                        arrayList2.add(gVar);
                                        obj2 = null;
                                    } else {
                                        if (!zEquals) {
                                            StringBuilder sbC3 = a0.b.c("Unable to determine start of period ");
                                            sbC3.append(arrayList42.size());
                                            throw i1.b(sbC3.toString(), null);
                                        }
                                        obj2 = null;
                                        z21 = z13;
                                        arrayList2 = arrayList42;
                                        j13 = j16;
                                    }
                                    j12 = j18;
                                    obj = obj2;
                                    r10 = xmlPullParser3;
                                } else {
                                    eVarJ = eVar;
                                    arrayList40 = arrayList5;
                                    arrayList39 = arrayList4;
                                    arrayList41 = arrayList41;
                                    arrayList37 = arrayList;
                                    str52 = str5;
                                    str51 = str2;
                                    str50 = str3;
                                    z11 = z12;
                                    str53 = str;
                                    arrayList38 = arrayList3;
                                    j27 = j16;
                                    dVar = this;
                                    long j50 = j11;
                                    str55 = str8;
                                    str54 = str7;
                                    str56 = str6;
                                    j10 = j50;
                                }
                            }
                        }
                        j14 = j13;
                        j15 = j12;
                        jF2 = j11;
                        r11 = obj;
                        z14 = z13;
                        r13 = r10;
                    }
                    if (h0.e(r13, "MPD")) {
                        if (jK == j15) {
                            if (j14 != j15) {
                                jK = j14;
                            } else if (!zEquals) {
                                throw i1.b("Unable to determine duration of static manifest.", r11);
                            }
                        }
                        if (arrayList2.isEmpty()) {
                            throw i1.b("No periods found.", r11);
                        }
                        return new c(jO, jK, jK2, zEquals, jK3, jK4, jK5, jO2, hVar, hVar2, lVar, uriD, arrayList2);
                    }
                    arrayList36 = arrayList2;
                    j27 = j14;
                    arrayListB = arrayListB;
                    arrayList37 = arrayList;
                    z11 = z12;
                    z10 = z14;
                    r15 = r13;
                    r14 = r11;
                }
                jF2 = j10;
            }
            z14 = z10;
            r12 = r14;
            arrayList = arrayList37;
            arrayListB = arrayListB;
            z12 = z11;
            j14 = j27;
            j15 = -9223372036854775807L;
            arrayList2 = arrayList36;
            r13 = r15;
            r11 = r12;
            if (h0.e(r13, "MPD")) {
                if (jK == j15) {
                    if (j14 != j15) {
                        jK = j14;
                    } else if (!zEquals) {
                        throw i1.b("Unable to determine duration of static manifest.", r11);
                    }
                }
                if (arrayList2.isEmpty()) {
                    return new c(jO, jK, jK2, zEquals, jK3, jK4, jK5, jO2, hVar, hVar2, lVar, uriD, arrayList2);
                }
                throw i1.b("No periods found.", r11);
            }
            arrayList36 = arrayList2;
            j27 = j14;
            arrayListB = arrayListB;
            arrayList37 = arrayList;
            z11 = z12;
            z10 = z14;
            r15 = r13;
            r14 = r11;
        }
    }

    public final i p(XmlPullParser xmlPullParser, String str, String str2) {
        long j10;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j10 = Long.parseLong(strArrSplit[0]);
            long j11 = strArrSplit.length == 2 ? (Long.parseLong(strArrSplit[1]) - j10) + 1 : -1L;
            return new i(attributeValue, j10, j11);
        }
        j10 = 0;
        return new i(attributeValue, j10, j11);
    }

    public final int q(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "subtitle":
            case "forced_subtitle":
            case "forced-subtitle":
                return 128;
            case "description":
                return 512;
            case "enhanced-audio-intelligibility":
                return 2048;
            case "alternate":
                return 2;
            case "dub":
                return 16;
            case "main":
                return 1;
            case "sign":
                return 256;
            case "caption":
                return 64;
            case "commentary":
                return 8;
            case "emergency":
                return 32;
            case "supplementary":
                return 4;
            default:
                return 0;
        }
    }

    public final int r(List<e> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (androidx.activity.k.d("http://dashif.org/guidelines/trickmode", list.get(i11).f15469a)) {
                i10 |= Http2.INITIAL_MAX_FRAME_SIZE;
            }
        }
        return i10;
    }

    public final k.e s(XmlPullParser xmlPullParser, k.e eVar) throws XmlPullParserException, IOException {
        long j10;
        long j11;
        long jN = n(xmlPullParser, "timescale", eVar != null ? eVar.f15501b : 1L);
        long jN2 = n(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.f15502c : 0L);
        long j12 = eVar != null ? eVar.f15515d : 0L;
        long j13 = eVar != null ? eVar.f15516e : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            long j14 = Long.parseLong(strArrSplit[0]);
            j10 = (Long.parseLong(strArrSplit[1]) - j14) + 1;
            j11 = j14;
        } else {
            j10 = j13;
            j11 = j12;
        }
        i iVarP = eVar != null ? eVar.f15500a : null;
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, "Initialization")) {
                iVarP = p(xmlPullParser, "sourceURL", "range");
            } else {
                d(xmlPullParser);
            }
        } while (!h0.e(xmlPullParser, "SegmentBase"));
        return new k.e(iVarP, jN, jN2, j11, j10);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b2 A[PHI: r0 r20
      0x00b2: PHI (r0v7 java.util.List<t4.k$d>) = (r0v6 java.util.List<t4.k$d>), (r0v9 java.util.List<t4.k$d>) binds: [B:32:0x0098, B:39:0x00a6] A[DONT_GENERATE, DONT_INLINE]
      0x00b2: PHI (r20v3 t4.i) = (r20v2 t4.i), (r20v6 t4.i) binds: [B:32:0x0098, B:39:0x00a6] A[DONT_GENERATE, DONT_INLINE]] */
    public final k.b t(XmlPullParser xmlPullParser, k.b bVar, long j10, long j11, long j12, long j13, long j14) throws XmlPullParserException, IOException {
        i iVar;
        List<i> list;
        List<k.d> list2;
        long jN = n(xmlPullParser, "timescale", bVar != null ? bVar.f15501b : 1L);
        long jN2 = n(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.f15502c : 0L);
        long jN3 = n(xmlPullParser, "duration", bVar != null ? bVar.f15504e : -9223372036854775807L);
        long jN4 = n(xmlPullParser, "startNumber", bVar != null ? bVar.f15503d : 1L);
        long jC = c(j12, j13);
        List<k.d> listV = null;
        ArrayList arrayList = null;
        i iVarP = null;
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, "Initialization")) {
                iVarP = p(xmlPullParser, "sourceURL", "range");
            } else if (h0.g(xmlPullParser, "SegmentTimeline")) {
                listV = v(xmlPullParser, jN, j11);
            } else if (h0.g(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                ArrayList arrayList2 = arrayList;
                arrayList2.add(p(xmlPullParser, "media", "mediaRange"));
                arrayList = arrayList2;
            } else {
                d(xmlPullParser);
            }
        } while (!h0.e(xmlPullParser, "SegmentList"));
        if (bVar == null) {
            iVar = iVarP;
            list = arrayList;
            list2 = listV;
        } else {
            if (iVarP == null) {
                iVarP = bVar.f15500a;
            }
            if (listV == null) {
                listV = bVar.f15505f;
            }
            if (arrayList != null) {
                iVar = iVarP;
                list = arrayList;
                list2 = listV;
            } else {
                list2 = listV;
                iVar = iVarP;
                list = bVar.f15509j;
            }
        }
        return new k.b(iVar, jN, jN2, jN4, jN3, list2, jC, list, g0.L(j14), g0.L(j10));
    }

    public final k.c u(XmlPullParser xmlPullParser, k.c cVar, List<e> list, long j10, long j11, long j12, long j13, long j14) throws XmlPullParserException, IOException {
        long j15;
        long jN = n(xmlPullParser, "timescale", cVar != null ? cVar.f15501b : 1L);
        long jN2 = n(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.f15502c : 0L);
        long jN3 = n(xmlPullParser, "duration", cVar != null ? cVar.f15504e : -9223372036854775807L);
        long jN4 = n(xmlPullParser, "startNumber", cVar != null ? cVar.f15503d : 1L);
        int i10 = 0;
        while (true) {
            if (i10 >= list.size()) {
                j15 = -1;
                break;
            }
            e eVar = list.get(i10);
            if (androidx.activity.k.d("http://dashif.org/guidelines/last-segment-number", eVar.f15469a)) {
                j15 = Long.parseLong(eVar.f15470b);
                break;
            }
            i10++;
        }
        long j16 = j15;
        long jC = c(j12, j13);
        List<k.d> listV = null;
        m mVarX = x(xmlPullParser, "media", cVar != null ? cVar.f15511k : null);
        m mVarX2 = x(xmlPullParser, "initialization", cVar != null ? cVar.f15510j : null);
        i iVarP = null;
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, "Initialization")) {
                iVarP = p(xmlPullParser, "sourceURL", "range");
            } else if (h0.g(xmlPullParser, "SegmentTimeline")) {
                listV = v(xmlPullParser, jN, j11);
            } else {
                d(xmlPullParser);
            }
        } while (!h0.e(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (iVarP == null) {
                iVarP = cVar.f15500a;
            }
            if (listV == null) {
                listV = cVar.f15505f;
            }
        }
        return new k.c(iVarP, jN, jN2, jN4, j16, jN3, listV, jC, mVarX2, mVarX, g0.L(j14), g0.L(j10));
    }

    public final List<k.d> v(XmlPullParser xmlPullParser, long j10, long j11) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jB = 0;
        boolean z10 = false;
        int iM = 0;
        long jN = -9223372036854775807L;
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, "S")) {
                long jN2 = n(xmlPullParser, "t", -9223372036854775807L);
                if (z10) {
                    jB = b(arrayList, jB, jN, iM, jN2);
                }
                if (jN2 == -9223372036854775807L) {
                    jN2 = jB;
                }
                jN = n(xmlPullParser, TracePayload.DATA_KEY, -9223372036854775807L);
                iM = m(xmlPullParser, "r", 0);
                z10 = true;
                jB = jN2;
            } else {
                d(xmlPullParser);
            }
        } while (!h0.e(xmlPullParser, "SegmentTimeline"));
        if (z10) {
            b(arrayList, jB, jN, iM, g0.R(j11, j10, 1000L));
        }
        return arrayList;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00c6. Please report as an issue. */
    public final m x(XmlPullParser xmlPullParser, String str, m mVar) {
        String strSubstring;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return mVar;
        }
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        strArr[0] = "";
        int length = 0;
        int i10 = 0;
        while (length < attributeValue.length()) {
            int iIndexOf = attributeValue.indexOf("$", length);
            if (iIndexOf == -1) {
                strArr[i10] = strArr[i10] + attributeValue.substring(length);
                length = attributeValue.length();
            } else if (iIndexOf != length) {
                strArr[i10] = strArr[i10] + attributeValue.substring(length, iIndexOf);
                length = iIndexOf;
            } else if (attributeValue.startsWith("$$", length)) {
                strArr[i10] = a1.f.d(new StringBuilder(), strArr[i10], "$");
                length += 2;
            } else {
                int i11 = length + 1;
                int iIndexOf2 = attributeValue.indexOf("$", i11);
                String strSubstring2 = attributeValue.substring(i11, iIndexOf2);
                if (strSubstring2.equals("RepresentationID")) {
                    iArr[i10] = 1;
                } else {
                    int iIndexOf3 = strSubstring2.indexOf("%0");
                    if (iIndexOf3 != -1) {
                        strSubstring = strSubstring2.substring(iIndexOf3);
                        if (!strSubstring.endsWith(TracePayload.DATA_KEY) && !strSubstring.endsWith("x") && !strSubstring.endsWith("X")) {
                            strSubstring = androidx.recyclerview.widget.d.c(strSubstring, TracePayload.DATA_KEY);
                        }
                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                    } else {
                        strSubstring = "%01d";
                    }
                    Objects.requireNonNull(strSubstring2);
                    strSubstring2.hashCode();
                    switch (strSubstring2) {
                        case "Number":
                            iArr[i10] = 2;
                            break;
                        case "Time":
                            iArr[i10] = 4;
                            break;
                        case "Bandwidth":
                            iArr[i10] = 3;
                            break;
                        default:
                            throw new IllegalArgumentException(androidx.recyclerview.widget.d.c("Invalid template: ", attributeValue));
                    }
                    strArr2[i10] = strSubstring;
                }
                i10++;
                strArr[i10] = "";
                length = iIndexOf2 + 1;
            }
        }
        return new m(strArr, iArr, strArr2, i10);
    }
}
