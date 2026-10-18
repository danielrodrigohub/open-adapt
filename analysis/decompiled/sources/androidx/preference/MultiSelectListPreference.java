package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {
    public CharSequence[] Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public CharSequence[] f2269a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Set<String> f2270b0;

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        this.f2270b0 = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MultiSelectListPreference, i10, 0);
        this.Z = i.e(typedArrayObtainStyledAttributes, R.styleable.MultiSelectListPreference_entries, R.styleable.MultiSelectListPreference_android_entries);
        this.f2269a0 = i.e(typedArrayObtainStyledAttributes, R.styleable.MultiSelectListPreference_entryValues, R.styleable.MultiSelectListPreference_android_entryValues);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final Object A(TypedArray typedArray, int i10) {
        CharSequence[] textArray = typedArray.getTextArray(i10);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public final void B(Parcelable parcelable) {
        if (!parcelable.getClass().equals(a.class)) {
            super.B(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.B(aVar.getSuperState());
        L(aVar.f2271h);
    }

    @Override // androidx.preference.Preference
    public final Parcelable C() {
        this.P = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f2288x) {
            return absSavedState;
        }
        a aVar = new a(absSavedState);
        aVar.f2271h = this.f2270b0;
        return aVar;
    }

    @Override // androidx.preference.Preference
    public final void D(Object obj) {
        L(m((Set) obj));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    public final void L(Set<String> set) {
        this.f2270b0.clear();
        this.f2270b0.addAll(set);
        if (I() && !set.equals(m(null))) {
            SharedPreferences.Editor editorC = this.f2273i.c();
            editorC.putStringSet(this.f2282r, set);
            J(editorC);
        }
        q();
    }

    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0028a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Set<String> f2271h;

        /* JADX INFO: renamed from: androidx.preference.MultiSelectListPreference$a$a, reason: collision with other inner class name */
        public class C0028a implements Parcelable.Creator<a> {
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
            int i10 = parcel.readInt();
            this.f2271h = new HashSet();
            String[] strArr = new String[i10];
            parcel.readStringArray(strArr);
            Collections.addAll(this.f2271h, strArr);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r3v3, types: [java.util.HashSet, java.util.Set, java.util.Set<java.lang.String>] */
        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2271h.size());
            ?? r10 = this.f2271h;
            parcel.writeStringArray((String[]) r10.toArray(new String[r10.size()]));
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
