package z;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.activity.k;
import androidx.core.R;
import androidx.lifecycle.o;
import java.io.IOException;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ColorStateListInflaterCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f19211a = new ThreadLocal<>();

    public static ColorStateList a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0096  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ca  */
    public static ColorStateList b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        float f10;
        float f11;
        boolean z10;
        float f12;
        TypedValue typedValue;
        resources = resources;
        attributeSet = attributeSet;
        theme = theme;
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        boolean z11 = true;
        int depth2 = xmlPullParser.getDepth() + 1;
        Object[] objArr = new int[20][];
        int[] iArr = new int[20];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == z11 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                int[] iArr2 = R.styleable.ColorStateListItem;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr2) : theme.obtainStyledAttributes(attributeSet, iArr2, i10, i10);
                int i12 = R.styleable.ColorStateListItem_android_color;
                int resourceId = typedArrayObtainAttributes.getResourceId(i12, -1);
                if (resourceId == -1) {
                    color = typedArrayObtainAttributes.getColor(i12, -65281);
                } else {
                    ThreadLocal<TypedValue> threadLocal = f19211a;
                    TypedValue typedValue2 = threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    resources.getValue(resourceId, typedValue, z11);
                    int i13 = typedValue.type;
                    if (((i13 < 28 || i13 > 31) ? i10 : z11) == 0) {
                        try {
                            color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                        } catch (Exception unused) {
                            color = typedArrayObtainAttributes.getColor(R.styleable.ColorStateListItem_android_color, -65281);
                        }
                    } else {
                        color = typedArrayObtainAttributes.getColor(i12, -65281);
                    }
                }
                int i14 = R.styleable.ColorStateListItem_android_alpha;
                if (typedArrayObtainAttributes.hasValue(i14)) {
                    f10 = typedArrayObtainAttributes.getFloat(i14, 1.0f);
                } else {
                    int i15 = R.styleable.ColorStateListItem_alpha;
                    f10 = typedArrayObtainAttributes.hasValue(i15) ? typedArrayObtainAttributes.getFloat(i15, 1.0f) : 1.0f;
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    int i16 = R.styleable.ColorStateListItem_android_lStar;
                    if (typedArrayObtainAttributes.hasValue(i16)) {
                        f11 = typedArrayObtainAttributes.getFloat(i16, -1.0f);
                    } else {
                        f11 = typedArrayObtainAttributes.getFloat(R.styleable.ColorStateListItem_lStar, -1.0f);
                    }
                } else {
                    f11 = typedArrayObtainAttributes.getFloat(R.styleable.ColorStateListItem_lStar, -1.0f);
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i17 = i10;
                for (int i18 = i17; i18 < attributeCount; i18++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i18);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i19 = i17 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i18, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i17] = attributeNameResource;
                        i17 = i19;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i17);
                float f13 = 0.0f;
                float f14 = 100.0f;
                boolean z12 = f11 >= 0.0f && f11 <= 100.0f;
                if (f10 != 1.0f || z12) {
                    int iG = o.g((int) ((Color.alpha(color) * f10) + 0.5f), 0, 255);
                    if (z12) {
                        a aVarA = a.a(color);
                        float f15 = aVarA.f19205a;
                        float f16 = aVarA.f19206b;
                        j jVar = j.f19239k;
                        if (f16 >= 1.0d && Math.round(f11) > 0.0d && Math.round(f11) < 100.0d) {
                            float fMin = f15 < 0.0f ? 0.0f : Math.min(360.0f, f15);
                            float f17 = 0.0f;
                            float f18 = f16;
                            a aVar = null;
                            boolean z13 = true;
                            while (true) {
                                if (Math.abs(f17 - f16) < 0.4f) {
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    depth2 = depth2;
                                    z10 = true;
                                    if (aVar != null) {
                                        color = aVar.c(jVar);
                                        break;
                                    }
                                    color = k.n(f11);
                                    break;
                                }
                                float f19 = 1000.0f;
                                float f20 = f13;
                                float f21 = f14;
                                float f22 = 1000.0f;
                                a aVar2 = null;
                                while (true) {
                                    if (Math.abs(f20 - f21) <= 0.01f) {
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        depth2 = depth2;
                                        f13 = f13;
                                        fMin = fMin;
                                        z10 = true;
                                        break;
                                    }
                                    float f23 = ((f21 - f20) / 2.0f) + f20;
                                    int iC = a.b(f23, f18, fMin).c(j.f19239k);
                                    float fO = k.o(Color.red(iC));
                                    float fO2 = k.o(Color.green(iC));
                                    float fO3 = k.o(Color.blue(iC));
                                    float[][] fArr = k.f712f;
                                    z10 = true;
                                    float f24 = ((fO3 * fArr[1][2]) + ((fO2 * fArr[1][1]) + (fO * fArr[1][0]))) / 100.0f;
                                    float fCbrt = f24 <= 0.008856452f ? f24 * 903.2963f : (((float) Math.cbrt(f24)) * 116.0f) - 16.0f;
                                    float fAbs = Math.abs(f11 - fCbrt);
                                    if (fAbs < 0.2f) {
                                        a aVarA2 = a.a(iC);
                                        depth2 = depth2;
                                        f12 = f23;
                                        a aVarB = a.b(aVarA2.f19207c, aVarA2.f19206b, fMin);
                                        float f25 = aVarA2.f19208d - aVarB.f19208d;
                                        float f26 = aVarA2.f19209e - aVarB.f19209e;
                                        float f27 = aVarA2.f19210f - aVarB.f19210f;
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        float fPow = (float) (Math.pow(Math.sqrt((f27 * f27) + (f26 * f26) + (f25 * f25)), 0.63d) * 1.41d);
                                        if (fPow <= 1.0f) {
                                            f22 = fPow;
                                            f19 = fAbs;
                                            aVar2 = aVarA2;
                                        }
                                    } else {
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        depth2 = depth2;
                                        f12 = f23;
                                    }
                                    f13 = 0.0f;
                                    if (f19 == 0.0f && f22 == 0.0f) {
                                        break;
                                    }
                                    if (fCbrt < f11) {
                                        f20 = f12;
                                    } else {
                                        f21 = f12;
                                    }
                                    f13 = 0.0f;
                                    fMin = fMin;
                                    depth2 = depth2;
                                    iArrTrimStateSet = iArrTrimStateSet;
                                }
                                a aVar3 = aVar2;
                                if (!z13) {
                                    if (aVar3 == null) {
                                        f16 = f18;
                                    } else {
                                        aVar = aVar3;
                                        f17 = f18;
                                    }
                                    f18 = ((f16 - f17) / 2.0f) + f17;
                                    f14 = 100.0f;
                                } else {
                                    if (aVar3 != null) {
                                        color = aVar3.c(jVar);
                                        break;
                                    }
                                    f18 = ((f16 - f17) / 2.0f) + f17;
                                    f14 = 100.0f;
                                    z13 = false;
                                }
                            }
                        } else {
                            iArrTrimStateSet = iArrTrimStateSet;
                            depth2 = depth2;
                            z10 = true;
                            color = k.n(f11);
                        }
                    } else {
                        iArrTrimStateSet = iArrTrimStateSet;
                        depth2 = depth2;
                        z10 = true;
                    }
                    color = (16777215 & color) | (iG << 24);
                } else {
                    iArrTrimStateSet = iArrTrimStateSet;
                    depth2 = depth2;
                    z10 = true;
                }
                int i20 = i11 + 1;
                if (i20 > iArr.length) {
                    int[] iArr4 = new int[i11 <= 4 ? 8 : i11 * 2];
                    System.arraycopy(iArr, 0, iArr4, 0, i11);
                    iArr = iArr4;
                }
                iArr[i11] = color;
                if (i20 > objArr.length) {
                    Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i11 > 4 ? i11 * 2 : 8);
                    System.arraycopy(objArr, 0, objArr2, 0, i11);
                    objArr = objArr2;
                }
                objArr[i11] = iArrTrimStateSet;
                objArr = (int[][]) objArr;
                i11 = i20;
                z11 = z10;
                depth2 = depth2;
                i10 = 0;
            } else {
                z11 = z11;
                depth2 = depth2;
                i10 = 0;
            }
        }
        int[] iArr5 = new int[i11];
        int[][] iArr6 = new int[i11][];
        System.arraycopy(iArr, 0, iArr5, 0, i11);
        System.arraycopy(objArr, 0, iArr6, 0, i11);
        return new ColorStateList(iArr6, iArr5);
    }
}
