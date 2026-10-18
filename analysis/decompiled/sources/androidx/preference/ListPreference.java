package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    public CharSequence[] Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public CharSequence[] f2264a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f2265b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public String f2266c0;
    public boolean d0;

    public static final class b implements Preference.f<ListPreference> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static b f2268a;

        @Override // androidx.preference.Preference.f
        public final CharSequence a(Preference preference) {
            ListPreference listPreference = (ListPreference) preference;
            return TextUtils.isEmpty(listPreference.M()) ? listPreference.f2272h.getString(R.string.not_set) : listPreference.M();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPreference, i10, 0);
        this.Z = i.e(typedArrayObtainStyledAttributes, R.styleable.ListPreference_entries, R.styleable.ListPreference_android_entries);
        this.f2264a0 = i.e(typedArrayObtainStyledAttributes, R.styleable.ListPreference_entryValues, R.styleable.ListPreference_android_entryValues);
        int i12 = R.styleable.ListPreference_useSimpleSummaryProvider;
        if (typedArrayObtainStyledAttributes.getBoolean(i12, typedArrayObtainStyledAttributes.getBoolean(i12, false))) {
            if (b.f2268a == null) {
                b.f2268a = new b();
            }
            this.R = b.f2268a;
            q();
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i10, 0);
        this.f2266c0 = i.d(typedArrayObtainStyledAttributes2, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        typedArrayObtainStyledAttributes2.recycle();
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
        N(aVar.f2267h);
    }

    @Override // androidx.preference.Preference
    public final Parcelable C() {
        this.P = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f2288x) {
            return absSavedState;
        }
        a aVar = new a(absSavedState);
        aVar.f2267h = this.f2265b0;
        return aVar;
    }

    @Override // androidx.preference.Preference
    public final void D(Object obj) {
        N(l((String) obj));
    }

    public final int L(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f2264a0) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(this.f2264a0[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    public final CharSequence M() {
        CharSequence[] charSequenceArr;
        int iL = L(this.f2265b0);
        if (iL < 0 || (charSequenceArr = this.Z) == null) {
            return null;
        }
        return charSequenceArr[iL];
    }

    public final void N(String str) {
        boolean z10 = !TextUtils.equals(this.f2265b0, str);
        if (z10 || !this.d0) {
            this.f2265b0 = str;
            this.d0 = true;
            F(str);
            if (z10) {
                q();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final CharSequence n() {
        Preference.f fVar = this.R;
        if (fVar != null) {
            return fVar.a(this);
        }
        CharSequence charSequenceM = M();
        CharSequence charSequenceN = super.n();
        String str = this.f2266c0;
        if (str == null) {
            return charSequenceN;
        }
        Object[] objArr = new Object[1];
        if (charSequenceM == null) {
            charSequenceM = "";
        }
        objArr[0] = charSequenceM;
        String str2 = String.format(str, objArr);
        if (TextUtils.equals(str2, charSequenceN)) {
            return charSequenceN;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0027a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f2267h;

        /* JADX INFO: renamed from: androidx.preference.ListPreference$a$a, reason: collision with other inner class name */
        public class C0027a implements Parcelable.Creator<a> {
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
            this.f2267h = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f2267h);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
