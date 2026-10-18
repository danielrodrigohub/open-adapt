package y4;

import a4.i;
import a4.m;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import de.n0;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import l5.f0;
import m5.g0;
import n3.i1;
import n3.s0;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: compiled from: SsManifestParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f0.a<y4.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XmlPullParserFactory f18618a;

    /* JADX INFO: compiled from: SsManifestParser.java */
    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f18619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f18620b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f18621c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<Pair<String, Object>> f18622d = new LinkedList();

        public a(a aVar, String str, String str2) {
            this.f18621c = aVar;
            this.f18619a = str;
            this.f18620b = str2;
        }

        public void a(Object obj) {
        }

        public abstract Object b();

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.LinkedList, java.util.List<android.util.Pair<java.lang.String, java.lang.Object>>] */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.LinkedList, java.util.List<android.util.Pair<java.lang.String, java.lang.Object>>] */
        public final Object c(String str) {
            for (int i10 = 0; i10 < this.f18622d.size(); i10++) {
                Pair pair = (Pair) this.f18622d.get(i10);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            a aVar = this.f18621c;
            if (aVar == null) {
                return null;
            }
            return aVar.c(str);
        }

        public boolean d(String str) {
            return false;
        }

        public final Object e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                a fVar = null;
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.f18620b.equals(name)) {
                        k(xmlPullParser);
                        z10 = true;
                    } else if (z10) {
                        if (i10 > 0) {
                            i10++;
                        } else if (d(name)) {
                            k(xmlPullParser);
                        } else {
                            String str = this.f18619a;
                            if ("QualityLevel".equals(name)) {
                                fVar = new d(this, str);
                            } else if ("Protection".equals(name)) {
                                fVar = new c(this, str);
                            } else if ("StreamIndex".equals(name)) {
                                fVar = new f(this, str);
                            }
                            if (fVar == null) {
                                i10 = 1;
                            } else {
                                a(fVar.e(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z10 && i10 == 0) {
                        l(xmlPullParser);
                    }
                } else if (!z10) {
                    continue;
                } else if (i10 > 0) {
                    i10--;
                } else {
                    String name2 = xmlPullParser.getName();
                    f(xmlPullParser);
                    if (!d(name2)) {
                        return b();
                    }
                }
                xmlPullParser.next();
            }
        }

        public void f(XmlPullParser xmlPullParser) {
        }

        public final int g(XmlPullParser xmlPullParser, String str) throws i1 {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return -1;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e10) {
                throw i1.b(null, e10);
            }
        }

        public final long h(XmlPullParser xmlPullParser, String str, long j10) throws i1 {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j10;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e10) {
                throw i1.b(null, e10);
            }
        }

        public final int i(XmlPullParser xmlPullParser, String str) throws i1 {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new C0321b(str);
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e10) {
                throw i1.b(null, e10);
            }
        }

        public final String j(XmlPullParser xmlPullParser, String str) throws C0321b {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new C0321b(str);
        }

        public abstract void k(XmlPullParser xmlPullParser) throws i1;

        public void l(XmlPullParser xmlPullParser) {
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final void m(String str, Object obj) {
            this.f18622d.add(Pair.create(str, obj));
        }
    }

    /* JADX INFO: renamed from: y4.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SsManifestParser.java */
    public static class C0321b extends i1 {
        public C0321b(String str) {
            super(androidx.recyclerview.widget.d.c("Missing required field: ", str), null, true, 4);
        }
    }

    /* JADX INFO: compiled from: SsManifestParser.java */
    public static class c extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f18623e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public UUID f18624f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[] f18625g;

        public c(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        public static void n(byte[] bArr) {
            byte b10 = bArr[0];
            bArr[0] = bArr[3];
            bArr[3] = b10;
        }

        @Override // y4.b.a
        public final Object b() {
            UUID uuid = this.f18624f;
            byte[] bArrA = i.a(uuid, null, this.f18625g);
            byte[] bArr = this.f18625g;
            m[] mVarArr = new m[1];
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < bArr.length; i10 += 2) {
                sb2.append((char) bArr[i10]);
            }
            String string = sb2.toString();
            byte[] bArrDecode = Base64.decode(string.substring(string.indexOf("<KID>") + 5, string.indexOf("</KID>")), 0);
            n(bArrDecode);
            byte b10 = bArrDecode[1];
            bArrDecode[1] = bArrDecode[2];
            bArrDecode[2] = b10;
            byte b11 = bArrDecode[4];
            bArrDecode[4] = bArrDecode[5];
            bArrDecode[5] = b11;
            byte b12 = bArrDecode[6];
            bArrDecode[6] = bArrDecode[7];
            bArrDecode[7] = b12;
            mVarArr[0] = new m(true, null, 8, bArrDecode, 0, 0, null);
            return new y4.a.C0320a(uuid, bArrA, mVarArr);
        }

        @Override // y4.b.a
        public final boolean d(String str) {
            return "ProtectionHeader".equals(str);
        }

        @Override // y4.b.a
        public final void f(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f18623e = false;
            }
        }

        @Override // y4.b.a
        public final void k(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f18623e = true;
                String attributeValue = xmlPullParser.getAttributeValue(null, "SystemID");
                if (attributeValue.charAt(0) == '{' && attributeValue.charAt(attributeValue.length() - 1) == '}') {
                    attributeValue = attributeValue.substring(1, attributeValue.length() - 1);
                }
                this.f18624f = UUID.fromString(attributeValue);
            }
        }

        @Override // y4.b.a
        public final void l(XmlPullParser xmlPullParser) {
            if (this.f18623e) {
                this.f18625g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    /* JADX INFO: compiled from: SsManifestParser.java */
    public static class d extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public s0 f18626e;

        public d(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        public static List<byte[]> n(String str) {
            byte[][] bArr;
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] bArrQ = g0.q(str);
                if (n0.i(bArrQ, 0)) {
                    ArrayList arrayList2 = new ArrayList();
                    int i10 = 0;
                    do {
                        arrayList2.add(Integer.valueOf(i10));
                        i10 += 4;
                        int length = bArrQ.length - 4;
                        while (true) {
                            if (i10 > length) {
                                i10 = -1;
                                break;
                            }
                            if (n0.i(bArrQ, i10)) {
                                break;
                            }
                            i10++;
                        }
                    } while (i10 != -1);
                    byte[][] bArr2 = new byte[arrayList2.size()][];
                    int i11 = 0;
                    while (i11 < arrayList2.size()) {
                        int iIntValue = ((Integer) arrayList2.get(i11)).intValue();
                        int iIntValue2 = (i11 < arrayList2.size() + (-1) ? ((Integer) arrayList2.get(i11 + 1)).intValue() : bArrQ.length) - iIntValue;
                        byte[] bArr3 = new byte[iIntValue2];
                        System.arraycopy(bArrQ, iIntValue, bArr3, 0, iIntValue2);
                        bArr2[i11] = bArr3;
                        i11++;
                    }
                    bArr = bArr2;
                } else {
                    bArr = null;
                }
                if (bArr == null) {
                    arrayList.add(bArrQ);
                } else {
                    Collections.addAll(arrayList, bArr);
                }
            }
            return arrayList;
        }

        @Override // y4.b.a
        public final Object b() {
            return this.f18626e;
        }

        @Override // y4.b.a
        public final void k(XmlPullParser xmlPullParser) throws i1 {
            String str;
            s0.a aVar = new s0.a();
            String strJ = j(xmlPullParser, "FourCC");
            if (strJ.equalsIgnoreCase("H264") || strJ.equalsIgnoreCase("X264") || strJ.equalsIgnoreCase("AVC1") || strJ.equalsIgnoreCase("DAVC")) {
                str = "video/avc";
            } else if (strJ.equalsIgnoreCase("AAC") || strJ.equalsIgnoreCase("AACL") || strJ.equalsIgnoreCase("AACH") || strJ.equalsIgnoreCase("AACP")) {
                str = "audio/mp4a-latm";
            } else if (strJ.equalsIgnoreCase("TTML") || strJ.equalsIgnoreCase("DFXP")) {
                str = "application/ttml+xml";
            } else if (strJ.equalsIgnoreCase("ac-3") || strJ.equalsIgnoreCase("dac3")) {
                str = "audio/ac3";
            } else if (strJ.equalsIgnoreCase("ec-3") || strJ.equalsIgnoreCase("dec3")) {
                str = "audio/eac3";
            } else if (strJ.equalsIgnoreCase("dtsc")) {
                str = "audio/vnd.dts";
            } else if (strJ.equalsIgnoreCase("dtsh") || strJ.equalsIgnoreCase("dtsl")) {
                str = "audio/vnd.dts.hd";
            } else if (strJ.equalsIgnoreCase("dtse")) {
                str = "audio/vnd.dts.hd;profile=lbr";
            } else {
                str = strJ.equalsIgnoreCase("opus") ? "audio/opus" : null;
            }
            int iIntValue = ((Integer) c("Type")).intValue();
            if (iIntValue == 2) {
                List<byte[]> listN = n(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
                aVar.f11704j = "video/mp4";
                aVar.f11710p = i(xmlPullParser, "MaxWidth");
                aVar.f11711q = i(xmlPullParser, "MaxHeight");
                aVar.f11707m = listN;
            } else if (iIntValue == 1) {
                if (str == null) {
                    str = "audio/mp4a-latm";
                }
                int i10 = i(xmlPullParser, "Channels");
                int i11 = i(xmlPullParser, "SamplingRate");
                List<byte[]> listN2 = n(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
                if (((ArrayList) listN2).isEmpty() && "audio/mp4a-latm".equals(str)) {
                    listN2 = Collections.singletonList(p3.a.a(i11, i10));
                }
                aVar.f11704j = "audio/mp4";
                aVar.f11718x = i10;
                aVar.f11719y = i11;
                aVar.f11707m = listN2;
            } else if (iIntValue == 3) {
                int i12 = 0;
                String str2 = (String) c("Subtype");
                if (str2 != null) {
                    if (str2.equals("CAPT")) {
                        i12 = 64;
                    } else if (str2.equals("DESC")) {
                        i12 = 1024;
                    }
                }
                aVar.f11704j = "application/mp4";
                aVar.f11699e = i12;
            } else {
                aVar.f11704j = "application/mp4";
            }
            aVar.f11695a = xmlPullParser.getAttributeValue(null, "Index");
            aVar.f11696b = (String) c("Name");
            aVar.f11705k = str;
            aVar.f11700f = i(xmlPullParser, "Bitrate");
            aVar.f11697c = (String) c("Language");
            this.f18626e = new s0(aVar);
        }
    }

    /* JADX INFO: compiled from: SsManifestParser.java */
    public static class e extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List<y4.a.b> f18627e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f18628f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f18629g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f18630h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f18631i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f18632j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f18633k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f18634l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public y4.a.C0320a f18635m;

        public e(String str) {
            super(null, str, "SmoothStreamingMedia");
            this.f18633k = -1;
            this.f18635m = null;
            this.f18627e = new LinkedList();
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [java.util.LinkedList, java.util.List<y4.a$b>] */
        @Override // y4.b.a
        public final void a(Object obj) {
            if (obj instanceof y4.a.b) {
                this.f18627e.add((y4.a.b) obj);
            } else if (obj instanceof y4.a.C0320a) {
                m5.a.e(this.f18635m == null);
                this.f18635m = (y4.a.C0320a) obj;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedList, java.util.List<y4.a$b>] */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.LinkedList, java.util.List<y4.a$b>] */
        @Override // y4.b.a
        public final Object b() {
            int size = this.f18627e.size();
            y4.a.b[] bVarArr = new y4.a.b[size];
            this.f18627e.toArray(bVarArr);
            y4.a.C0320a c0320a = this.f18635m;
            if (c0320a != null) {
                r3.d dVar = new r3.d(null, true, new r3.d.b(c0320a.f18599a, null, "video/mp4", c0320a.f18600b));
                for (int i10 = 0; i10 < size; i10++) {
                    y4.a.b bVar = bVarArr[i10];
                    int i11 = bVar.f18602a;
                    if (i11 == 2 || i11 == 1) {
                        s0[] s0VarArr = bVar.f18611j;
                        for (int i12 = 0; i12 < s0VarArr.length; i12++) {
                            s0.a aVar = new s0.a(s0VarArr[i12]);
                            aVar.f11708n = dVar;
                            s0VarArr[i12] = new s0(aVar);
                        }
                    }
                }
            }
            return new y4.a(this.f18628f, this.f18629g, this.f18630h, this.f18631i, this.f18632j, this.f18633k, this.f18634l, this.f18635m, bVarArr);
        }

        @Override // y4.b.a
        public final void k(XmlPullParser xmlPullParser) throws i1 {
            this.f18628f = i(xmlPullParser, "MajorVersion");
            this.f18629g = i(xmlPullParser, "MinorVersion");
            this.f18630h = h(xmlPullParser, "TimeScale", 10000000L);
            String attributeValue = xmlPullParser.getAttributeValue(null, "Duration");
            if (attributeValue == null) {
                throw new C0321b("Duration");
            }
            try {
                this.f18631i = Long.parseLong(attributeValue);
                this.f18632j = h(xmlPullParser, "DVRWindowLength", 0L);
                this.f18633k = g(xmlPullParser, "LookaheadCount");
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "IsLive");
                this.f18634l = attributeValue2 != null ? Boolean.parseBoolean(attributeValue2) : false;
                m("TimeScale", Long.valueOf(this.f18630h));
            } catch (NumberFormatException e10) {
                throw i1.b(null, e10);
            }
        }
    }

    /* JADX INFO: compiled from: SsManifestParser.java */
    public static class f extends a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f18636e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<s0> f18637f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f18638g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f18639h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f18640i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f18641j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f18642k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f18643l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f18644m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f18645n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f18646o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public String f18647p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public ArrayList<Long> f18648q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public long f18649r;

        public f(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f18636e = str;
            this.f18637f = new LinkedList();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.LinkedList, java.util.List<n3.s0>] */
        @Override // y4.b.a
        public final void a(Object obj) {
            if (obj instanceof s0) {
                this.f18637f.add((s0) obj);
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.LinkedList, java.util.List<n3.s0>] */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.LinkedList, java.util.List<n3.s0>] */
        @Override // y4.b.a
        public final Object b() {
            String str;
            s0[] s0VarArr = new s0[this.f18637f.size()];
            this.f18637f.toArray(s0VarArr);
            String str2 = this.f18636e;
            String str3 = this.f18642k;
            int i10 = this.f18638g;
            String str4 = this.f18639h;
            long j10 = this.f18640i;
            String str5 = this.f18641j;
            int i11 = this.f18643l;
            int i12 = this.f18644m;
            int i13 = this.f18645n;
            int i14 = this.f18646o;
            String str6 = this.f18647p;
            ArrayList<Long> arrayList = this.f18648q;
            long j11 = this.f18649r;
            int i15 = g0.f10384a;
            int size = arrayList.size();
            long[] jArr = new long[size];
            if (j10 < 1000000 || j10 % 1000000 != 0) {
                str = str5;
                if (j10 >= 1000000 || 1000000 % j10 != 0) {
                    double d10 = 1000000 / j10;
                    int i16 = 0;
                    while (i16 < size) {
                        jArr[i16] = (long) (arrayList.get(i16).longValue() * d10);
                        i16++;
                        arrayList = arrayList;
                    }
                } else {
                    long j12 = 1000000 / j10;
                    for (int i17 = 0; i17 < size; i17++) {
                        jArr[i17] = arrayList.get(i17).longValue() * j12;
                    }
                }
                return new y4.a.b(str2, str3, i10, str4, j10, str, i11, i12, i13, i14, str6, s0VarArr, arrayList, jArr, g0.R(j11, 1000000L, j10));
            }
            long j13 = j10 / 1000000;
            str = str5;
            for (int i18 = 0; i18 < size; i18++) {
                jArr[i18] = arrayList.get(i18).longValue() / j13;
            }
            return new y4.a.b(str2, str3, i10, str4, j10, str, i11, i12, i13, i14, str6, s0VarArr, arrayList, jArr, g0.R(j11, 1000000L, j10));
        }

        @Override // y4.b.a
        public final boolean d(String str) {
            return "c".equals(str);
        }

        @Override // y4.b.a
        public final void k(XmlPullParser xmlPullParser) throws i1 {
            int i10 = 1;
            if (!"c".equals(xmlPullParser.getName())) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
                if (attributeValue == null) {
                    throw new C0321b("Type");
                }
                if (!"audio".equalsIgnoreCase(attributeValue)) {
                    if ("video".equalsIgnoreCase(attributeValue)) {
                        i10 = 2;
                    } else {
                        if (!"text".equalsIgnoreCase(attributeValue)) {
                            throw i1.b("Invalid key value[" + attributeValue + "]", null);
                        }
                        i10 = 3;
                    }
                }
                this.f18638g = i10;
                m("Type", Integer.valueOf(i10));
                if (this.f18638g == 3) {
                    this.f18639h = j(xmlPullParser, "Subtype");
                } else {
                    this.f18639h = xmlPullParser.getAttributeValue(null, "Subtype");
                }
                m("Subtype", this.f18639h);
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "Name");
                this.f18641j = attributeValue2;
                m("Name", attributeValue2);
                this.f18642k = j(xmlPullParser, "Url");
                this.f18643l = g(xmlPullParser, "MaxWidth");
                this.f18644m = g(xmlPullParser, "MaxHeight");
                this.f18645n = g(xmlPullParser, "DisplayWidth");
                this.f18646o = g(xmlPullParser, "DisplayHeight");
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "Language");
                this.f18647p = attributeValue3;
                m("Language", attributeValue3);
                long jG = g(xmlPullParser, "TimeScale");
                this.f18640i = jG;
                if (jG == -1) {
                    this.f18640i = ((Long) c("TimeScale")).longValue();
                }
                this.f18648q = new ArrayList<>();
                return;
            }
            int size = this.f18648q.size();
            long jH = h(xmlPullParser, "t", -9223372036854775807L);
            if (jH == -9223372036854775807L) {
                if (size == 0) {
                    jH = 0;
                } else {
                    if (this.f18649r == -1) {
                        throw i1.b("Unable to infer start time", null);
                    }
                    jH = this.f18649r + this.f18648q.get(size - 1).longValue();
                }
            }
            this.f18648q.add(Long.valueOf(jH));
            this.f18649r = h(xmlPullParser, TracePayload.DATA_KEY, -9223372036854775807L);
            long jH2 = h(xmlPullParser, "r", 1L);
            if (jH2 > 1 && this.f18649r == -9223372036854775807L) {
                throw i1.b("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j10 = i10;
                if (j10 >= jH2) {
                    return;
                }
                this.f18648q.add(Long.valueOf((this.f18649r * j10) + jH));
                i10++;
            }
        }
    }

    public b() {
        try {
            this.f18618a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    @Override // l5.f0.a
    public final y4.a a(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f18618a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            return (y4.a) new e(uri.toString()).e(xmlPullParserNewPullParser);
        } catch (XmlPullParserException e10) {
            throw i1.b(null, e10);
        }
    }
}
