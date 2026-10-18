package x0;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SwitchPreference;
import androidx.preference.f;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: PreferenceInflater.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class<?>[] f17713e = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashMap<String, Constructor<?>> f17714f = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17715a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f17717c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f17716b = new Object[2];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String[] f17718d = {Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."};

    public d(Context context, f fVar) {
        this.f17715a = context;
        this.f17717c = fVar;
    }

    public final Preference a(String str, String[] strArr, AttributeSet attributeSet) throws InflateException, ClassNotFoundException {
        Class<?> cls;
        Constructor<?> constructor = f17714f.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f17715a.getClassLoader();
                    if (strArr == null || strArr.length == 0) {
                        cls = Class.forName(str, false, classLoader);
                    } else {
                        cls = null;
                        ClassNotFoundException e10 = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e11) {
                                e10 = e11;
                            }
                        }
                        if (cls == null) {
                            if (e10 != null) {
                                throw e10;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                    }
                    constructor = cls.getConstructor(f17713e);
                    constructor.setAccessible(true);
                    f17714f.put(str, constructor);
                } catch (ClassNotFoundException e12) {
                    throw e12;
                }
            } catch (Exception e13) {
                InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                inflateException.initCause(e13);
                throw inflateException;
            }
        }
        Object[] objArr = this.f17716b;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    public final Preference b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? a(str, this.f17718d, attributeSet) : a(str, null, attributeSet);
        } catch (InflateException e10) {
            throw e10;
        } catch (ClassNotFoundException e11) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e11);
            throw inflateException;
        } catch (Exception e12) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e12);
            throw inflateException2;
        }
    }

    public final Preference c(XmlPullParser xmlPullParser) {
        int next;
        PreferenceGroup preferenceGroup;
        synchronized (this.f17716b) {
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f17716b[0] = this.f17715a;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (InflateException e10) {
                    throw e10;
                } catch (IOException e11) {
                    InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e11.getMessage());
                    inflateException.initCause(e11);
                    throw inflateException;
                } catch (XmlPullParserException e12) {
                    InflateException inflateException2 = new InflateException(e12.getMessage());
                    inflateException2.initCause(e12);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
            preferenceGroup = (PreferenceGroup) b(xmlPullParser.getName(), attributeSetAsAttributeSet);
            preferenceGroup.w(this.f17717c);
            d(xmlPullParser, preferenceGroup, attributeSetAsAttributeSet);
        }
        return preferenceGroup;
    }

    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public final void d(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        long jLongValue;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("intent".equals(name)) {
                    try {
                        preference.f2283s = Intent.parseIntent(this.f17715a.getResources(), xmlPullParser, attributeSet);
                    } catch (IOException e10) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e10);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    Resources resources = this.f17715a.getResources();
                    if (preference.f2285u == null) {
                        preference.f2285u = new Bundle();
                    }
                    resources.parseBundleExtra("extra", attributeSet, preference.f2285u);
                    try {
                        int depth2 = xmlPullParser.getDepth();
                        while (true) {
                            int next2 = xmlPullParser.next();
                            if (next2 == 1 || (next2 == 3 && xmlPullParser.getDepth() <= depth2)) {
                                break;
                            }
                        }
                    } catch (IOException e11) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e11);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference preferenceB = b(name, attributeSet);
                    PreferenceGroup preferenceGroup = (PreferenceGroup) preference;
                    if (!preferenceGroup.V.contains(preferenceB)) {
                        if (preferenceB.f2282r != null) {
                            PreferenceGroup preferenceGroup2 = preferenceGroup;
                            while (true) {
                                PreferenceGroup preferenceGroup3 = preferenceGroup2.O;
                                if (preferenceGroup3 == null) {
                                    break;
                                } else {
                                    preferenceGroup2 = preferenceGroup3;
                                }
                            }
                            String str = preferenceB.f2282r;
                            if (preferenceGroup2.L(str) != null) {
                                Log.e("PreferenceGroup", "Found duplicated key: \"" + str + "\". This can cause unintended behaviour, please use unique keys for every preference.");
                            }
                        }
                        int i10 = preferenceB.f2277m;
                        if (i10 == Integer.MAX_VALUE) {
                            if (preferenceGroup.W) {
                                int i11 = preferenceGroup.X;
                                preferenceGroup.X = i11 + 1;
                                if (i11 != i10) {
                                    preferenceB.f2277m = i11;
                                    preferenceB.t();
                                }
                            }
                            if (preferenceB instanceof PreferenceGroup) {
                                ((PreferenceGroup) preferenceB).W = preferenceGroup.W;
                            }
                        }
                        int iBinarySearch = Collections.binarySearch(preferenceGroup.V, preferenceB);
                        if (iBinarySearch < 0) {
                            iBinarySearch = (iBinarySearch * (-1)) - 1;
                        }
                        boolean zH = preferenceGroup.H();
                        if (preferenceB.B == zH) {
                            preferenceB.B = !zH;
                            preferenceB.s(preferenceB.H());
                            preferenceB.q();
                        }
                        synchronized (preferenceGroup) {
                            preferenceGroup.V.add(iBinarySearch, preferenceB);
                        }
                        f fVar = preferenceGroup.f2273i;
                        String str2 = preferenceB.f2282r;
                        if (str2 == null || !preferenceGroup.T.containsKey(str2)) {
                            synchronized (fVar) {
                                jLongValue = fVar.f2345b;
                                fVar.f2345b = 1 + jLongValue;
                            }
                        } else {
                            jLongValue = preferenceGroup.T.getOrDefault(str2, null).longValue();
                            preferenceGroup.T.remove(str2);
                        }
                        preferenceB.f2274j = jLongValue;
                        preferenceB.f2275k = true;
                        try {
                            preferenceB.w(fVar);
                            preferenceB.f2275k = false;
                            if (preferenceB.O != null) {
                                throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
                            }
                            preferenceB.O = preferenceGroup;
                            if (preferenceGroup.Y) {
                                preferenceB.u();
                            }
                            preferenceGroup.t();
                        } catch (Throwable th) {
                            preferenceB.f2275k = false;
                            throw th;
                        }
                    }
                    d(xmlPullParser, preferenceB, attributeSet);
                }
            }
        }
    }
}
