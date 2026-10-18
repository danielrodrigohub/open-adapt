package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    public boolean T;
    public CharSequence U;
    public CharSequence V;
    public boolean W;
    public boolean X;

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
    }

    @Override // androidx.preference.Preference
    public final Object A(TypedArray typedArray, int i10) {
        return Boolean.valueOf(typedArray.getBoolean(i10, false));
    }

    @Override // androidx.preference.Preference
    public final void B(Parcelable parcelable) {
        if (!parcelable.getClass().equals(a.class)) {
            super.B(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.B(aVar.getSuperState());
        L(aVar.f2310h);
    }

    @Override // androidx.preference.Preference
    public final Parcelable C() {
        this.P = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f2288x) {
            return absSavedState;
        }
        a aVar = new a(absSavedState);
        aVar.f2310h = this.T;
        return aVar;
    }

    @Override // androidx.preference.Preference
    public final void D(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        L(j(((Boolean) obj).booleanValue()));
    }

    @Override // androidx.preference.Preference
    public final boolean H() {
        boolean z10;
        if (this.X) {
            z10 = this.T;
        } else {
            z10 = !this.T;
        }
        return z10 || super.H();
    }

    public final void L(boolean z10) {
        boolean z11 = this.T != z10;
        if (z11 || !this.W) {
            this.T = z10;
            this.W = true;
            if (I() && z10 != j(!z10)) {
                SharedPreferences.Editor editorC = this.f2273i.c();
                editorC.putBoolean(this.f2282r, z10);
                J(editorC);
            }
            if (z11) {
                s(H());
                q();
            }
        }
    }

    public final void M(CharSequence charSequence) {
        this.V = charSequence;
        if (this.T) {
            return;
        }
        q();
    }

    public final void N(CharSequence charSequence) {
        this.U = charSequence;
        if (this.T) {
            q();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0030  */
    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    public final void O(View view) {
        int i10;
        CharSequence charSequenceN;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            boolean z10 = true;
            if (!this.T || TextUtils.isEmpty(this.U)) {
                if (!this.T && !TextUtils.isEmpty(this.V)) {
                    textView.setText(this.V);
                }
                if (z10) {
                    charSequenceN = n();
                    if (!TextUtils.isEmpty(charSequenceN)) {
                        textView.setText(charSequenceN);
                        z10 = false;
                    }
                }
                i10 = z10 ? 8 : 0;
                if (i10 != textView.getVisibility()) {
                    textView.setVisibility(i10);
                }
            }
            textView.setText(this.U);
            z10 = false;
            if (z10) {
                charSequenceN = n();
                if (!TextUtils.isEmpty(charSequenceN)) {
                    textView.setText(charSequenceN);
                    z10 = false;
                }
            }
            if (z10) {
            }
            if (i10 != textView.getVisibility()) {
                textView.setVisibility(i10);
            }
        }
    }

    public final void P(g gVar) {
        O(gVar.A(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void y() {
        L(!this.T);
    }

    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0029a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2310h;

        /* JADX INFO: renamed from: androidx.preference.TwoStatePreference$a$a, reason: collision with other inner class name */
        public class C0029a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(Parcel parcel) {
            super(parcel);
            this.f2310h = parcel.readInt() == 1;
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2310h ? 1 : 0);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
    }
}
