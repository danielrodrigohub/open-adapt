package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.fragment.app.l;
import androidx.fragment.app.m;
import androidx.fragment.app.x;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public CharSequence T;
    public String U;
    public Drawable V;
    public String W;
    public String X;
    public int Y;

    public interface a {
        <T extends Preference> T b(CharSequence charSequence);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DialogPreference, i10, 0);
        String strD = i.d(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_dialogTitle, R.styleable.DialogPreference_android_dialogTitle);
        this.T = strD;
        if (strD == null) {
            this.T = this.f2278n;
        }
        this.U = i.d(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_dialogMessage, R.styleable.DialogPreference_android_dialogMessage);
        int i12 = R.styleable.DialogPreference_dialogIcon;
        int i13 = R.styleable.DialogPreference_android_dialogIcon;
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(i12);
        this.V = drawable == null ? typedArrayObtainStyledAttributes.getDrawable(i13) : drawable;
        this.W = i.d(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_positiveButtonText, R.styleable.DialogPreference_android_positiveButtonText);
        this.X = i.d(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_negativeButtonText, R.styleable.DialogPreference_android_negativeButtonText);
        this.Y = typedArrayObtainStyledAttributes.getResourceId(R.styleable.DialogPreference_dialogLayout, typedArrayObtainStyledAttributes.getResourceId(R.styleable.DialogPreference_android_dialogLayout, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void y() {
        l cVar;
        f.a aVar = this.f2273i.f2353j;
        if (aVar != null) {
            c cVar2 = (c) aVar;
            boolean zA = false;
            for (m mVar = cVar2; !zA && mVar != null; mVar = mVar.C) {
                if (mVar instanceof c.d) {
                    zA = ((c.d) mVar).a();
                }
            }
            if (!zA && (cVar2.l() instanceof c.d)) {
                zA = ((c.d) cVar2.l()).a();
            }
            if (!zA && (cVar2.i() instanceof c.d)) {
                zA = ((c.d) cVar2.i()).a();
            }
            if (!zA && cVar2.r().F("androidx.preference.PreferenceFragment.DIALOG") == null) {
                if (this instanceof EditTextPreference) {
                    String str = this.f2282r;
                    cVar = new x0.a();
                    Bundle bundle = new Bundle(1);
                    bundle.putString("key", str);
                    cVar.j0(bundle);
                } else if (this instanceof ListPreference) {
                    String str2 = this.f2282r;
                    cVar = new x0.b();
                    Bundle bundle2 = new Bundle(1);
                    bundle2.putString("key", str2);
                    cVar.j0(bundle2);
                } else {
                    if (!(this instanceof MultiSelectListPreference)) {
                        StringBuilder sbC = a0.b.c("Cannot display dialog for an unknown Preference type: ");
                        sbC.append(getClass().getSimpleName());
                        sbC.append(". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
                        throw new IllegalArgumentException(sbC.toString());
                    }
                    String str3 = this.f2282r;
                    cVar = new x0.c();
                    Bundle bundle3 = new Bundle(1);
                    bundle3.putString("key", str3);
                    cVar.j0(bundle3);
                }
                cVar.n0(cVar2);
                x xVarR = cVar2.r();
                cVar.f1953n0 = false;
                cVar.f1954o0 = true;
                androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(xVarR);
                aVar2.e(0, cVar, "androidx.preference.PreferenceFragment.DIALOG", 1);
                aVar2.i();
            }
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
