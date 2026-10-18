package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import androidx.appcompat.R;

/* JADX INFO: compiled from: AppCompatDrawableManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f1318b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static k f1319c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u0 f1320a;

    /* JADX INFO: compiled from: AppCompatDrawableManager.java */
    public class a implements u0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f1321a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f1322b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f1323c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int[] f1324d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f1325e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f1326f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

        public final boolean a(int[] iArr, int i10) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
            return false;
        }

        public final ColorStateList b(Context context, int i10) {
            int iC = a1.c(context, R.attr.colorControlHighlight);
            return new ColorStateList(new int[][]{a1.f1166b, a1.f1168d, a1.f1167c, a1.f1170f}, new int[]{a1.b(context, R.attr.colorButtonNormal), a0.a.b(iC, i10), a0.a.b(iC, i10), i10});
        }

        public final LayerDrawable c(u0 u0Var, Context context, int i10) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
            Drawable drawableE = u0Var.e(context, R.drawable.abc_star_black_48dp);
            Drawable drawableE2 = u0Var.e(context, R.drawable.abc_star_half_black_48dp);
            if ((drawableE instanceof BitmapDrawable) && drawableE.getIntrinsicWidth() == dimensionPixelSize && drawableE.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableE;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableE.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableE.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableE2 instanceof BitmapDrawable) && drawableE2.getIntrinsicWidth() == dimensionPixelSize && drawableE2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableE2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableE2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableE2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.secondaryProgress);
            layerDrawable.setId(2, android.R.id.progress);
            return layerDrawable;
        }

        public final ColorStateList d(Context context, int i10) {
            if (i10 == R.drawable.abc_edit_text_material) {
                return g.a.a(context, R.color.abc_tint_edittext);
            }
            if (i10 == R.drawable.abc_switch_track_mtrl_alpha) {
                return g.a.a(context, R.color.abc_tint_switch_track);
            }
            if (i10 != R.drawable.abc_switch_thumb_material) {
                if (i10 == R.drawable.abc_btn_default_mtrl_shape) {
                    return b(context, a1.c(context, R.attr.colorButtonNormal));
                }
                if (i10 == R.drawable.abc_btn_borderless_material) {
                    return b(context, 0);
                }
                if (i10 == R.drawable.abc_btn_colored_material) {
                    return b(context, a1.c(context, R.attr.colorAccent));
                }
                if (i10 == R.drawable.abc_spinner_mtrl_am_alpha || i10 == R.drawable.abc_spinner_textfield_background_material) {
                    return g.a.a(context, R.color.abc_tint_spinner);
                }
                if (a(this.f1322b, i10)) {
                    return a1.d(context, R.attr.colorControlNormal);
                }
                if (a(this.f1325e, i10)) {
                    return g.a.a(context, R.color.abc_tint_default);
                }
                if (a(this.f1326f, i10)) {
                    return g.a.a(context, R.color.abc_tint_btn_checkable);
                }
                if (i10 == R.drawable.abc_seekbar_thumb_material) {
                    return g.a.a(context, R.color.abc_tint_seek_thumb);
                }
                return null;
            }
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            int i11 = R.attr.colorSwitchThumbNormal;
            ColorStateList colorStateListD = a1.d(context, i11);
            if (colorStateListD == null || !colorStateListD.isStateful()) {
                iArr[0] = a1.f1166b;
                iArr2[0] = a1.b(context, i11);
                iArr[1] = a1.f1169e;
                iArr2[1] = a1.c(context, R.attr.colorControlActivated);
                iArr[2] = a1.f1170f;
                iArr2[2] = a1.c(context, i11);
            } else {
                iArr[0] = a1.f1166b;
                iArr2[0] = colorStateListD.getColorForState(iArr[0], 0);
                iArr[1] = a1.f1169e;
                iArr2[1] = a1.c(context, R.attr.colorControlActivated);
                iArr[2] = a1.f1170f;
                iArr2[2] = colorStateListD.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        public final void e(Drawable drawable, int i10, PorterDuff.Mode mode) {
            int[] iArr = l0.f1334a;
            Drawable drawableMutate = drawable.mutate();
            if (mode == null) {
                mode = k.f1318b;
            }
            drawableMutate.setColorFilter(k.c(i10, mode));
        }
    }

    public static synchronized k a() {
        if (f1319c == null) {
            e();
        }
        return f1319c;
    }

    public static synchronized PorterDuffColorFilter c(int i10, PorterDuff.Mode mode) {
        return u0.g(i10, mode);
    }

    public static synchronized void e() {
        if (f1319c == null) {
            k kVar = new k();
            f1319c = kVar;
            kVar.f1320a = u0.c();
            u0 u0Var = f1319c.f1320a;
            a aVar = new a();
            synchronized (u0Var) {
                u0Var.f1464g = aVar;
            }
        }
    }

    public static void f(Drawable drawable, d1 d1Var, int[] iArr) {
        PorterDuff.Mode mode = u0.f1455h;
        int[] state = drawable.getState();
        int[] iArr2 = l0.f1334a;
        if (!(drawable.mutate() == drawable)) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z10 = d1Var.f1225d;
        if (!z10 && !d1Var.f1224c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterG = null;
        ColorStateList colorStateList = z10 ? d1Var.f1222a : null;
        PorterDuff.Mode mode2 = d1Var.f1224c ? d1Var.f1223b : u0.f1455h;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterG = u0.g(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterG);
    }

    public final synchronized Drawable b(Context context, int i10) {
        return this.f1320a.e(context, i10);
    }

    public final synchronized ColorStateList d(Context context, int i10) {
        return this.f1320a.h(context, i10);
    }
}
