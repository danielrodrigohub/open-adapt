package r5;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import com.google.android.material.R;
import g6.n;
import j6.c;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: BadgeState.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f14626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f14627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f14628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f14629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f14630e;

    public b(Context context) {
        AttributeSet attributeSetAsAttributeSet;
        int styleAttribute;
        int next;
        int i10 = r5.a.f14612v;
        int i11 = r5.a.f14611u;
        this.f14627b = new a();
        a aVar = new a();
        int i12 = aVar.f14631h;
        if (i12 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i12);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <badge> start tag");
                }
                attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
            } catch (IOException | XmlPullParserException e10) {
                StringBuilder sbC = a0.b.c("Can't load badge resource ID #0x");
                sbC.append(Integer.toHexString(i12));
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sbC.toString());
                notFoundException.initCause(e10);
                throw notFoundException;
            }
        } else {
            attributeSetAsAttributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayD = n.d(context, attributeSetAsAttributeSet, R.styleable.Badge, i10, styleAttribute == 0 ? i11 : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.f14628c = typedArrayD.getDimensionPixelSize(R.styleable.Badge_badgeRadius, resources.getDimensionPixelSize(R.dimen.mtrl_badge_radius));
        this.f14630e = typedArrayD.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        this.f14629d = typedArrayD.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, resources.getDimensionPixelSize(R.dimen.mtrl_badge_with_text_radius));
        a aVar2 = this.f14627b;
        int i13 = aVar.f14634k;
        aVar2.f14634k = i13 == -2 ? 255 : i13;
        CharSequence charSequence = aVar.f14638o;
        aVar2.f14638o = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        a aVar3 = this.f14627b;
        int i14 = aVar.f14639p;
        aVar3.f14639p = i14 == 0 ? R.plurals.mtrl_badge_content_description : i14;
        int i15 = aVar.f14640q;
        aVar3.f14640q = i15 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i15;
        Boolean bool = aVar.f14642s;
        aVar3.f14642s = Boolean.valueOf(bool == null || bool.booleanValue());
        a aVar4 = this.f14627b;
        int i16 = aVar.f14636m;
        aVar4.f14636m = i16 == -2 ? typedArrayD.getInt(R.styleable.Badge_maxCharacterCount, 4) : i16;
        int i17 = aVar.f14635l;
        if (i17 != -2) {
            this.f14627b.f14635l = i17;
        } else {
            int i18 = R.styleable.Badge_number;
            if (typedArrayD.hasValue(i18)) {
                this.f14627b.f14635l = typedArrayD.getInt(i18, 0);
            } else {
                this.f14627b.f14635l = -1;
            }
        }
        a aVar5 = this.f14627b;
        Integer num = aVar.f14632i;
        aVar5.f14632i = Integer.valueOf(num == null ? c.a(context, typedArrayD, R.styleable.Badge_backgroundColor).getDefaultColor() : num.intValue());
        Integer num2 = aVar.f14633j;
        if (num2 != null) {
            this.f14627b.f14633j = num2;
        } else {
            int i19 = R.styleable.Badge_badgeTextColor;
            if (typedArrayD.hasValue(i19)) {
                this.f14627b.f14633j = Integer.valueOf(c.a(context, typedArrayD, i19).getDefaultColor());
            } else {
                int i20 = R.style.TextAppearance_MaterialComponents_Badge;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i20, R.styleable.TextAppearance);
                typedArrayObtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f);
                ColorStateList colorStateListA = c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColor);
                c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
                c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
                typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
                typedArrayObtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
                int i21 = R.styleable.TextAppearance_fontFamily;
                i21 = typedArrayObtainStyledAttributes.hasValue(i21) ? i21 : R.styleable.TextAppearance_android_fontFamily;
                typedArrayObtainStyledAttributes.getResourceId(i21, 0);
                typedArrayObtainStyledAttributes.getString(i21);
                typedArrayObtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
                c.a(context, typedArrayObtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
                typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
                typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
                typedArrayObtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
                typedArrayObtainStyledAttributes.recycle();
                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i20, R.styleable.MaterialTextAppearance);
                int i22 = R.styleable.MaterialTextAppearance_android_letterSpacing;
                typedArrayObtainStyledAttributes2.hasValue(i22);
                typedArrayObtainStyledAttributes2.getFloat(i22, 0.0f);
                typedArrayObtainStyledAttributes2.recycle();
                this.f14627b.f14633j = Integer.valueOf(colorStateListA.getDefaultColor());
            }
        }
        a aVar6 = this.f14627b;
        Integer num3 = aVar.f14641r;
        aVar6.f14641r = Integer.valueOf(num3 == null ? typedArrayD.getInt(R.styleable.Badge_badgeGravity, 8388661) : num3.intValue());
        a aVar7 = this.f14627b;
        Integer num4 = aVar.f14643t;
        aVar7.f14643t = Integer.valueOf(num4 == null ? typedArrayD.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0) : num4.intValue());
        this.f14627b.f14644u = Integer.valueOf(aVar.f14643t == null ? typedArrayD.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0) : aVar.f14644u.intValue());
        a aVar8 = this.f14627b;
        Integer num5 = aVar.f14645v;
        aVar8.f14645v = Integer.valueOf(num5 == null ? typedArrayD.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, aVar8.f14643t.intValue()) : num5.intValue());
        a aVar9 = this.f14627b;
        Integer num6 = aVar.f14646w;
        aVar9.f14646w = Integer.valueOf(num6 == null ? typedArrayD.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, aVar9.f14644u.intValue()) : num6.intValue());
        a aVar10 = this.f14627b;
        Integer num7 = aVar.f14647x;
        aVar10.f14647x = Integer.valueOf(num7 == null ? 0 : num7.intValue());
        a aVar11 = this.f14627b;
        Integer num8 = aVar.f14648y;
        aVar11.f14648y = Integer.valueOf(num8 != null ? num8.intValue() : 0);
        typedArrayD.recycle();
        Locale locale = aVar.f14637n;
        if (locale == null) {
            this.f14627b.f14637n = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            this.f14627b.f14637n = locale;
        }
        this.f14626a = aVar;
    }

    /* JADX INFO: compiled from: BadgeState.java */
    public static final class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0250a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14631h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Integer f14632i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Integer f14633j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14634k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f14635l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f14636m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Locale f14637n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public CharSequence f14638o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f14639p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f14640q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public Integer f14641r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public Boolean f14642s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public Integer f14643t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public Integer f14644u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public Integer f14645v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public Integer f14646w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public Integer f14647x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public Integer f14648y;

        /* JADX INFO: renamed from: r5.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: BadgeState.java */
        public class C0250a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a() {
            this.f14634k = 255;
            this.f14635l = -2;
            this.f14636m = -2;
            this.f14642s = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f14631h);
            parcel.writeSerializable(this.f14632i);
            parcel.writeSerializable(this.f14633j);
            parcel.writeInt(this.f14634k);
            parcel.writeInt(this.f14635l);
            parcel.writeInt(this.f14636m);
            CharSequence charSequence = this.f14638o;
            parcel.writeString(charSequence == null ? null : charSequence.toString());
            parcel.writeInt(this.f14639p);
            parcel.writeSerializable(this.f14641r);
            parcel.writeSerializable(this.f14643t);
            parcel.writeSerializable(this.f14644u);
            parcel.writeSerializable(this.f14645v);
            parcel.writeSerializable(this.f14646w);
            parcel.writeSerializable(this.f14647x);
            parcel.writeSerializable(this.f14648y);
            parcel.writeSerializable(this.f14642s);
            parcel.writeSerializable(this.f14637n);
        }

        public a(Parcel parcel) {
            this.f14634k = 255;
            this.f14635l = -2;
            this.f14636m = -2;
            this.f14642s = Boolean.TRUE;
            this.f14631h = parcel.readInt();
            this.f14632i = (Integer) parcel.readSerializable();
            this.f14633j = (Integer) parcel.readSerializable();
            this.f14634k = parcel.readInt();
            this.f14635l = parcel.readInt();
            this.f14636m = parcel.readInt();
            this.f14638o = parcel.readString();
            this.f14639p = parcel.readInt();
            this.f14641r = (Integer) parcel.readSerializable();
            this.f14643t = (Integer) parcel.readSerializable();
            this.f14644u = (Integer) parcel.readSerializable();
            this.f14645v = (Integer) parcel.readSerializable();
            this.f14646w = (Integer) parcel.readSerializable();
            this.f14647x = (Integer) parcel.readSerializable();
            this.f14648y = (Integer) parcel.readSerializable();
            this.f14642s = (Boolean) parcel.readSerializable();
            this.f14637n = (Locale) parcel.readSerializable();
        }
    }
}
