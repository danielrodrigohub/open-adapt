package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: SmoothCalendarLayoutManager.java */
/* JADX INFO: loaded from: classes.dex */
public class z extends LinearLayoutManager {

    /* JADX INFO: compiled from: SmoothCalendarLayoutManager.java */
    public class a extends androidx.recyclerview.widget.x {
        public a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.x
        public final float j(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public z(Context context, int i10) {
        super(i10);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final void H0(RecyclerView recyclerView, RecyclerView.y yVar, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.f2528a = i10;
        I0(aVar);
    }
}
