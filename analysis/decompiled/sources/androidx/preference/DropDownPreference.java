package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final ArrayAdapter f2258e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Spinner f2259f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final a f2260g0;

    public class a implements AdapterView.OnItemSelectedListener {
        public a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (i10 >= 0) {
                String string = DropDownPreference.this.f2264a0[i10].toString();
                if (string.equals(DropDownPreference.this.f2265b0)) {
                    return;
                }
                Objects.requireNonNull(DropDownPreference.this);
                DropDownPreference.this.N(string);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dropdownPreferenceStyle, 0);
    }

    @Override // androidx.preference.Preference
    public final void q() {
        super.q();
        ArrayAdapter arrayAdapter = this.f2258e0;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        Spinner spinner = (Spinner) gVar.f2453a.findViewById(R.id.spinner);
        this.f2259f0 = spinner;
        spinner.setAdapter((SpinnerAdapter) this.f2258e0);
        this.f2259f0.setOnItemSelectedListener(this.f2260g0);
        Spinner spinner2 = this.f2259f0;
        String str = this.f2265b0;
        CharSequence[] charSequenceArr = this.f2264a0;
        int i10 = -1;
        if (str != null && charSequenceArr != null) {
            for (int length = charSequenceArr.length - 1; length >= 0; length--) {
                if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                    i10 = length;
                    break;
                }
            }
        }
        spinner2.setSelection(i10);
        super.x(gVar);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void y() {
        this.f2259f0.performClick();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropDownPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        this.f2260g0 = new a();
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item);
        this.f2258e0 = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.Z;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                this.f2258e0.add(charSequence.toString());
            }
        }
    }
}
