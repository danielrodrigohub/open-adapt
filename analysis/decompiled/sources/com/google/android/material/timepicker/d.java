package com.google.android.material.timepicker;

import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Objects;

/* JADX INFO: compiled from: TimePickerView.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements MaterialButtonToggleGroup.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TimePickerView f5603a;

    public d(TimePickerView timePickerView) {
        this.f5603a = timePickerView;
    }

    @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
    public final void a() {
        TimePickerView timePickerView = this.f5603a;
        int i10 = TimePickerView.B;
        Objects.requireNonNull(timePickerView);
    }
}
