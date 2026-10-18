package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.f1;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements j.a, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public g f809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RadioButton f811j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f812k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CheckBox f813l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f814m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f815n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView f816o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LinearLayout f817p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f818q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f819r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Context f820s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f821t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Drawable f822u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f823v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public LayoutInflater f824w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f825x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i10 = R.attr.listMenuViewStyle;
        f1 f1VarQ = f1.q(getContext(), attributeSet, R.styleable.MenuView, i10);
        this.f818q = f1VarQ.g(R.styleable.MenuView_android_itemBackground);
        this.f819r = f1VarQ.l(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f821t = f1VarQ.a(R.styleable.MenuView_preserveIconSpacing, false);
        this.f820s = context;
        this.f822u = f1VarQ.g(R.styleable.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f823v = typedArrayObtainStyledAttributes.hasValue(0);
        f1VarQ.r();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f824w == null) {
            this.f824w = LayoutInflater.from(getContext());
        }
        return this.f824w;
    }

    private void setSubMenuArrowVisible(boolean z10) {
        ImageView imageView = this.f815n;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    public final void a() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f813l = checkBox;
        LinearLayout linearLayout = this.f817p;
        if (linearLayout != null) {
            linearLayout.addView(checkBox, -1);
        } else {
            addView(checkBox, -1);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f816o;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f816o.getLayoutParams();
        rect.top = this.f816o.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    public final void b() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f811j = radioButton;
        LinearLayout linearLayout = this.f817p;
        if (linearLayout != null) {
            linearLayout.addView(radioButton, -1);
        } else {
            addView(radioButton, -1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    @Override // androidx.appcompat.view.menu.j.a
    public final void d(g gVar) {
        int i10;
        String string;
        this.f809h = gVar;
        setVisibility(gVar.isVisible() ? 0 : 8);
        setTitle(gVar.f909e);
        setCheckable(gVar.isCheckable());
        boolean z10 = gVar.f918n.p() && gVar.e() != 0;
        gVar.e();
        if (z10) {
            g gVar2 = this.f809h;
            i10 = gVar2.f918n.p() && gVar2.e() != 0 ? 0 : 8;
        }
        if (i10 == 0) {
            TextView textView = this.f814m;
            g gVar3 = this.f809h;
            char cE = gVar3.e();
            if (cE == 0) {
                string = "";
            } else {
                Resources resources = gVar3.f918n.f878a.getResources();
                StringBuilder sb2 = new StringBuilder();
                if (ViewConfiguration.get(gVar3.f918n.f878a).hasPermanentMenuKey()) {
                    sb2.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i11 = gVar3.f918n.o() ? gVar3.f915k : gVar3.f913i;
                g.c(sb2, i11, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                g.c(sb2, i11, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                g.c(sb2, i11, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                g.c(sb2, i11, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                g.c(sb2, i11, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                g.c(sb2, i11, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                if (cE == '\b') {
                    sb2.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (cE == '\n') {
                    sb2.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (cE != ' ') {
                    sb2.append(cE);
                } else {
                    sb2.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                string = sb2.toString();
            }
            textView.setText(string);
        }
        if (this.f814m.getVisibility() != i10) {
            this.f814m.setVisibility(i10);
        }
        setIcon(gVar.getIcon());
        setEnabled(gVar.isEnabled());
        setSubMenuArrowVisible(gVar.hasSubMenu());
        setContentDescription(gVar.f921q);
    }

    @Override // androidx.appcompat.view.menu.j.a
    public g getItemData() {
        return this.f809h;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Drawable drawable = this.f818q;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.q(this, drawable);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f812k = textView;
        int i10 = this.f819r;
        if (i10 != -1) {
            textView.setTextAppearance(this.f820s, i10);
        }
        this.f814m = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f815n = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f822u);
        }
        this.f816o = (ImageView) findViewById(R.id.group_divider);
        this.f817p = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        if (this.f810i != null && this.f821t) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f810i.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    public void setCheckable(boolean z10) {
        CompoundButton compoundButton;
        View view;
        if (!z10 && this.f811j == null && this.f813l == null) {
            return;
        }
        if (this.f809h.h()) {
            if (this.f811j == null) {
                b();
            }
            compoundButton = this.f811j;
            view = this.f813l;
        } else {
            if (this.f813l == null) {
                a();
            }
            compoundButton = this.f813l;
            view = this.f811j;
        }
        if (z10) {
            compoundButton.setChecked(this.f809h.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f813l;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f811j;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z10) {
        CompoundButton compoundButton;
        if (this.f809h.h()) {
            if (this.f811j == null) {
                b();
            }
            compoundButton = this.f811j;
        } else {
            if (this.f813l == null) {
                a();
            }
            compoundButton = this.f813l;
        }
        compoundButton.setChecked(z10);
    }

    public void setForceShowIcon(boolean z10) {
        this.f825x = z10;
        this.f821t = z10;
    }

    public void setGroupDividerEnabled(boolean z10) {
        ImageView imageView = this.f816o;
        if (imageView != null) {
            imageView.setVisibility((this.f823v || !z10) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        Objects.requireNonNull(this.f809h.f918n);
        boolean z10 = this.f825x;
        if (z10 || this.f821t) {
            ImageView imageView = this.f810i;
            if (imageView == null && drawable == null && !this.f821t) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f810i = imageView2;
                LinearLayout linearLayout = this.f817p;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f821t) {
                this.f810i.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f810i;
            if (!z10) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f810i.getVisibility() != 0) {
                this.f810i.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f812k.getVisibility() != 8) {
                this.f812k.setVisibility(8);
            }
        } else {
            this.f812k.setText(charSequence);
            if (this.f812k.getVisibility() != 0) {
                this.f812k.setVisibility(0);
            }
        }
    }
}
