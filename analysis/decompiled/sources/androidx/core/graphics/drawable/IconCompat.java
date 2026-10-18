package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f1769k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f1772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f1773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f1776g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f1777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f1778i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f1779j;

    public static class a {
        public static int a(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.a(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon resource", e10);
                return 0;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon resource", e11);
                return 0;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon resource", e12);
                return 0;
            }
        }

        public static String b(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.b(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon package", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon package", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon package", e12);
                return null;
            }
        }

        public static int c(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.c(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", new Class[0]).invoke(obj, new Object[0])).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e10);
                return -1;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e11);
                return -1;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e12);
                return -1;
            }
        }

        public static Uri d(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.d(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon uri", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon uri", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon uri", e12);
                return null;
            }
        }

        public static Drawable e(Icon icon, Context context) {
            return icon.loadDrawable(context);
        }

        public static Icon f(IconCompat iconCompat, Context context) {
            Icon iconCreateWithBitmap;
            String strB;
            InputStream inputStreamOpenInputStream;
            int i10 = iconCompat.f1770a;
            switch (i10) {
                case HarvestErrorCodes.NSURLErrorUnknown /* -1 */:
                    return (Icon) iconCompat.f1771b;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f1771b);
                    break;
                case 2:
                    if (i10 == -1) {
                        strB = b(iconCompat.f1771b);
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("called getResPackage() on " + iconCompat);
                        }
                        String str = iconCompat.f1779j;
                        strB = (str == null || TextUtils.isEmpty(str)) ? ((String) iconCompat.f1771b).split(":", -1)[0] : iconCompat.f1779j;
                    }
                    iconCreateWithBitmap = Icon.createWithResource(strB, iconCompat.f1774e);
                    break;
                case 3:
                    iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f1771b, iconCompat.f1774e, iconCompat.f1775f);
                    break;
                case 4:
                    iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f1771b);
                    break;
                case 5:
                    iconCreateWithBitmap = Build.VERSION.SDK_INT < 26 ? Icon.createWithBitmap(IconCompat.a((Bitmap) iconCompat.f1771b)) : b.b((Bitmap) iconCompat.f1771b);
                    break;
                case 6:
                    if (Build.VERSION.SDK_INT >= 30) {
                        iconCreateWithBitmap = d.a(iconCompat.d());
                    } else {
                        if (context == null) {
                            StringBuilder sbC = a0.b.c("Context is required to resolve the file uri of the icon: ");
                            sbC.append(iconCompat.d());
                            throw new IllegalArgumentException(sbC.toString());
                        }
                        Uri uriD = iconCompat.d();
                        String scheme = uriD.getScheme();
                        if ("content".equals(scheme) || "file".equals(scheme)) {
                            try {
                                inputStreamOpenInputStream = context.getContentResolver().openInputStream(uriD);
                            } catch (Exception e10) {
                                Log.w("IconCompat", "Unable to load image from URI: " + uriD, e10);
                                inputStreamOpenInputStream = null;
                            }
                        } else {
                            try {
                                inputStreamOpenInputStream = new FileInputStream(new File((String) iconCompat.f1771b));
                            } catch (FileNotFoundException e11) {
                                Log.w("IconCompat", "Unable to load image from path: " + uriD, e11);
                                inputStreamOpenInputStream = null;
                            }
                        }
                        if (inputStreamOpenInputStream == null) {
                            StringBuilder sbC2 = a0.b.c("Cannot load adaptive icon from uri: ");
                            sbC2.append(iconCompat.d());
                            throw new IllegalStateException(sbC2.toString());
                        }
                        if (Build.VERSION.SDK_INT < 26) {
                            iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.a(BitmapFactory.decodeStream(inputStreamOpenInputStream)));
                        } else {
                            iconCreateWithBitmap = b.b(BitmapFactory.decodeStream(inputStreamOpenInputStream));
                        }
                    }
                    break;
            }
            ColorStateList colorStateList = iconCompat.f1776g;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f1777h;
            if (mode != IconCompat.f1769k) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }

    public static class b {
        public static Drawable a(Drawable drawable, Drawable drawable2) {
            return new AdaptiveIconDrawable(drawable, drawable2);
        }

        public static Icon b(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    public static class c {
        public static int a(Object obj) {
            return ((Icon) obj).getResId();
        }

        public static String b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        public static int c(Object obj) {
            return ((Icon) obj).getType();
        }

        public static Uri d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    public static class d {
        public static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f1770a = -1;
        this.f1772c = null;
        this.f1773d = null;
        this.f1774e = 0;
        this.f1775f = 0;
        this.f1776g = null;
        this.f1777h = f1769k;
        this.f1778i = null;
    }

    public static Bitmap a(Bitmap bitmap) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f10 = iMin * 0.5f;
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f10, f10, 0.9166667f * f10, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat b(String str, int i10) {
        Objects.requireNonNull(str);
        if (i10 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f1774e = i10;
        iconCompat.f1771b = str;
        iconCompat.f1779j = str;
        return iconCompat;
    }

    public final int c() {
        int i10 = this.f1770a;
        if (i10 == -1) {
            return a.a(this.f1771b);
        }
        if (i10 == 2) {
            return this.f1774e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public final Uri d() {
        int i10 = this.f1770a;
        if (i10 == -1) {
            return a.d(this.f1771b);
        }
        if (i10 == 4 || i10 == 6) {
            return Uri.parse((String) this.f1771b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public final String toString() {
        String str;
        if (this.f1770a == -1) {
            return String.valueOf(this.f1771b);
        }
        StringBuilder sb2 = new StringBuilder("Icon(typ=");
        switch (this.f1770a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb2.append(str);
        switch (this.f1770a) {
            case 1:
            case 5:
                sb2.append(" size=");
                sb2.append(((Bitmap) this.f1771b).getWidth());
                sb2.append("x");
                sb2.append(((Bitmap) this.f1771b).getHeight());
                break;
            case 2:
                sb2.append(" pkg=");
                sb2.append(this.f1779j);
                sb2.append(" id=");
                sb2.append(String.format("0x%08x", Integer.valueOf(c())));
                break;
            case 3:
                sb2.append(" len=");
                sb2.append(this.f1774e);
                if (this.f1775f != 0) {
                    sb2.append(" off=");
                    sb2.append(this.f1775f);
                }
                break;
            case 4:
            case 6:
                sb2.append(" uri=");
                sb2.append(this.f1771b);
                break;
        }
        if (this.f1776g != null) {
            sb2.append(" tint=");
            sb2.append(this.f1776g);
        }
        if (this.f1777h != f1769k) {
            sb2.append(" mode=");
            sb2.append(this.f1777h);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public IconCompat(int i10) {
        this.f1772c = null;
        this.f1773d = null;
        this.f1774e = 0;
        this.f1775f = 0;
        this.f1776g = null;
        this.f1777h = f1769k;
        this.f1778i = null;
        this.f1770a = i10;
    }
}
