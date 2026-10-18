package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import i1.a;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1770a = aVar.k(iconCompat.f1770a, 1);
        byte[] bArrG = iconCompat.f1772c;
        if (aVar.i(2)) {
            bArrG = aVar.g();
        }
        iconCompat.f1772c = bArrG;
        iconCompat.f1773d = aVar.m(iconCompat.f1773d, 3);
        iconCompat.f1774e = aVar.k(iconCompat.f1774e, 4);
        iconCompat.f1775f = aVar.k(iconCompat.f1775f, 5);
        iconCompat.f1776g = (ColorStateList) aVar.m(iconCompat.f1776g, 6);
        String strN = iconCompat.f1778i;
        if (aVar.i(7)) {
            strN = aVar.n();
        }
        iconCompat.f1778i = strN;
        String strN2 = iconCompat.f1779j;
        if (aVar.i(8)) {
            strN2 = aVar.n();
        }
        iconCompat.f1779j = strN2;
        iconCompat.f1777h = PorterDuff.Mode.valueOf(iconCompat.f1778i);
        switch (iconCompat.f1770a) {
            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                Parcelable parcelable = iconCompat.f1773d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f1771b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f1773d;
                if (parcelable2 != null) {
                    iconCompat.f1771b = parcelable2;
                } else {
                    byte[] bArr = iconCompat.f1772c;
                    iconCompat.f1771b = bArr;
                    iconCompat.f1770a = 3;
                    iconCompat.f1774e = 0;
                    iconCompat.f1775f = bArr.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f1772c, Charset.forName("UTF-16"));
                iconCompat.f1771b = str;
                if (iconCompat.f1770a == 2 && iconCompat.f1779j == null) {
                    iconCompat.f1779j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f1771b = iconCompat.f1772c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, a aVar) {
        Objects.requireNonNull(aVar);
        iconCompat.f1778i = iconCompat.f1777h.name();
        switch (iconCompat.f1770a) {
            case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                iconCompat.f1773d = (Parcelable) iconCompat.f1771b;
                break;
            case 1:
            case 5:
                iconCompat.f1773d = (Parcelable) iconCompat.f1771b;
                break;
            case 2:
                iconCompat.f1772c = ((String) iconCompat.f1771b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f1772c = (byte[]) iconCompat.f1771b;
                break;
            case 4:
            case 6:
                iconCompat.f1772c = iconCompat.f1771b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i10 = iconCompat.f1770a;
        if (-1 != i10) {
            aVar.u(i10, 1);
        }
        byte[] bArr = iconCompat.f1772c;
        if (bArr != null) {
            aVar.p(2);
            aVar.r(bArr);
        }
        Parcelable parcelable = iconCompat.f1773d;
        if (parcelable != null) {
            aVar.w(parcelable, 3);
        }
        int i11 = iconCompat.f1774e;
        if (i11 != 0) {
            aVar.u(i11, 4);
        }
        int i12 = iconCompat.f1775f;
        if (i12 != 0) {
            aVar.u(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f1776g;
        if (colorStateList != null) {
            aVar.w(colorStateList, 6);
        }
        String str = iconCompat.f1778i;
        if (str != null) {
            aVar.p(7);
            aVar.x(str);
        }
        String str2 = iconCompat.f1779j;
        if (str2 != null) {
            aVar.p(8);
            aVar.x(str2);
        }
    }
}
