package x0;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.preference.MultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: MultiSelectListPreferenceDialogFragmentCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends androidx.preference.b {
    public CharSequence[] A0;
    public CharSequence[] B0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public Set<String> f17710y0 = new HashSet();

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f17711z0;

    /* JADX INFO: compiled from: MultiSelectListPreferenceDialogFragmentCompat.java */
    public class a implements DialogInterface.OnMultiChoiceClickListener {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public final void onClick(DialogInterface dialogInterface, int i10, boolean z10) {
            if (z10) {
                c cVar = c.this;
                cVar.f17711z0 = cVar.f17710y0.add(cVar.B0[i10].toString()) | cVar.f17711z0;
            } else {
                c cVar2 = c.this;
                cVar2.f17711z0 = cVar2.f17710y0.remove(cVar2.B0[i10].toString()) | cVar2.f17711z0;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    @Override // androidx.preference.b, androidx.fragment.app.l, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        if (bundle != null) {
            this.f17710y0.clear();
            this.f17710y0.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.f17711z0 = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.A0 = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.B0 = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) s0();
        if (multiSelectListPreference.Z == null || multiSelectListPreference.f2269a0 == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.f17710y0.clear();
        this.f17710y0.addAll(multiSelectListPreference.f2270b0);
        this.f17711z0 = false;
        this.A0 = multiSelectListPreference.Z;
        this.B0 = multiSelectListPreference.f2269a0;
    }

    @Override // androidx.preference.b, androidx.fragment.app.l, androidx.fragment.app.m
    public final void R(Bundle bundle) {
        super.R(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.f17710y0));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.f17711z0);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.A0);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.B0);
    }

    @Override // androidx.preference.b
    public final void u0(boolean z10) {
        if (z10 && this.f17711z0) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) s0();
            Objects.requireNonNull(multiSelectListPreference);
            multiSelectListPreference.L(this.f17710y0);
        }
        this.f17711z0 = false;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashSet, java.util.Set<java.lang.String>] */
    @Override // androidx.preference.b
    public final void v0(androidx.appcompat.app.d.a aVar) {
        int length = this.B0.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = this.f17710y0.contains(this.B0[i10].toString());
        }
        aVar.c(this.A0, zArr, new a());
    }
}
