package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import g6.s;

/* JADX INFO: compiled from: TabIndicatorInterpolator.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    public static RectF a(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.I || !(view instanceof TabLayout.i)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        TabLayout.i iVar = (TabLayout.i) view;
        int contentWidth = iVar.getContentWidth();
        int contentHeight = iVar.getContentHeight();
        int iA = (int) s.a(iVar.getContext(), 24);
        if (contentWidth < iA) {
            contentWidth = iA;
        }
        int right = (iVar.getRight() + iVar.getLeft()) / 2;
        int bottom = (iVar.getBottom() + iVar.getTop()) / 2;
        int i10 = contentWidth / 2;
        return new RectF(right - i10, bottom - (contentHeight / 2), i10 + right, (right / 2) + bottom);
    }

    public void b(TabLayout tabLayout, View view, View view2, float f10, Drawable drawable) {
        RectF rectFA = a(tabLayout, view);
        RectF rectFA2 = a(tabLayout, view2);
        drawable.setBounds(p5.a.b((int) rectFA.left, (int) rectFA2.left, f10), drawable.getBounds().top, p5.a.b((int) rectFA.right, (int) rectFA2.right, f10), drawable.getBounds().bottom);
    }
}
