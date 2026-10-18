package q6;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;

/* JADX INFO: compiled from: DropdownMenuEndIconDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements View.OnTouchListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AutoCompleteTextView f13652h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.textfield.b f13653i;

    public h(com.google.android.material.textfield.b bVar, AutoCompleteTextView autoCompleteTextView) {
        this.f13653i = bVar;
        this.f13652h = autoCompleteTextView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.f13653i.m()) {
                this.f13653i.f5549l = false;
            }
            com.google.android.material.textfield.b.g(this.f13653i, this.f13652h);
            com.google.android.material.textfield.b.h(this.f13653i);
        }
        return false;
    }
}
