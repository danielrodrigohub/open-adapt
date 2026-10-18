package com.nike.adapt.ui.helper;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.newrelic.agent.android.payload.PayloadController;
import com.nike.adapt.R;
import g7.b;
import o8.e;
import p4.h;
import q7.p1;
import x8.i1;
import x8.j0;
import y0.x;

/* JADX INFO: compiled from: NotificationToast.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NotificationToast extends FrameLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f5755k = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p1 f5756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x f5757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f5758j;

    /* JADX INFO: compiled from: NotificationToast.kt */
    public static final class a implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f5760b;

        public a(boolean z10) {
            this.f5760b = z10;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            h.j(animator, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            h.j(animator, "animation");
            NotificationToast notificationToast = NotificationToast.this;
            notificationToast.setVisibility(!this.f5760b ? 8 : notificationToast.getVisibility());
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            h.j(animator, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            h.j(animator, "animation");
            NotificationToast notificationToast = NotificationToast.this;
            notificationToast.setVisibility(this.f5760b ? 0 : notificationToast.getVisibility());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationToast(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        h.j(context, "context");
        int i10 = 0;
        this.f5757i = new x(this, 6);
        LayoutInflater.from(context).inflate(R.layout.notification_toast, this);
        int i11 = R.id.notification_toast_card_view;
        CardView cardView = (CardView) b.d(this, R.id.notification_toast_card_view);
        if (cardView != null) {
            i11 = R.id.notification_toast_close;
            ImageButton imageButton = (ImageButton) b.d(this, R.id.notification_toast_close);
            if (imageButton != null) {
                i11 = R.id.notification_toast_description;
                TextView textView = (TextView) b.d(this, R.id.notification_toast_description);
                if (textView != null) {
                    i11 = R.id.notification_toast_image;
                    ImageView imageView = (ImageView) b.d(this, R.id.notification_toast_image);
                    if (imageView != null) {
                        i11 = R.id.notification_toast_parent;
                        if (((FrameLayout) b.d(this, R.id.notification_toast_parent)) != null) {
                            i11 = R.id.notification_toast_title;
                            TextView textView2 = (TextView) b.d(this, R.id.notification_toast_title);
                            if (textView2 != null) {
                                this.f5756h = new p1(this, cardView, imageButton, textView, imageView, textView2);
                                setVisibility(8);
                                setAlpha(0.0f);
                                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NotificationToast, 0, 0);
                                h.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr….NotificationToast, 0, 0)");
                                try {
                                    this.f5758j = typedArrayObtainStyledAttributes.getBoolean(2, true);
                                    String string = typedArrayObtainStyledAttributes.getString(3);
                                    String string2 = typedArrayObtainStyledAttributes.getString(0);
                                    setTitleText(string);
                                    textView.setText(string2);
                                    if (typedArrayObtainStyledAttributes.getBoolean(4, true)) {
                                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, R.drawable.ic_shoe_adapt);
                                        Object obj = y.a.f18143a;
                                        imageView.setImageDrawable(y.a.b.b(context, resourceId));
                                        imageButton.setOnClickListener(new j0(this, i10));
                                    }
                                    return;
                                } finally {
                                    typedArrayObtainStyledAttributes.recycle();
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i11)));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    private final void setTitleText(String str) {
        boolean z10;
        this.f5756h.f13970c.setText(str);
        int iB = 0;
        if (str != null) {
            z10 = str.length() == 0 ? false : true;
        }
        if (!z10) {
            Context context = getContext();
            h.i(context, "context");
            iB = i1.b(context, 24);
        }
        ViewGroup.LayoutParams layoutParams = this.f5756h.f13969b.getLayoutParams();
        h.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.a aVar = (ConstraintLayout.a) layoutParams;
        aVar.setMargins(((ViewGroup.MarginLayoutParams) aVar).leftMargin, iB, ((ViewGroup.MarginLayoutParams) aVar).rightMargin, ((ViewGroup.MarginLayoutParams) aVar).bottomMargin);
        this.f5756h.f13969b.setLayoutParams(aVar);
    }

    public final void a() {
        b(true);
        CharSequence text = this.f5756h.f13970c.getText();
        h.i(text, "binding.notificationToastTitle.text");
        if (text.length() > 0) {
            announceForAccessibility(this.f5756h.f13970c.getText());
        }
        CharSequence text2 = this.f5756h.f13969b.getText();
        h.i(text2, "binding.notificationToastDescription.text");
        if (text2.length() > 0) {
            announceForAccessibility(this.f5756h.f13969b.getText());
        }
        if (this.f5758j) {
            getHandler().removeCallbacks(this.f5757i);
            getHandler().postDelayed(this.f5757i, PayloadController.PAYLOAD_COLLECTOR_TIMEOUT);
        }
    }

    public final void b(boolean z10) {
        if (getVisibility() == 0 && z10) {
            return;
        }
        setScaleX(z10 ? 0.9f : getScaleX());
        setScaleY(z10 ? 0.9f : getScaleY());
        animate().alpha(z10 ? 1.0f : 0.0f).setDuration(z10 ? 250L : 125L).scaleX(z10 ? 1.0f : 0.9f).scaleY(z10 ? 1.0f : 0.9f).setInterpolator(new AccelerateDecelerateInterpolator()).setListener(new a(z10)).start();
    }

    public final NotificationToast c(int i10) {
        this.f5756h.f13969b.setText(o.r(i10));
        return this;
    }

    public final NotificationToast d(qd.a<fd.o> aVar) {
        h.j(aVar, "onClick");
        this.f5756h.f13968a.setOnClickListener(new e(aVar, 1));
        return this;
    }

    public final NotificationToast e(int i10) {
        setTitleText(o.r(i10));
        return this;
    }
}
