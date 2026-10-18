package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ConstraintLayoutStates.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f1599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1600b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1601c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SparseArray<a> f1602d = new SparseArray<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SparseArray<d> f1603e = new SparseArray<>();

    /* JADX INFO: compiled from: ConstraintLayoutStates.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1604a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList<b> f1605b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1606c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public d f1607d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f1606c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.State_android_id) {
                    this.f1604a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1604a);
                } else if (index == R.styleable.State_constraints) {
                    this.f1606c = typedArrayObtainStyledAttributes.getResourceId(index, this.f1606c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1606c);
                    context.getResources().getResourceName(this.f1606c);
                    if ("layout".equals(resourceTypeName)) {
                        d dVar = new d();
                        this.f1607d = dVar;
                        dVar.c((ConstraintLayout) LayoutInflater.from(context).inflate(this.f1606c, (ViewGroup) null));
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final int a(float f10, float f11) {
            for (int i10 = 0; i10 < this.f1605b.size(); i10++) {
                if (this.f1605b.get(i10).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: compiled from: ConstraintLayoutStates.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f1608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f1609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1610c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f1611d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1612e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public d f1613f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f1608a = Float.NaN;
            this.f1609b = Float.NaN;
            this.f1610c = Float.NaN;
            this.f1611d = Float.NaN;
            this.f1612e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.Variant_constraints) {
                    this.f1612e = typedArrayObtainStyledAttributes.getResourceId(index, this.f1612e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1612e);
                    context.getResources().getResourceName(this.f1612e);
                    if ("layout".equals(resourceTypeName)) {
                        d dVar = new d();
                        this.f1613f = dVar;
                        dVar.c((ConstraintLayout) LayoutInflater.from(context).inflate(this.f1612e, (ViewGroup) null));
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.f1611d = typedArrayObtainStyledAttributes.getDimension(index, this.f1611d);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.f1609b = typedArrayObtainStyledAttributes.getDimension(index, this.f1609b);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.f1610c = typedArrayObtainStyledAttributes.getDimension(index, this.f1610c);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f1608a = typedArrayObtainStyledAttributes.getDimension(index, this.f1608a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f1608a) && f10 < this.f1608a) {
                return false;
            }
            if (!Float.isNaN(this.f1609b) && f11 < this.f1609b) {
                return false;
            }
            if (Float.isNaN(this.f1610c) || f10 <= this.f1610c) {
                return Float.isNaN(this.f1611d) || f11 <= this.f1611d;
            }
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006e  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public c(Context context, ConstraintLayout constraintLayout, int i10) {
        this.f1599a = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i10);
        a aVar = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                byte b10 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (!name.equals("ConstraintSet")) {
                                b10 = -1;
                            } else {
                                b10 = 4;
                            }
                            break;
                        case 80204913:
                            if (!name.equals("State")) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b10 = -1;
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 1901439077:
                            if (!name.equals("Variant")) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 == 2) {
                        aVar = new a(context, xml);
                        this.f1602d.put(aVar.f1604a, aVar);
                    } else if (b10 == 3) {
                        b bVar = new b(context, xml);
                        if (aVar != null) {
                            aVar.f1605b.add(bVar);
                        }
                    } else if (b10 == 4) {
                        a(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:81:0x0136  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(Context context, XmlPullParser xmlPullParser) {
        d.a aVarE;
        byte b10;
        d dVar = new d();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    int eventType = xmlPullParser.getEventType();
                    d.a aVar = null;
                    while (eventType != 1) {
                        if (eventType == 0) {
                            xmlPullParser.getName();
                        } else if (eventType == 2) {
                            switch (xmlPullParser.getName()) {
                                case "Constraint":
                                    aVarE = dVar.e(context, Xml.asAttributeSet(xmlPullParser), false);
                                    break;
                                case "ConstraintOverride":
                                    aVarE = dVar.e(context, Xml.asAttributeSet(xmlPullParser), true);
                                    break;
                                case "Guideline":
                                    aVarE = dVar.e(context, Xml.asAttributeSet(xmlPullParser), false);
                                    aVarE.f1623d.f1639a = true;
                                    break;
                                case "Barrier":
                                    aVarE = dVar.e(context, Xml.asAttributeSet(xmlPullParser), false);
                                    aVarE.f1623d.f1653h0 = 1;
                                    break;
                                case "PropertySet":
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.f1621b.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                    break;
                                    break;
                                case "Transform":
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.f1624e.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                    break;
                                    break;
                                case "Layout":
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.f1623d.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                    break;
                                    break;
                                case "Motion":
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    aVar.f1622c.a(context, Xml.asAttributeSet(xmlPullParser));
                                    continue;
                                    break;
                                    break;
                                case "CustomAttribute":
                                case "CustomMethod":
                                    if (aVar == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                    }
                                    androidx.constraintlayout.widget.a.a(context, xmlPullParser, aVar.f1625f);
                                    continue;
                                    break;
                                    break;
                                default:
                                    continue;
                                    break;
                            }
                            aVar = aVarE;
                        } else if (eventType == 3) {
                            String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                            switch (lowerCase.hashCode()) {
                                case -2075718416:
                                    if (lowerCase.equals("guideline")) {
                                        b10 = 3;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case -190376483:
                                    if (lowerCase.equals("constraint")) {
                                        b10 = 1;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 426575017:
                                    if (lowerCase.equals("constraintoverride")) {
                                        b10 = 2;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                case 2146106725:
                                    if (lowerCase.equals("constraintset")) {
                                        b10 = 0;
                                    } else {
                                        b10 = -1;
                                    }
                                    break;
                                default:
                                    b10 = -1;
                                    break;
                            }
                            if (b10 == 0) {
                                this.f1603e.put(identifier, dVar);
                                return;
                            } else if (b10 == 1 || b10 == 2 || b10 == 3) {
                                dVar.f1619c.put(Integer.valueOf(aVar.f1620a), aVar);
                                aVar = null;
                            }
                        }
                        eventType = xmlPullParser.next();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                } catch (XmlPullParserException e11) {
                    e11.printStackTrace();
                }
                this.f1603e.put(identifier, dVar);
                return;
            }
        }
    }
}
