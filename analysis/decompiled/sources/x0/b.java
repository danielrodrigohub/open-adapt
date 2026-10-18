package x0;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.preference.ListPreference;
import java.util.Objects;

/* JADX INFO: compiled from: ListPreferenceDialogFragmentCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends androidx.preference.b {
    public CharSequence[] A0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f17707y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public CharSequence[] f17708z0;

    /* JADX INFO: compiled from: ListPreferenceDialogFragmentCompat.java */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i10) {
            b bVar = b.this;
            bVar.f17707y0 = i10;
            bVar.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    @Override // androidx.preference.b, androidx.fragment.app.l, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        if (bundle != null) {
            this.f17707y0 = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f17708z0 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.A0 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) s0();
        if (listPreference.Z == null || listPreference.f2264a0 == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f17707y0 = listPreference.L(listPreference.f2265b0);
        this.f17708z0 = listPreference.Z;
        this.A0 = listPreference.f2264a0;
    }

    @Override // androidx.preference.b, androidx.fragment.app.l, androidx.fragment.app.m
    public final void R(Bundle bundle) {
        super.R(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f17707y0);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f17708z0);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.A0);
    }

    @Override // androidx.preference.b
    public final void u0(boolean z10) {
        int i10;
        if (!z10 || (i10 = this.f17707y0) < 0) {
            return;
        }
        String string = this.A0[i10].toString();
        ListPreference listPreference = (ListPreference) s0();
        Objects.requireNonNull(listPreference);
        listPreference.N(string);
    }

    @Override // androidx.preference.b
    public final void v0(androidx.appcompat.app.d.a aVar) {
        aVar.f(this.f17708z0, this.f17707y0, new a());
        aVar.e(null, null);
    }
}
