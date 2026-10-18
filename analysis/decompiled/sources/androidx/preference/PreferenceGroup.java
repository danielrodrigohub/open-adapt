package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    public final p.g<String, Long> T;
    public final Handler U;
    public final List<Preference> V;
    public boolean W;
    public int X;
    public boolean Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final a f2293a0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this) {
                PreferenceGroup.this.T.clear();
            }
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.T = new p.g<>();
        this.U = new Handler(Looper.getMainLooper());
        this.W = true;
        this.X = 0;
        this.Y = false;
        this.Z = Integer.MAX_VALUE;
        this.f2293a0 = new a();
        this.V = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PreferenceGroup, i10, i11);
        int i12 = R.styleable.PreferenceGroup_orderingFromXml;
        this.W = i.b(typedArrayObtainStyledAttributes, i12, i12, true);
        int i13 = R.styleable.PreferenceGroup_initialExpandedChildrenCount;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            O(typedArrayObtainStyledAttributes.getInt(i13, typedArrayObtainStyledAttributes.getInt(i13, Integer.MAX_VALUE)));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void B(Parcelable parcelable) {
        if (!parcelable.getClass().equals(b.class)) {
            super.B(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        this.Z = bVar.f2295h;
        super.B(bVar.getSuperState());
    }

    @Override // androidx.preference.Preference
    public final Parcelable C() {
        this.P = true;
        return new b(AbsSavedState.EMPTY_STATE, this.Z);
    }

    public final <T extends Preference> T L(CharSequence charSequence) {
        T t10;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(this.f2282r, charSequence)) {
            return this;
        }
        int iN = N();
        for (int i10 = 0; i10 < iN; i10++) {
            PreferenceGroup preferenceGroup = (T) M(i10);
            if (TextUtils.equals(preferenceGroup.f2282r, charSequence)) {
                return preferenceGroup;
            }
            if ((preferenceGroup instanceof PreferenceGroup) && (t10 = (T) preferenceGroup.L(charSequence)) != null) {
                return t10;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public final Preference M(int i10) {
        return (Preference) this.V.get(i10);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public final int N() {
        return this.V.size();
    }

    public final void O(int i10) {
        if (i10 != Integer.MAX_VALUE && !o()) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.Z = i10;
    }

    @Override // androidx.preference.Preference
    public final void b(Bundle bundle) {
        super.b(bundle);
        int iN = N();
        for (int i10 = 0; i10 < iN; i10++) {
            M(i10).b(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void g(Bundle bundle) {
        super.g(bundle);
        int iN = N();
        for (int i10 = 0; i10 < iN; i10++) {
            M(i10).g(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void s(boolean z10) {
        super.s(z10);
        int iN = N();
        for (int i10 = 0; i10 < iN; i10++) {
            Preference preferenceM = M(i10);
            if (preferenceM.B == z10) {
                preferenceM.B = !z10;
                preferenceM.s(preferenceM.H());
                preferenceM.q();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void u() {
        super.u();
        this.Y = true;
        int iN = N();
        for (int i10 = 0; i10 < iN; i10++) {
            M(i10).u();
        }
    }

    @Override // androidx.preference.Preference
    public final void z() {
        K();
        this.Y = false;
        int iN = N();
        for (int i10 = 0; i10 < iN; i10++) {
            M(i10).z();
        }
    }

    public static class b extends Preference.b {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2295h;

        public class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f2295h = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2295h);
        }

        public b(Parcelable parcelable, int i10) {
            super(parcelable);
            this.f2295h = i10;
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
