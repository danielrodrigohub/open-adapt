package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.widget.NestedScrollView;
import f.n;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class AlertController {
    public TextView A;
    public TextView B;
    public View C;
    public ListAdapter D;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public boolean L;
    public c M;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public RecycleListView f738g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View f739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f740i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Button f742k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f743l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Message f744m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f745n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Button f746o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f747p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Message f748q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Drawable f749r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Button f750s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public CharSequence f751t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Message f752u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Drawable f753v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public NestedScrollView f754w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Drawable f756y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ImageView f757z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f741j = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f755x = 0;
    public int E = -1;
    public final a N = new a();

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f758h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f759i;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.f759i = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f758h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view == alertController.f742k && (message3 = alertController.f744m) != null) {
                messageObtain = Message.obtain(message3);
            } else if (view != alertController.f746o || (message2 = alertController.f748q) == null) {
                messageObtain = (view != alertController.f750s || (message = alertController.f752u) == null) ? null : Message.obtain(message);
            } else {
                messageObtain = Message.obtain(message2);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.M.obtainMessage(1, alertController2.f733b).sendToTarget();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f762b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Drawable f763c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public CharSequence f764d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f765e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f766f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public CharSequence f767g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public DialogInterface.OnClickListener f768h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public CharSequence f769i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public DialogInterface.OnClickListener f770j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public DialogInterface.OnDismissListener f772l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public DialogInterface.OnKeyListener f773m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public CharSequence[] f774n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public ListAdapter f775o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public DialogInterface.OnClickListener f776p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f777q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public View f778r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean[] f779s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f780t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f781u;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public DialogInterface.OnMultiChoiceClickListener f783w;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f782v = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f771k = true;

        public b(Context context) {
            this.f761a = context;
            this.f762b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    public static final class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<DialogInterface> f784a;

        public c(DialogInterface dialogInterface) {
            this.f784a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == -3 || i10 == -2 || i10 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f784a.get(), message.what);
            } else {
                if (i10 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    public static class d extends ArrayAdapter<CharSequence> {
        public d(Context context, int i10, CharSequence[] charSequenceArr) {
            super(context, i10, android.R.id.text1, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, n nVar, Window window) {
        this.f732a = context;
        this.f733b = nVar;
        this.f734c = window;
        this.M = new c(nVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.F = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        this.G = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.H = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.I = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AlertDialog_showTitle, true);
        this.f735d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        nVar.d().r(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void c(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public final void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public final ViewGroup d(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void e(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.M.obtainMessage(i10, onClickListener) : null;
        if (i10 == -3) {
            this.f751t = charSequence;
            this.f752u = messageObtainMessage;
            this.f753v = null;
        } else if (i10 == -2) {
            this.f747p = charSequence;
            this.f748q = messageObtainMessage;
            this.f749r = null;
        } else {
            if (i10 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f743l = charSequence;
            this.f744m = messageObtainMessage;
            this.f745n = null;
        }
    }
}
