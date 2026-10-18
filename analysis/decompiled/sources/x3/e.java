package x3;

import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import m5.h0;
import n3.i1;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import u6.h;
import u6.p0;
import u6.t;
import u6.v;

/* JADX INFO: compiled from: XmpMotionPhotoDescriptionParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f17754a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f17755b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f17756c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static b a(String str) throws XmlPullParserException, IOException {
        boolean z10;
        long j10;
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!h0.g(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw i1.a("Couldn't find xmp metadata", null);
        }
        u6.a aVar = v.f16002i;
        v<Object> vVarB = p0.f15967l;
        long j11 = -9223372036854775807L;
        do {
            xmlPullParserNewPullParser.next();
            if (h0.g(xmlPullParserNewPullParser, "rdf:Description")) {
                String[] strArr = f17754a;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    z10 = true;
                    if (i11 < 4) {
                        String strA = h0.a(xmlPullParserNewPullParser, strArr[i11]);
                        if (strA != null) {
                            if (Integer.parseInt(strA) == 1) {
                                break;
                            }
                            break;
                        }
                        i11++;
                    }
                    z10 = false;
                    break;
                }
                if (!z10) {
                    return null;
                }
                String[] strArr2 = f17755b;
                int i12 = 0;
                while (true) {
                    if (i12 < 4) {
                        String strA2 = h0.a(xmlPullParserNewPullParser, strArr2[i12]);
                        if (strA2 != null) {
                            j10 = Long.parseLong(strA2);
                            if (j10 != -1) {
                                break;
                            }
                            break;
                        }
                        i12++;
                    }
                    j10 = -9223372036854775807L;
                    break;
                }
                String[] strArr3 = f17756c;
                while (true) {
                    if (i10 >= 2) {
                        u6.a aVar2 = v.f16002i;
                        vVarB = p0.f15967l;
                        break;
                    }
                    String strA3 = h0.a(xmlPullParserNewPullParser, strArr3[i10]);
                    if (strA3 != null) {
                        vVarB = v.w(new b.a("image/jpeg", 0L, 0L), new b.a("video/mp4", Long.parseLong(strA3), 0L));
                        break;
                    }
                    i10++;
                }
                j11 = j10;
            } else if (h0.g(xmlPullParserNewPullParser, "Container:Directory")) {
                vVarB = b(xmlPullParserNewPullParser, "Container", "Item");
            } else if (h0.g(xmlPullParserNewPullParser, "GContainer:Directory")) {
                vVarB = b(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!h0.e(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (vVarB.isEmpty()) {
            return null;
        }
        return new b(j11, vVarB);
    }

    public static v<b.a> b(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        u6.a aVar = v.f16002i;
        h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        String strC = androidx.recyclerview.widget.d.c(str, ":Item");
        String strC2 = androidx.recyclerview.widget.d.c(str, ":Directory");
        int i10 = 0;
        do {
            xmlPullParser.next();
            if (h0.g(xmlPullParser, strC)) {
                String strC3 = androidx.recyclerview.widget.d.c(str2, ":Mime");
                String strC4 = androidx.recyclerview.widget.d.c(str2, ":Semantic");
                String strC5 = androidx.recyclerview.widget.d.c(str2, ":Length");
                String strC6 = androidx.recyclerview.widget.d.c(str2, ":Padding");
                String strA = h0.a(xmlPullParser, strC3);
                String strA2 = h0.a(xmlPullParser, strC4);
                String strA3 = h0.a(xmlPullParser, strC5);
                String strA4 = h0.a(xmlPullParser, strC6);
                if (strA == null || strA2 == null) {
                    return p0.f15967l;
                }
                b.a aVar2 = new b.a(strA, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L);
                int i11 = i10 + 1;
                if (objArrCopyOf.length < i11) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i11));
                }
                objArrCopyOf[i10] = aVar2;
                i10 = i11;
            }
        } while (!h0.e(xmlPullParser, strC2));
        return v.q(objArrCopyOf, i10);
    }
}
