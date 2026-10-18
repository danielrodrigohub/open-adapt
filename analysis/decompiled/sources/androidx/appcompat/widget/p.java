package androidx.appcompat.widget;

import android.animation.ArgbEvaluator;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Parcel;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.nike.adapt.migration.oldbigfoot.BigfootColorPreset;
import com.nike.adapt.migration.oldbigfoot.BigfootDevice;
import com.nike.adapt.migration.oldbigfoot.BigfootDeviceAttributes;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: AppCompatHintHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements g7.q, v9.d {
    public /* synthetic */ p() {
    }

    public static float a(float f10) {
        return f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float b(float f10) {
        return f10 <= 0.0031308f ? f10 * 12.92f : (float) ((Math.pow(f10, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static final String c(String str) {
        if (str == null) {
            return null;
        }
        Locale locale = Locale.getDefault();
        p4.h.i(locale, "getDefault()");
        String lowerCase = str.toLowerCase(locale);
        p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return yd.s.G0(lowerCase).toString();
    }

    public static int e(float f10, int i10, int i11) {
        if (i10 == i11) {
            return i10;
        }
        float f11 = ((i10 >> 24) & 255) / 255.0f;
        float f12 = ((i11 >> 24) & 255) / 255.0f;
        float fA = a(((i10 >> 16) & 255) / 255.0f);
        float fA2 = a(((i10 >> 8) & 255) / 255.0f);
        float fA3 = a((i10 & 255) / 255.0f);
        float fA4 = a(((i11 >> 16) & 255) / 255.0f);
        float fA5 = a(((i11 >> 8) & 255) / 255.0f);
        float fA6 = a((i11 & 255) / 255.0f);
        float fC = o.c(f12, f11, f10, f11);
        float fC2 = o.c(fA4, fA, f10, fA);
        float fC3 = o.c(fA5, fA2, f10, fA2);
        float fC4 = o.c(fA6, fA3, f10, fA3);
        float fB = b(fC2) * 255.0f;
        float fB2 = b(fC3) * 255.0f;
        return Math.round(b(fC4) * 255.0f) | (Math.round(fB) << 16) | (Math.round(fC * 255.0f) << 24) | (Math.round(fB2) << 8);
    }

    public static final ba.b f(ArgbEvaluator argbEvaluator, float f10, int i10, int i11) {
        Object objEvaluate = argbEvaluator.evaluate(f10, Integer.valueOf(i10), Integer.valueOf(i11));
        p4.h.h(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) objEvaluate).intValue();
        return new ba.b(new ba.g0(Color.red(iIntValue)), new ba.x(Color.green(iIntValue)), new ba.o(Color.blue(iIntValue)));
    }

    public static final boolean g(Object obj, Object... objArr) {
        for (Object obj2 : objArr) {
            if (p4.h.c(obj, obj2)) {
                return true;
            }
        }
        return false;
    }

    public static final ea.u h(BigfootDeviceAttributes bigfootDeviceAttributes) {
        try {
            return new ea.u(bigfootDeviceAttributes.getPercent(), new ea.v(new ea.s(bigfootDeviceAttributes.getBigfootDeviceColor().getBigfootColorPreset().getRed(), bigfootDeviceAttributes.getBigfootDeviceColor().getBigfootColorPreset().getGreen(), bigfootDeviceAttributes.getBigfootDeviceColor().getBigfootColorPreset().getBlue())));
        } catch (Exception unused) {
            int percent = bigfootDeviceAttributes.getPercent();
            BigfootColorPreset bigfootColorPreset = BigfootColorPreset.HERO_BLUE;
            return new ea.u(percent, new ea.v(new ea.s(bigfootColorPreset.getRed(), bigfootColorPreset.getGreen(), bigfootColorPreset.getBlue())));
        }
    }

    public static final ea.t i(BigfootDevice bigfootDevice) {
        return new ea.t(bigfootDevice.getScanningKey(), bigfootDevice.getStringIdentifier(), bigfootDevice.getConnectionAddress(), bigfootDevice.getAuthenticationKey(), bigfootDevice.getMaxTightness());
    }

    public static InputConnection j(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent instanceof p1) {
                    editorInfo.hintText = ((p1) parent).a();
                    break;
                }
            }
        }
        return inputConnection;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0046  */
    public static final ob.e k(Throwable th) {
        ob.e.d dVar;
        ob.e cVar;
        if (th == null) {
            return new ob.e.d(null, new Exception("Error with App Auth response"), 1);
        }
        if (th instanceof ob.e) {
            return (ob.e) th;
        }
        if (th instanceof com.nike.authcomponent.oidc.internal.appauth.source.a) {
            com.nike.authcomponent.oidc.internal.appauth.source.a aVar = (com.nike.authcomponent.oidc.internal.appauth.source.a) th;
            if (aVar.f5931h == 0) {
                int i10 = aVar.f5932i;
                if (i10 == 1) {
                    cVar = new ob.e.c(th);
                } else if (i10 == 3) {
                    cVar = new ob.e.f(th);
                } else if (i10 != 6) {
                    dVar = new ob.e.d(null, th, 1);
                } else {
                    cVar = new ob.e.a(th);
                }
                return cVar;
            }
            dVar = new ob.e.d(null, th, 1);
        } else {
            dVar = new ob.e.d(null, th, 1);
        }
        return dVar;
    }

    @Override // g7.q
    public Object construct() {
        return new ArrayList();
    }

    public byte[] d(List list) {
        ArrayList<Bundle> arrayListB = m5.b.b(list);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayListB);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public /* synthetic */ p(boolean z10, Configuration configuration) {
    }
}
