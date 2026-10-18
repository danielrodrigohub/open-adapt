package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import java.util.Locale;
import java.util.Objects;
import m5.g0;
import m5.s;
import n3.s0;

/* JADX INFO: compiled from: DefaultTrackNameProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements k5.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f4896a;

    public c(Resources resources) {
        Objects.requireNonNull(resources);
        this.f4896a = resources;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0032  */
    /* JADX WARN: Code duplicated, block: B:23:0x0034  */
    @Override // k5.f
    public final String a(s0 s0Var) {
        String strC;
        int i10 = s.i(s0Var.f11687s);
        if (i10 == -1) {
            if (s.j(s0Var.f11684p) != null) {
                i10 = 2;
            } else if (s.b(s0Var.f11684p) != null) {
                i10 = 1;
            } else if (s0Var.f11692x != -1 || s0Var.f11693y != -1) {
                i10 = 2;
            } else if (s0Var.F == -1 && s0Var.G == -1) {
                i10 = -1;
            } else {
                i10 = 1;
            }
        }
        String string = "";
        if (i10 == 2) {
            String[] strArr = new String[3];
            strArr[0] = d(s0Var);
            int i11 = s0Var.f11692x;
            int i12 = s0Var.f11693y;
            if (i11 != -1 && i12 != -1) {
                string = this.f4896a.getString(R.string.exo_track_resolution, Integer.valueOf(i11), Integer.valueOf(i12));
            }
            strArr[1] = string;
            strArr[2] = b(s0Var);
            strC = e(strArr);
        } else if (i10 == 1) {
            String[] strArr2 = new String[3];
            strArr2[0] = c(s0Var);
            int i13 = s0Var.F;
            if (i13 != -1 && i13 >= 1) {
                if (i13 == 1) {
                    string = this.f4896a.getString(R.string.exo_track_mono);
                } else if (i13 == 2) {
                    string = this.f4896a.getString(R.string.exo_track_stereo);
                } else if (i13 == 6 || i13 == 7) {
                    string = this.f4896a.getString(R.string.exo_track_surround_5_point_1);
                } else {
                    string = i13 != 8 ? this.f4896a.getString(R.string.exo_track_surround) : this.f4896a.getString(R.string.exo_track_surround_7_point_1);
                }
            }
            strArr2[1] = string;
            strArr2[2] = b(s0Var);
            strC = e(strArr2);
        } else {
            strC = c(s0Var);
        }
        return strC.length() == 0 ? this.f4896a.getString(R.string.exo_track_unknown) : strC;
    }

    public final String b(s0 s0Var) {
        int i10 = s0Var.f11683o;
        return i10 == -1 ? "" : this.f4896a.getString(R.string.exo_track_bitrate, Float.valueOf(i10 / 1000000.0f));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    public final String c(s0 s0Var) {
        String displayName;
        String[] strArr = new String[2];
        String str = s0Var.f11678j;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            displayName = "";
        } else {
            int i10 = g0.f10384a;
            Locale localeForLanguageTag = i10 >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
            Locale locale = i10 >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
            displayName = localeForLanguageTag.getDisplayName(locale);
            if (TextUtils.isEmpty(displayName)) {
                displayName = "";
            } else {
                try {
                    int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
                    displayName = displayName.substring(0, iOffsetByCodePoints).toUpperCase(locale) + displayName.substring(iOffsetByCodePoints);
                } catch (IndexOutOfBoundsException unused) {
                }
            }
        }
        strArr[0] = displayName;
        strArr[1] = d(s0Var);
        String strE = e(strArr);
        if (TextUtils.isEmpty(strE)) {
            return TextUtils.isEmpty(s0Var.f11677i) ? "" : s0Var.f11677i;
        }
        return strE;
    }

    public final String d(s0 s0Var) {
        String string = (s0Var.f11680l & 2) != 0 ? this.f4896a.getString(R.string.exo_track_role_alternate) : "";
        if ((s0Var.f11680l & 4) != 0) {
            string = e(string, this.f4896a.getString(R.string.exo_track_role_supplementary));
        }
        if ((s0Var.f11680l & 8) != 0) {
            string = e(string, this.f4896a.getString(R.string.exo_track_role_commentary));
        }
        return (s0Var.f11680l & 1088) != 0 ? e(string, this.f4896a.getString(R.string.exo_track_role_closed_captions)) : string;
    }

    public final String e(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.f4896a.getString(R.string.exo_item_list, string, str);
            }
        }
        return string;
    }
}
