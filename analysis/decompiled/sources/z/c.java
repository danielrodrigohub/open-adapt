package z;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import androidx.core.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: FontResourcesParserCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static class a {
        public static int a(TypedArray typedArray, int i10) {
            return typedArray.getType(i10);
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public interface b {
    }

    /* JADX INFO: renamed from: z.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class C0329c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final d[] f19212a;

        public C0329c(d[] dVarArr) {
            this.f19212a = dVarArr;
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f19213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f19214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f19215c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f19216d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f19217e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f19218f;

        public d(String str, int i10, boolean z10, String str2, int i11, int i12) {
            this.f19213a = str;
            this.f19214b = i10;
            this.f19215c = z10;
            this.f19216d = str2;
            this.f19217e = i11;
            this.f19218f = i12;
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class e implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g0.f f19219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f19220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f19221c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f19222d;

        public e(g0.f fVar, int i10, int i11, String str) {
            this.f19219a = fVar;
            this.f19221c = i10;
            this.f19220b = i11;
            this.f19222d = str;
        }
    }

    public static b a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlPullParser.require(2, null, "font-family");
        if (!xmlPullParser.getName().equals("font-family")) {
            c(xmlPullParser);
            return null;
        }
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamily);
        String string = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchTimeout, HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR);
        String string4 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                c(xmlPullParser);
            }
            return new e(new g0.f(string, string2, string3, b(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamilyFont);
                    int i10 = R.styleable.FontFamilyFont_fontWeight;
                    if (!typedArrayObtainAttributes2.hasValue(i10)) {
                        i10 = R.styleable.FontFamilyFont_android_fontWeight;
                    }
                    int i11 = typedArrayObtainAttributes2.getInt(i10, HttpStatusCodesKt.HTTP_BAD_REQUEST);
                    int i12 = R.styleable.FontFamilyFont_fontStyle;
                    if (!typedArrayObtainAttributes2.hasValue(i12)) {
                        i12 = R.styleable.FontFamilyFont_android_fontStyle;
                    }
                    boolean z10 = 1 == typedArrayObtainAttributes2.getInt(i12, 0);
                    int i13 = R.styleable.FontFamilyFont_ttcIndex;
                    if (!typedArrayObtainAttributes2.hasValue(i13)) {
                        i13 = R.styleable.FontFamilyFont_android_ttcIndex;
                    }
                    int i14 = R.styleable.FontFamilyFont_fontVariationSettings;
                    if (!typedArrayObtainAttributes2.hasValue(i14)) {
                        i14 = R.styleable.FontFamilyFont_android_fontVariationSettings;
                    }
                    String string5 = typedArrayObtainAttributes2.getString(i14);
                    int i15 = typedArrayObtainAttributes2.getInt(i13, 0);
                    int i16 = R.styleable.FontFamilyFont_font;
                    if (!typedArrayObtainAttributes2.hasValue(i16)) {
                        i16 = R.styleable.FontFamilyFont_android_font;
                    }
                    int resourceId2 = typedArrayObtainAttributes2.getResourceId(i16, 0);
                    String string6 = typedArrayObtainAttributes2.getString(i16);
                    typedArrayObtainAttributes2.recycle();
                    while (xmlPullParser.next() != 3) {
                        c(xmlPullParser);
                    }
                    arrayList.add(new d(string6, i11, z10, string5, i15, resourceId2));
                } else {
                    c(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new C0329c((d[]) arrayList.toArray(new d[0]));
    }

    public static List<List<byte[]>> b(Resources resources, int i10) {
        if (i10 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i10);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a.a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i11 = 0; i11 < typedArrayObtainTypedArray.length(); i11++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i11, 0);
                    if (resourceId != 0) {
                        arrayList.add(d(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(d(resources.getStringArray(i10)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static void c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i10 = 1;
        while (i10 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    public static List<byte[]> d(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
