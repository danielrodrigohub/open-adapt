package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    public String Z;

    public static final class b implements Preference.f<EditTextPreference> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static b f2263a;

        @Override // androidx.preference.Preference.f
        public final CharSequence a(Preference preference) {
            EditTextPreference editTextPreference = (EditTextPreference) preference;
            return TextUtils.isEmpty(editTextPreference.Z) ? editTextPreference.f2272h.getString(R.string.not_set) : editTextPreference.Z;
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EditTextPreference, i10, 0);
        int i12 = R.styleable.EditTextPreference_useSimpleSummaryProvider;
        if (i.b(typedArrayObtainStyledAttributes, i12, i12, false)) {
            if (b.f2263a == null) {
                b.f2263a = new b();
            }
            this.R = b.f2263a;
            q();
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final Object A(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    @Override // androidx.preference.Preference
    public final void B(Parcelable parcelable) {
        if (!parcelable.getClass().equals(a.class)) {
            super.B(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.B(aVar.getSuperState());
        L(aVar.f2262h);
    }

    @Override // androidx.preference.Preference
    public final Parcelable C() {
        this.P = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f2288x) {
            return absSavedState;
        }
        a aVar = new a(absSavedState);
        aVar.f2262h = this.Z;
        return aVar;
    }

    @Override // androidx.preference.Preference
    public final void D(Object obj) {
        L(l((String) obj));
    }

    @Override // androidx.preference.Preference
    public final boolean H() {
        return TextUtils.isEmpty(this.Z) || super.H();
    }

    public final void L(String str) {
        boolean zH = H();
        this.Z = str;
        F(str);
        boolean zH2 = H();
        if (zH2 != zH) {
            s(zH2);
        }
        q();
    }

    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0026a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f2262h;

        /* JADX INFO: renamed from: androidx.preference.EditTextPreference$a$a, reason: collision with other inner class name */
        public class C0026a implements Parcelable.Creator<a> {
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
            this.f2262h = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f2262h);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle), 0);
    }
}
