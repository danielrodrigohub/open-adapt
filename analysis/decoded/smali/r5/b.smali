.class public final Lr5/b;
.super Ljava/lang/Object;
.source "BadgeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/b$a;
    }
.end annotation


# instance fields
.field public final a:Lr5/b$a;

.field public final b:Lr5/b$a;

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    sget v3, Lr5/a;->v:I

    sget v0, Lr5/a;->u:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lr5/b$a;

    invoke-direct {v1}, Lr5/b$a;-><init>()V

    iput-object v1, p0, Lr5/b;->b:Lr5/b$a;

    .line 3
    new-instance v6, Lr5/b$a;

    invoke-direct {v6}, Lr5/b$a;-><init>()V

    .line 4
    iget v1, v6, Lr5/b$a;->h:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    const-string v2, "badge"

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 6
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v9, 0x2

    if-eq v5, v9, :cond_1

    if-ne v5, v7, :cond_0

    :cond_1
    if-ne v5, v9, :cond_3

    .line 7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    goto :goto_1

    .line 10
    :cond_2
    :try_start_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Must have a <badge> start tag"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Can\'t load badge resource ID #0x"

    .line 13
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw v0

    :cond_4
    const/4 v1, 0x0

    move v2, v8

    :goto_1
    if-nez v2, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v2

    .line 17
    :goto_2
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    new-array v5, v8, [I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg6/n;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 19
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeRadius:I

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lr5/b;->c:F

    .line 22
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWidePadding:I

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 23
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lr5/b;->e:F

    .line 25
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextRadius:I

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    .line 26
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lr5/b;->d:F

    .line 28
    iget-object v1, p0, Lr5/b;->b:Lr5/b$a;

    .line 29
    iget v2, v6, Lr5/b$a;->k:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_6

    const/16 v2, 0xff

    .line 30
    :cond_6
    iput v2, v1, Lr5/b$a;->k:I

    .line 31
    iget-object v2, v6, Lr5/b$a;->o:Ljava/lang/CharSequence;

    if-nez v2, :cond_7

    .line 32
    sget v2, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_7
    iput-object v2, v1, Lr5/b$a;->o:Ljava/lang/CharSequence;

    .line 34
    iget-object v1, p0, Lr5/b;->b:Lr5/b$a;

    .line 35
    iget v2, v6, Lr5/b$a;->p:I

    if-nez v2, :cond_8

    .line 36
    sget v2, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    .line 37
    :cond_8
    iput v2, v1, Lr5/b$a;->p:I

    .line 38
    iget v2, v6, Lr5/b$a;->q:I

    if-nez v2, :cond_9

    .line 39
    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    .line 40
    :cond_9
    iput v2, v1, Lr5/b$a;->q:I

    .line 41
    iget-object v2, v6, Lr5/b$a;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 42
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move v2, v8

    goto :goto_4

    :cond_b
    :goto_3
    move v2, v7

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 43
    iput-object v2, v1, Lr5/b$a;->s:Ljava/lang/Boolean;

    .line 44
    iget-object v1, p0, Lr5/b;->b:Lr5/b$a;

    .line 45
    iget v2, v6, Lr5/b$a;->m:I

    if-ne v2, v3, :cond_c

    .line 46
    sget v2, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 47
    :cond_c
    iput v2, v1, Lr5/b$a;->m:I

    .line 48
    iget v1, v6, Lr5/b$a;->l:I

    if-eq v1, v3, :cond_d

    .line 49
    iget-object v2, p0, Lr5/b;->b:Lr5/b$a;

    .line 50
    iput v1, v2, Lr5/b$a;->l:I

    goto :goto_5

    .line 51
    :cond_d
    sget v1, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 52
    iget-object v2, p0, Lr5/b;->b:Lr5/b$a;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 53
    iput v1, v2, Lr5/b$a;->l:I

    goto :goto_5

    .line 54
    :cond_e
    iget-object v1, p0, Lr5/b;->b:Lr5/b$a;

    const/4 v2, -0x1

    .line 55
    iput v2, v1, Lr5/b$a;->l:I

    .line 56
    :goto_5
    iget-object v1, p0, Lr5/b;->b:Lr5/b$a;

    .line 57
    iget-object v2, v6, Lr5/b$a;->i:Ljava/lang/Integer;

    if-nez v2, :cond_f

    .line 58
    sget v2, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    .line 59
    invoke-static {p1, v0, v2}, Lj6/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_6

    .line 60
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 61
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 62
    iput-object v2, v1, Lr5/b$a;->i:Ljava/lang/Integer;

    .line 63
    iget-object v1, v6, Lr5/b$a;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 64
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 65
    iput-object v1, p1, Lr5/b$a;->j:Ljava/lang/Integer;

    goto/16 :goto_8

    .line 66
    :cond_10
    sget v1, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 67
    iget-object v2, p0, Lr5/b;->b:Lr5/b$a;

    .line 68
    invoke-static {p1, v0, v1}, Lj6/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 70
    iput-object p1, v2, Lr5/b$a;->j:Ljava/lang/Integer;

    goto :goto_8

    .line 71
    :cond_11
    sget v1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    .line 72
    sget-object v2, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 73
    sget v3, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 74
    sget v3, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    .line 75
    invoke-static {p1, v2, v3}, Lj6/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 76
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    .line 77
    invoke-static {p1, v2, v5}, Lj6/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 78
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    .line 79
    invoke-static {p1, v2, v5}, Lj6/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 80
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v2, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 81
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 82
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    sget v7, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    .line 83
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_7

    :cond_12
    move v5, v7

    .line 84
    :goto_7
    invoke-virtual {v2, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 85
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 86
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v2, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 87
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    .line 88
    invoke-static {p1, v2, v5}, Lj6/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 89
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 90
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 91
    sget v5, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 92
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 95
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    iput-object v1, p1, Lr5/b$a;->j:Ljava/lang/Integer;

    .line 99
    :goto_8
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 100
    iget-object v1, v6, Lr5/b$a;->r:Ljava/lang/Integer;

    if-nez v1, :cond_13

    .line 101
    sget v1, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    const v2, 0x800035

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    goto :goto_9

    .line 102
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    iput-object v1, p1, Lr5/b$a;->r:Ljava/lang/Integer;

    .line 105
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 106
    iget-object v1, v6, Lr5/b$a;->t:Ljava/lang/Integer;

    if-nez v1, :cond_14

    .line 107
    sget v1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_a

    .line 108
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 110
    iput-object v1, p1, Lr5/b$a;->t:Ljava/lang/Integer;

    .line 111
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 112
    iget-object v1, v6, Lr5/b$a;->t:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 113
    sget v1, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_b

    .line 114
    :cond_15
    iget-object v1, v6, Lr5/b$a;->u:Ljava/lang/Integer;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 117
    iput-object v1, p1, Lr5/b$a;->u:Ljava/lang/Integer;

    .line 118
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 119
    iget-object v1, v6, Lr5/b$a;->v:Ljava/lang/Integer;

    if-nez v1, :cond_16

    .line 120
    sget v1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffsetWithText:I

    .line 121
    iget-object v2, p1, Lr5/b$a;->t:Ljava/lang/Integer;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_c

    .line 124
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 125
    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    iput-object v1, p1, Lr5/b$a;->v:Ljava/lang/Integer;

    .line 127
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 128
    iget-object v1, v6, Lr5/b$a;->w:Ljava/lang/Integer;

    if-nez v1, :cond_17

    .line 129
    sget v1, Lcom/google/android/material/R$styleable;->Badge_verticalOffsetWithText:I

    .line 130
    iget-object v2, p1, Lr5/b$a;->u:Ljava/lang/Integer;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_d

    .line 133
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 134
    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    iput-object v1, p1, Lr5/b$a;->w:Ljava/lang/Integer;

    .line 136
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 137
    iget-object v1, v6, Lr5/b$a;->x:Ljava/lang/Integer;

    if-nez v1, :cond_18

    move v1, v8

    goto :goto_e

    .line 138
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    iput-object v1, p1, Lr5/b$a;->x:Ljava/lang/Integer;

    .line 140
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 141
    iget-object v1, v6, Lr5/b$a;->y:Ljava/lang/Integer;

    if-nez v1, :cond_19

    goto :goto_f

    .line 142
    :cond_19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 143
    iput-object v1, p1, Lr5/b$a;->y:Ljava/lang/Integer;

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    iget-object p1, v6, Lr5/b$a;->n:Ljava/util/Locale;

    if-nez p1, :cond_1a

    .line 146
    iget-object p1, p0, Lr5/b;->b:Lr5/b$a;

    .line 147
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 148
    iput-object v0, p1, Lr5/b$a;->n:Ljava/util/Locale;

    goto :goto_10

    .line 149
    :cond_1a
    iget-object v0, p0, Lr5/b;->b:Lr5/b$a;

    .line 150
    iput-object p1, v0, Lr5/b$a;->n:Ljava/util/Locale;

    .line 151
    :goto_10
    iput-object v6, p0, Lr5/b;->a:Lr5/b$a;

    return-void
.end method
