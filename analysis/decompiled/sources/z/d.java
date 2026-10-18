package z;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ResourcesCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f19223a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap<C0330d, SparseArray<c>> f19224b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f19225c = new Object();

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static class a {
        public static Drawable a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getDrawable(i10, theme);
        }

        public static Drawable b(Resources resources, int i10, int i11, Resources.Theme theme) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static class b {
        public static int a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColor(i10, theme);
        }

        public static ColorStateList b(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ColorStateList f19226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Configuration f19227b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f19228c;

        public c(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f19226a = colorStateList;
            this.f19227b = configuration;
            this.f19228c = theme == null ? 0 : theme.hashCode();
        }
    }

    /* JADX INFO: renamed from: z.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static final class C0330d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f19229a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Resources.Theme f19230b;

        public C0330d(Resources resources, Resources.Theme theme) {
            this.f19229a = resources;
            this.f19230b = theme;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0330d.class != obj.getClass()) {
                return false;
            }
            C0330d c0330d = (C0330d) obj;
            return this.f19229a.equals(c0330d.f19229a) && i0.c.a(this.f19230b, c0330d.f19230b);
        }

        public final int hashCode() {
            return i0.c.b(this.f19229a, this.f19230b);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static abstract class e {
        public static Handler c() {
            return new Handler(Looper.getMainLooper());
        }

        public final void a(final int i10) {
            c().post(new Runnable() { // from class: z.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f19234h.d(i10);
                }
            });
        }

        public final void b(Typeface typeface) {
            c().post(new z.e(this, typeface, 0));
        }

        public abstract void d(int i10);

        public abstract void e(Typeface typeface);
    }

    public static Typeface a(Context context, int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i10, new TypedValue(), 0, null, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
    public static Typeface b(Context context, int i10, TypedValue typedValue, int i11, e eVar, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            StringBuilder sbC = a0.b.c("Resource \"");
            sbC.append(resources.getResourceName(i10));
            sbC.append("\" (");
            sbC.append(Integer.toHexString(i10));
            sbC.append(") is not a Font: ");
            sbC.append(typedValue);
            throw new Resources.NotFoundException(sbC.toString());
        }
        String string = charSequence.toString();
        Typeface typefaceA = null;
        if (string.startsWith("res/")) {
            Typeface typefaceA2 = a0.f.f12b.a(a0.f.c(resources, i10, string, typedValue.assetCookie, i11));
            if (typefaceA2 != null) {
                if (eVar != null) {
                    eVar.b(typefaceA2);
                }
                typefaceA = typefaceA2;
            } else if (!z11) {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        z.c.b bVarA = z.c.a(resources.getXml(i10), resources);
                        if (bVarA == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (eVar != null) {
                                eVar.a(-3);
                            }
                        } else {
                            typefaceA = a0.f.a(context, bVarA, resources, i10, string, typedValue.assetCookie, i11, eVar, z10);
                        }
                    } else {
                        Typeface typefaceB = a0.f.b(context, resources, i10, string, typedValue.assetCookie, i11);
                        if (eVar != null) {
                            if (typefaceB != null) {
                                eVar.b(typefaceB);
                            } else {
                                eVar.a(-3);
                            }
                        }
                        typefaceA = typefaceB;
                    }
                } catch (IOException e10) {
                    Log.e("ResourcesCompat", "Failed to read xml resource " + string, e10);
                    if (eVar != null) {
                        eVar.a(-3);
                    }
                } catch (XmlPullParserException e11) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource " + string, e11);
                    if (eVar != null) {
                        eVar.a(-3);
                    }
                }
            }
        } else if (eVar != null) {
            eVar.a(-3);
        }
        if (typefaceA != null || eVar != null || z11) {
            return typefaceA;
        }
        StringBuilder sbC2 = a0.b.c("Font resource ID #0x");
        sbC2.append(Integer.toHexString(i10));
        sbC2.append(" could not be retrieved.");
        throw new Resources.NotFoundException(sbC2.toString());
    }
}
