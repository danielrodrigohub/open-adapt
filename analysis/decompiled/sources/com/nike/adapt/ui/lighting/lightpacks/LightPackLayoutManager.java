package com.nike.adapt.ui.lighting.lightpacks;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.x;
import java.util.ArrayList;
import p4.h;
import z8.d;

/* JADX INFO: compiled from: LightPackLayoutManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LightPackLayoutManager extends LinearLayoutManager {
    public z8.a G;
    public final ArrayList<a> H;

    /* JADX INFO: compiled from: LightPackLayoutManager.kt */
    public interface a {
        void w(z8.a aVar, float f10, int i10);
    }

    /* JADX INFO: compiled from: LightPackLayoutManager.kt */
    public static final class b extends x {
        public b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.x, androidx.recyclerview.widget.RecyclerView.x
        public final void e(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
            h.j(view, "targetView");
            h.j(yVar, "state");
            h.j(aVar, "action");
            int iH = h(view, m());
            int iK = k(iH);
            if (iK > 0) {
                aVar.b(-((int) (iH * 1.17f)), 0, iK, this.f2835j);
            }
        }

        @Override // androidx.recyclerview.widget.x
        public final float j(DisplayMetrics displayMetrics) {
            h.j(displayMetrics, "displayMetrics");
            return 80.0f / displayMetrics.densityDpi;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightPackLayoutManager(Context context) {
        super(0);
        h.j(context, "context");
        this.H = new ArrayList<>();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final void H0(RecyclerView recyclerView, RecyclerView.y yVar, int i10) {
        h.j(recyclerView, "recyclerView");
        h.j(yVar, "state");
        b bVar = new b(recyclerView.getContext());
        bVar.f2528a = i10;
        I0(bVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final void j0(RecyclerView.y yVar) {
        super.j0(yVar);
        q1();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0088  */
    /* JADX WARN: Code duplicated, block: B:23:0x008c  */
    /* JADX WARN: Code duplicated, block: B:26:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:29:0x00be  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a4 A[SYNTHETIC] */
    public final void q1() {
        float f10;
        d dVar;
        z8.a lightPack;
        float f11 = this.f2500p / 2.0f;
        int iZ = z();
        float f12 = 0.0f;
        for (int i10 = 0; i10 < iZ; i10++) {
            View viewY = y(i10);
            if (viewY == null) {
                return;
            }
            float right = (viewY.getRight() + viewY.getLeft()) / 2.0f;
            float fAbs = Math.abs(f11 - right) / f11;
            float f13 = 1;
            float f14 = f13 - (0.175f * fAbs);
            viewY.setScaleX(f14);
            viewY.setScaleY(f14);
            float f15 = f13 - f14;
            float width = ((viewY.getWidth() * (right > f11 ? -1 : 1)) * f15) / 2.0f;
            viewY.setTranslationX(f12 + width);
            viewY.setTranslationY(viewY.getHeight() * f15 * 0.1f);
            if (width > 0.0f) {
                View viewY2 = y(i10 - 1);
                if (viewY2 != null) {
                    viewY2.setTranslationX((2 * width) + viewY2.getTranslationX());
                }
            } else {
                f12 = width < 0.0f ? 2 * width : 0.0f;
                viewY.setAlpha(f13 - (0.15f * fAbs));
                f10 = (0.3f - fAbs) / 0.3f;
                if (!(viewY instanceof d)) {
                    if (fAbs < 0.3f) {
                        dVar = (d) viewY;
                        this.G = dVar.getLightPack();
                        dVar.setTitleAlpha(f10);
                        dVar.setTitleXAdjust(width * (-1.7f));
                        for (a aVar : this.H) {
                            lightPack = dVar.getLightPack();
                            if (lightPack != null) {
                                aVar.w(lightPack, f10, dVar.getTitleHeight());
                            }
                        }
                    } else {
                        ((d) viewY).setTitleAlpha(0.0f);
                    }
                }
            }
            viewY.setAlpha(f13 - (0.15f * fAbs));
            f10 = (0.3f - fAbs) / 0.3f;
            if (!(viewY instanceof d)) {
                if (fAbs < 0.3f) {
                    dVar = (d) viewY;
                    this.G = dVar.getLightPack();
                    dVar.setTitleAlpha(f10);
                    dVar.setTitleXAdjust(width * (-1.7f));
                    while (r7.hasNext()) {
                        lightPack = dVar.getLightPack();
                        if (lightPack != null) {
                            aVar.w(lightPack, f10, dVar.getTitleHeight());
                        }
                    }
                } else {
                    ((d) viewY).setTitleAlpha(0.0f);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public final int v0(int i10, RecyclerView.t tVar, RecyclerView.y yVar) {
        h.j(tVar, "recycler");
        h.j(yVar, "state");
        int iV0 = super.v0(i10, tVar, yVar);
        q1();
        return iV0;
    }
}
