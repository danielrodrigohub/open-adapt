package p9;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.g;
import androidx.appcompat.widget.k1;
import com.nike.adapt.R;
import com.nike.adapt.ui.tooltip.TooltipOverlayView;
import fd.o;
import java.util.Objects;
import p4.h;
import z8.e;
import z8.f;

/* JADX INFO: compiled from: TooltipPopUpView.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends FrameLayout {
    public static final /* synthetic */ int C = 0;
    public final Handler A;
    public boolean B;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p9.a f13372h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public qd.a<o> f13373i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public qd.a<o> f13374j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f13375k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final View f13376l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final View f13377m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final TooltipOverlayView f13378n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final View f13379o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ImageView f13380p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Button f13381q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SuppressLint({"WrongConstant"})
    public final WindowManager f13382r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f13383s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Float f13384t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public View f13385u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public View f13386v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ViewPropertyAnimator f13387w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewPropertyAnimator f13388x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ViewPropertyAnimator f13389y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ViewPropertyAnimator f13390z;

    /* JADX INFO: compiled from: TooltipPopUpView.kt */
    public static final class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            h.j(animator, "animation");
            d.this.f13376l.setVisibility(8);
            d.this.f13376l.setAlpha(0.0f);
            d.this.b();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(p9.a aVar, Context context) {
        TextView textView;
        TextView textView2;
        super(context, null);
        h.j(context, "context");
        this.f13372h = aVar;
        Object systemService = context.getSystemService("window");
        h.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f13382r = (WindowManager) systemService;
        this.f13383s = 2;
        this.A = new Handler();
        LayoutInflater.from(context).inflate(R.layout.view_tooltip_pop_up, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R.id.view_tooltip_pop_up_parent_view);
        h.i(viewFindViewById, "findViewById(R.id.view_tooltip_pop_up_parent_view)");
        this.f13375k = viewFindViewById;
        View viewFindViewById2 = viewFindViewById.findViewById(R.id.tooltipPopUpView);
        h.i(viewFindViewById2, "toolTip.findViewById(R.id.tooltipPopUpView)");
        this.f13376l = viewFindViewById2;
        View viewFindViewById3 = viewFindViewById.findViewById(R.id.tooltipArrowTop);
        h.i(viewFindViewById3, "toolTip.findViewById(R.id.tooltipArrowTop)");
        this.f13377m = viewFindViewById3;
        View viewFindViewById4 = viewFindViewById.findViewById(R.id.tooltipOverlayView);
        h.i(viewFindViewById4, "toolTip.findViewById(R.id.tooltipOverlayView)");
        TooltipOverlayView tooltipOverlayView = (TooltipOverlayView) viewFindViewById4;
        this.f13378n = tooltipOverlayView;
        View viewFindViewById5 = viewFindViewById.findViewById(R.id.tootTipPopUpContent);
        h.i(viewFindViewById5, "toolTip.findViewById(R.id.tootTipPopUpContent)");
        this.f13379o = viewFindViewById5;
        View viewFindViewById6 = viewFindViewById.findViewById(R.id.focused_view_image);
        h.i(viewFindViewById6, "toolTip.findViewById(R.id.focused_view_image)");
        this.f13380p = (ImageView) viewFindViewById6;
        TextView textView3 = (TextView) viewFindViewById2.findViewById(R.id.tooltipPopUpTitle);
        if (textView3 != null) {
            textView3.setText(aVar.f13352a);
        }
        TextView textView4 = (TextView) viewFindViewById2.findViewById(R.id.tooltipPopUpDesc);
        if (textView4 != null) {
            textView4.setText(aVar.f13353b);
        }
        String str = aVar.f13355d;
        if (str != null && (textView2 = (TextView) viewFindViewById2.findViewById(R.id.tool_tip_step)) != null) {
            textView2.setText(str);
        }
        String str2 = aVar.f13356e;
        if (str2 != null && (textView = (TextView) viewFindViewById2.findViewById(R.id.tool_tip_step)) != null) {
            textView.setContentDescription(str2);
        }
        Button button = (Button) viewFindViewById2.findViewById(R.id.tooltipButton);
        this.f13381q = button;
        if (button != null) {
            button.setText(aVar.f13354c);
        }
        Button button2 = this.f13381q;
        if (button2 != null) {
            button2.setOnClickListener(new f(this, 4));
        }
        tooltipOverlayView.setUseBlendingForViewOverlay(aVar.f13357f);
        tooltipOverlayView.setOnClickListener(new e(this, 3));
        viewFindViewById2.setId(View.generateViewId());
        viewFindViewById2.measure(0, 0);
        viewFindViewById3.setId(View.generateViewId());
        viewFindViewById3.measure(0, 0);
        viewFindViewById2.getMeasuredHeight();
        viewFindViewById3.getMeasuredHeight();
        viewFindViewById2.getMeasuredWidth();
    }

    public static void a(d dVar) {
        int iC;
        int i10;
        Float fValueOf;
        h.j(dVar, "this$0");
        int[] iArr = new int[2];
        View view = dVar.f13385u;
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        int i11 = iArr[0];
        int offset = iArr[1] - dVar.getOffset();
        int i12 = i11 + 15;
        int i13 = offset + 15;
        View view2 = dVar.f13385u;
        int i14 = (g7.b.i(view2 != null ? Integer.valueOf(view2.getWidth()) : null) + i11) - 15;
        View view3 = dVar.f13385u;
        Rect rect = new Rect(i12, i13, i14, (g7.b.i(view3 != null ? Integer.valueOf(view3.getHeight()) : null) + offset) - 20);
        TooltipOverlayView tooltipOverlayView = dVar.f13378n;
        Float f10 = dVar.f13384t;
        Float fValueOf2 = f10 != null ? Float.valueOf(g7.b.b(f10.floatValue())) : null;
        Objects.requireNonNull(tooltipOverlayView);
        if (tooltipOverlayView.f5912h) {
            tooltipOverlayView.f5913i = new RectF(rect);
            float fFloatValue = 0.0f;
            if ((fValueOf2 != null ? fValueOf2.floatValue() : 0.0f) <= 0.0f) {
                fValueOf = Float.valueOf(fFloatValue);
            } else if (fValueOf2 != null) {
                fFloatValue = fValueOf2.floatValue() + 10;
                fValueOf = Float.valueOf(fFloatValue);
            } else {
                fValueOf = null;
            }
            tooltipOverlayView.f5916l = fValueOf;
            tooltipOverlayView.invalidate();
        }
        Rect rect2 = new Rect();
        View view4 = dVar.f13386v;
        if (view4 != null) {
            view4.getWindowVisibleDisplayFrame(rect2);
        }
        int iC2 = rect2.bottom - ((g7.b.c(24) * 2) + ((g7.b.c(20) * 2) + offset));
        int i15 = dVar.f13372h.f13359h;
        if (i15 == 0) {
            i15 = iC2 < dVar.f13376l.getMeasuredHeight() ? 1 : 2;
        }
        dVar.f13383s = i15;
        Point point = new Point();
        View view5 = dVar.f13385u;
        point.x = (((g7.b.i(view5 != null ? Integer.valueOf(view5.getWidth()) : null) / 2) + i11) - (dVar.f13377m.getMeasuredWidth() / 2)) - g7.b.c(1);
        if (dVar.f13383s == 2) {
            View view6 = dVar.f13385u;
            iC = g7.b.c(1) + dVar.f13377m.getMeasuredHeight() + g7.b.i(view6 != null ? Integer.valueOf(view6.getHeight()) : null) + offset;
            point.y = g7.b.c(4) + (iC - dVar.f13377m.getMeasuredHeight());
        } else {
            iC = offset - (g7.b.c(1) + (dVar.f13377m.getMeasuredHeight() + dVar.f13376l.getMeasuredHeight()));
            dVar.f13377m.setRotation(180.0f);
            point.y = (dVar.f13376l.getMeasuredHeight() + iC) - g7.b.c(4);
        }
        dVar.f13377m.setTranslationX(point.x);
        dVar.f13377m.setTranslationY(point.y + dVar.f13372h.f13358g);
        Point point2 = new Point();
        int i16 = point.x;
        int[] iArr2 = {0, 0};
        dVar.f13376l.getLocationOnScreen(iArr2);
        int i17 = iArr2[0];
        int measuredWidth = dVar.f13376l.getMeasuredWidth() + i17;
        int measuredWidth2 = (int) (((double) dVar.f13377m.getMeasuredWidth()) * 0.75d);
        int i18 = i16 - measuredWidth2;
        int measuredWidth3 = dVar.f13377m.getMeasuredWidth() + i16 + measuredWidth2;
        if (i17 > i18) {
            i10 = i18 - i17;
        } else {
            i10 = measuredWidth < measuredWidth3 ? measuredWidth3 - measuredWidth : 0;
        }
        point2.x = i10;
        point2.y = iC;
        dVar.f13376l.setTranslationX(i10);
        dVar.f13376l.setTranslationY(point2.y + dVar.f13372h.f13358g);
        View view7 = dVar.f13385u;
        if (view7 != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            int[] iArr3 = new int[2];
            view7.getLocationInWindow(iArr3);
            layoutParams.leftMargin = iArr3[0];
            int[] iArr4 = new int[2];
            view7.getLocationInWindow(iArr4);
            layoutParams.topMargin = iArr4[1] - dVar.getOffset();
            dVar.f13380p.setLayoutParams(layoutParams);
            ImageView imageView = dVar.f13380p;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view7.getWidth(), view7.getHeight(), Bitmap.Config.ARGB_8888);
            view7.draw(new Canvas(bitmapCreateBitmap));
            h.i(bitmapCreateBitmap, "bitmap");
            imageView.setImageBitmap(bitmapCreateBitmap);
        }
    }

    public static void d(d dVar, View view, View view2) {
        if (view.getWindowToken() == null) {
            return;
        }
        dVar.f13384t = Float.valueOf(g7.b.b(3.25f));
        dVar.f13385u = view2;
        dVar.f13386v = view;
        dVar.f13375k.setVisibility(4);
        IBinder windowToken = view.getWindowToken();
        h.i(windowToken, "parentLayout.windowToken");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.type = 1000;
        layoutParams.token = windowToken;
        layoutParams.softInputMode = 2;
        layoutParams.setTitle("TooltipPopUpView: " + Integer.toHexString(layoutParams.hashCode()));
        dVar.f13382r.addView(dVar, layoutParams);
        dVar.A.post(new g(dVar, 7));
        dVar.A.postDelayed(new k1(dVar, 7), 100L);
    }

    private final int getOffset() {
        View rootView;
        View view = this.f13386v;
        int i10 = g7.b.i((view == null || (rootView = view.getRootView()) == null) ? null : Integer.valueOf(rootView.getHeight()));
        if (this.f13375k.getHeight() == 0) {
            return 0;
        }
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? getResources().getDimensionPixelSize(identifier) : (int) Math.ceil(((double) getContext().getResources().getDisplayMetrics().density) * 24.0d);
        if (i10 - this.f13375k.getHeight() >= dimensionPixelSize) {
            return dimensionPixelSize;
        }
        return 0;
    }

    public final void b() {
        ViewPropertyAnimator viewPropertyAnimator = this.f13387w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.f13388x;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
        }
        ViewPropertyAnimator viewPropertyAnimator3 = this.f13389y;
        if (viewPropertyAnimator3 != null) {
            viewPropertyAnimator3.cancel();
        }
        ViewPropertyAnimator viewPropertyAnimator4 = this.f13390z;
        if (viewPropertyAnimator4 != null) {
            viewPropertyAnimator4.cancel();
        }
        this.A.removeCallbacksAndMessages(null);
        try {
            this.f13382r.removeView(this);
        } catch (Throwable unused) {
        }
    }

    public final void c() {
        TooltipOverlayView tooltipOverlayView = this.f13378n;
        tooltipOverlayView.animate().alpha(0.0f).setDuration(this.f13372h.f13369r).start();
        ViewPropertyAnimator viewPropertyAnimatorAnimate = this.f13380p.animate();
        viewPropertyAnimatorAnimate.alpha(0.0f);
        viewPropertyAnimatorAnimate.setDuration(this.f13372h.f13369r);
        viewPropertyAnimatorAnimate.start();
        this.f13387w = viewPropertyAnimatorAnimate;
        ViewPropertyAnimator viewPropertyAnimatorAnimate2 = this.f13377m.animate();
        viewPropertyAnimatorAnimate2.alpha(0.0f);
        viewPropertyAnimatorAnimate2.setDuration(this.f13372h.f13369r);
        viewPropertyAnimatorAnimate2.start();
        this.f13388x = viewPropertyAnimatorAnimate2;
        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = this.f13376l.animate();
        viewPropertyAnimatorAnimate3.alpha(0.0f);
        viewPropertyAnimatorAnimate3.setDuration(this.f13372h.f13369r);
        viewPropertyAnimatorAnimate3.setListener(new a());
        viewPropertyAnimatorAnimate3.start();
        this.f13389y = viewPropertyAnimatorAnimate3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        h.j(keyEvent, "event");
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 0) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.B) {
            return true;
        }
        qd.a<o> aVar = this.f13374j;
        if (aVar != null) {
            aVar.invoke();
        }
        c();
        return true;
    }

    public final qd.a<o> getCtaAction() {
        return this.f13373i;
    }

    public final qd.a<o> getOverlayDismiss() {
        return this.f13374j;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    public final void setCtaAction(qd.a<o> aVar) {
        this.f13373i = aVar;
    }

    public final void setOverlayDismiss(qd.a<o> aVar) {
        this.f13374j = aVar;
    }
}
