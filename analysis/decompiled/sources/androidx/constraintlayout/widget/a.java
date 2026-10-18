package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: ConstraintAttribute.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1590h;

    public a(String str, int i10, Object obj, boolean z10) {
        this.f1584b = str;
        this.f1585c = i10;
        this.f1583a = z10;
        c(obj);
    }

    public static void a(Context context, XmlPullParser xmlPullParser, HashMap<String, a> map) {
        int i10;
        Object objValueOf;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        int i11 = 0;
        boolean z10 = false;
        Object objValueOf2 = null;
        for (int i12 = 0; i12 < indexCount; i12++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i12);
            if (index == R.styleable.CustomAttribute_attributeName) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                string = typedArrayObtainStyledAttributes.getString(index);
                z10 = true;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                objValueOf2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                i11 = 6;
            } else {
                if (index == R.styleable.CustomAttribute_customColorValue) {
                    i10 = 3;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                    i10 = 4;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else {
                    if (index == R.styleable.CustomAttribute_customPixelDimension) {
                        objValueOf2 = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                    } else if (index == R.styleable.CustomAttribute_customDimension) {
                        objValueOf2 = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                    } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                        i10 = 2;
                        objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                    } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                        objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                        i10 = 1;
                    } else if (index == R.styleable.CustomAttribute_customStringValue) {
                        i10 = 5;
                        objValueOf = typedArrayObtainStyledAttributes.getString(index);
                    } else if (index == R.styleable.CustomAttribute_customReference) {
                        i10 = 8;
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        if (resourceId == -1) {
                            resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        objValueOf = Integer.valueOf(resourceId);
                    }
                    i11 = 7;
                }
                Object obj = objValueOf;
                i11 = i10;
                objValueOf2 = obj;
            }
        }
        if (string != null && objValueOf2 != null) {
            map.put(string, new a(string, i11, objValueOf2, z10));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void b(View view, HashMap<String, a> map) {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            a aVar = map.get(str);
            String strC = !aVar.f1583a ? androidx.recyclerview.widget.d.c("set", str) : str;
            try {
                switch (q.g.a(aVar.f1585c)) {
                    case 0:
                        cls.getMethod(strC, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1586d));
                        break;
                    case 1:
                        cls.getMethod(strC, Float.TYPE).invoke(view, Float.valueOf(aVar.f1587e));
                        break;
                    case 2:
                        cls.getMethod(strC, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1590h));
                        break;
                    case 3:
                        Method method = cls.getMethod(strC, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(aVar.f1590h);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(strC, CharSequence.class).invoke(view, aVar.f1588f);
                        break;
                    case 5:
                        cls.getMethod(strC, Boolean.TYPE).invoke(view, Boolean.valueOf(aVar.f1589g));
                        break;
                    case 6:
                        cls.getMethod(strC, Float.TYPE).invoke(view, Float.valueOf(aVar.f1587e));
                        break;
                    case 7:
                        cls.getMethod(strC, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1586d));
                        break;
                }
            } catch (IllegalAccessException e10) {
                StringBuilder sbE = a4.g.e(" Custom Attribute \"", str, "\" not found on ");
                sbE.append(cls.getName());
                Log.e("TransitionLayout", sbE.toString());
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                Log.e("TransitionLayout", e11.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(cls.getName());
                sb2.append(" must have a method ");
                sb2.append(strC);
                Log.e("TransitionLayout", sb2.toString());
            } catch (InvocationTargetException e12) {
                StringBuilder sbE2 = a4.g.e(" Custom Attribute \"", str, "\" not found on ");
                sbE2.append(cls.getName());
                Log.e("TransitionLayout", sbE2.toString());
                e12.printStackTrace();
            }
        }
    }

    public final void c(Object obj) {
        switch (q.g.a(this.f1585c)) {
            case 0:
            case 7:
                this.f1586d = ((Integer) obj).intValue();
                break;
            case 1:
                this.f1587e = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f1590h = ((Integer) obj).intValue();
                break;
            case 4:
                this.f1588f = (String) obj;
                break;
            case 5:
                this.f1589g = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f1587e = ((Float) obj).floatValue();
                break;
        }
    }

    public a(a aVar, Object obj) {
        this.f1583a = false;
        this.f1584b = aVar.f1584b;
        this.f1585c = aVar.f1585c;
        c(obj);
    }
}
