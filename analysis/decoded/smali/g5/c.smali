.class public final Lg5/c;
.super Lz4/f;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/c$c;,
        Lg5/c$a;,
        Lg5/c$b;
    }
.end annotation


# static fields
.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Lg5/c$b;

.field public static final v:Lg5/c$a;


# instance fields
.field public final m:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->n:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->o:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->p:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->q:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->r:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->s:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/c;->t:Ljava/util/regex/Pattern;

    .line 8
    new-instance v0, Lg5/c$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lg5/c$b;-><init>(FII)V

    sput-object v0, Lg5/c;->u:Lg5/c$b;

    .line 9
    new-instance v0, Lg5/c$a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lg5/c$a;-><init>(I)V

    sput-object v0, Lg5/c;->v:Lg5/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lz4/f;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lg5/c;->m:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static l(Lg5/f;)Lg5/f;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lg5/f;

    invoke-direct {p0}, Lg5/f;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Lorg/xmlpull/v1/XmlPullParser;Lg5/c$a;)Lg5/c$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lg5/c;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_1

    .line 4
    invoke-static {v2, p0, v3}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 11
    new-instance v1, Lg5/c$a;

    invoke-direct {v1, v0}, Lg5/c$a;-><init>(I)V

    return-object v1

    .line 12
    :cond_2
    new-instance v4, Lz4/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cell resolution "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-static {v2, p0, v3}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static p(Ljava/lang/String;Lg5/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    .line 1
    sget v0, Lm5/g0;->a:I

    const-string v0, "\\s+"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v0, Lg5/c;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, v0

    if-ne v1, v3, :cond_5

    .line 6
    sget-object v1, Lg5/c;->p:Ljava/util/regex/Pattern;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 7
    invoke-static {v1, v4}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 12
    new-instance p0, Lz4/i;

    const-string p1, "Invalid unit for fontSize: \'"

    .line 13
    invoke-static {p1, v1, v4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :pswitch_0
    iput v2, p1, Lg5/f;->j:I

    goto :goto_2

    .line 16
    :pswitch_1
    iput v3, p1, Lg5/f;->j:I

    goto :goto_2

    .line 17
    :pswitch_2
    iput p0, p1, Lg5/f;->j:I

    .line 18
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 21
    iput p0, p1, Lg5/f;->k:F

    return-void

    .line 22
    :cond_4
    new-instance p1, Lz4/i;

    const-string v0, "Invalid expression for fontSize: \'"

    .line 23
    invoke-static {v0, p0, v4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-direct {p1, p0}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_5
    new-instance p0, Lz4/i;

    const-string p1, "Invalid number of entries for fontSize: "

    .line 26
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 27
    array-length v0, v0

    const-string v1, "."

    .line 28
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(Lorg/xmlpull/v1/XmlPullParser;)Lg5/c$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 3
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    sget v2, Lm5/g0;->a:I

    const/4 v2, -0x1

    const-string v4, " "

    .line 5
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 7
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 8
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Lz4/i;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p0, v0}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    :goto_1
    sget-object v3, Lg5/c;->u:Lg5/c$b;

    iget v4, v3, Lg5/c$b;->b:I

    const-string v5, "subFrameRate"

    .line 11
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 13
    :cond_3
    iget v3, v3, Lg5/c$b;->c:I

    const-string v5, "tickRate"

    .line 14
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 16
    :cond_4
    new-instance p0, Lg5/c$b;

    int-to-float v0, v1

    mul-float/2addr v0, v2

    invoke-direct {p0, v0, v4, v3}, Lg5/c$b;-><init>(FII)V

    return-object p0
.end method

.method public static r(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lg5/c$a;Lg5/c$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/f;",
            ">;",
            "Lg5/c$a;",
            "Lg5/c$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "style"

    .line 2
    invoke-static {v0, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3
    invoke-static {v0, v3}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lg5/f;

    invoke-direct {v4}, Lg5/f;-><init>()V

    invoke-static {v0, v4}, Lg5/c;->t(Lorg/xmlpull/v1/XmlPullParser;Lg5/f;)Lg5/f;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v3}, Lg5/c;->u(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 6
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg5/f;

    invoke-virtual {v4, v7}, Lg5/f;->a(Lg5/f;)Lg5/f;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, v4, Lg5/f;->l:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v5, p4

    goto/16 :goto_b

    :cond_3
    const-string v3, "region"

    .line 9
    invoke-static {v0, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "id"

    if-eqz v3, :cond_14

    .line 10
    invoke-static {v0, v4}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string v3, "origin"

    .line 11
    invoke-static {v0, v3}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TtmlDecoder"

    if-eqz v3, :cond_13

    .line 12
    sget-object v5, Lg5/c;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 13
    sget-object v8, Lg5/c;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 14
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed origin: "

    const-string v12, "Ignoring region with missing tts:extent: "

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v10, :cond_5

    .line 15
    :try_start_0
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v13

    .line 18
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v7, v13

    goto :goto_1

    .line 21
    :catch_0
    invoke-static {v11, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 22
    :cond_5
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_12

    if-nez v2, :cond_6

    .line 23
    invoke-static {v12, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 24
    :cond_6
    :try_start_1
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 27
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v7, v7

    .line 30
    iget v10, v2, Lg5/c$c;->a:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    int-to-float v9, v9

    .line 31
    iget v10, v2, Lg5/c$c;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v10, v10

    div-float/2addr v9, v10

    move/from16 v17, v9

    move v9, v7

    move/from16 v7, v17

    :goto_1
    const-string v10, "extent"

    .line 32
    invoke-static {v0, v10}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 33
    invoke-virtual {v5, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 34
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 35
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed extent: "

    if-eqz v10, :cond_7

    .line 36
    :try_start_2
    invoke-virtual {v5, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v13

    .line 39
    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    div-float/2addr v3, v13

    move v12, v3

    move v11, v8

    goto :goto_2

    .line 42
    :catch_1
    invoke-static {v11, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 43
    :cond_7
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v2, :cond_8

    .line 44
    invoke-static {v12, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 45
    :cond_8
    :try_start_3
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 48
    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v5, v5

    .line 51
    iget v10, v2, Lg5/c$c;->a:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    int-to-float v8, v8

    .line 52
    iget v3, v2, Lg5/c$c;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v3, v3

    div-float/2addr v8, v3

    move v11, v5

    move v12, v8

    :goto_2
    const-string v3, "displayAlign"

    .line 53
    invoke-static {v0, v3}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 54
    invoke-static {v3}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "after"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    add-float/2addr v7, v12

    move v8, v7

    move v10, v14

    goto :goto_4

    :cond_a
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    add-float/2addr v3, v7

    move v8, v3

    move v10, v15

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v3, 0x0

    move v10, v3

    move v8, v7

    :goto_4
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v4, p2

    .line 55
    iget v5, v4, Lg5/c$a;->a:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, -0x80000000

    const-string v7, "writingMode"

    .line 56
    invoke-static {v0, v7}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 57
    invoke-static {v7}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v13, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v15, "tbrl"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    const/4 v13, 0x2

    goto :goto_5

    :sswitch_1
    const-string v15, "tblr"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    const/4 v13, 0x1

    goto :goto_5

    :sswitch_2
    const-string v15, "tb"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_5

    :cond_e
    const/4 v13, 0x0

    :goto_5
    packed-switch v13, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/4 v5, 0x1

    goto :goto_6

    :pswitch_1
    move v15, v14

    goto :goto_7

    :cond_f
    :goto_6
    move v15, v5

    .line 58
    :goto_7
    new-instance v16, Lg5/e;

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, v16

    move v7, v9

    move v9, v13

    move v13, v14

    move v14, v3

    invoke-direct/range {v5 .. v15}, Lg5/e;-><init>(Ljava/lang/String;FFIIFFIFI)V

    goto :goto_9

    .line 59
    :catch_2
    invoke-static {v11, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    const-string v5, "Ignoring region with unsupported extent: "

    .line 60
    invoke-static {v5, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const-string v3, "Ignoring region without an extent"

    .line 61
    invoke-static {v4, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 62
    :catch_3
    invoke-static {v11, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const-string v5, "Ignoring region with unsupported origin: "

    .line 63
    invoke-static {v5, v3, v4}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    const-string v3, "Ignoring region without an origin"

    .line 64
    invoke-static {v4, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/16 v16, 0x0

    :goto_9
    move-object/from16 v3, v16

    if-eqz v3, :cond_2

    .line 65
    iget-object v4, v3, Lg5/e;->a:Ljava/lang/String;

    move-object/from16 v5, p4

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    move-object/from16 v5, p4

    const-string v3, "metadata"

    .line 66
    invoke-static {v0, v3}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 67
    :cond_15
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "image"

    .line 68
    invoke-static {v0, v6}, Lm5/h0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 69
    invoke-static {v0, v4}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 70
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p5

    .line 71
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_16
    move-object/from16 v8, p5

    .line 72
    :goto_a
    invoke-static {v0, v3}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_c

    :cond_17
    :goto_b
    move-object/from16 v8, p5

    :goto_c
    const-string v3, "head"

    .line 73
    invoke-static {v0, v3}, Lm5/h0;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static s(Lorg/xmlpull/v1/XmlPullParser;Lg5/d;Ljava/util/Map;Lg5/c$b;)Lg5/d;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lg5/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg5/e;",
            ">;",
            "Lg5/c$b;",
            ")",
            "Lg5/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p3

    .line 1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3}, Lg5/c;->t(Lorg/xmlpull/v1/XmlPullParser;Lg5/f;)Lg5/f;

    move-result-object v7

    const-string v8, ""

    move-object v10, v3

    move-object v9, v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v10

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_e

    .line 3
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v0, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "backgroundImage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1
    const-string v6, "style"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v6, "begin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_3
    const-string v6, "end"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_4
    const-string v6, "dur"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v0

    goto :goto_2

    :sswitch_5
    const-string v6, "region"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_c

    if-eq v4, v0, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9

    const/4 v6, 0x3

    if-eq v4, v6, :cond_8

    const/4 v6, 0x4

    if-eq v4, v6, :cond_7

    const/4 v6, 0x5

    if-eq v4, v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "#"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 7
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 8
    :cond_7
    invoke-static {v5}, Lg5/c;->u(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v4, v0

    if-lez v4, :cond_b

    move-object v8, v0

    goto :goto_3

    .line 10
    :cond_8
    invoke-static {v5, v1}, Lg5/c;->v(Ljava/lang/String;Lg5/c$b;)J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_3

    .line 11
    :cond_9
    invoke-static {v5, v1}, Lg5/c;->v(Ljava/lang/String;Lg5/c$b;)J

    move-result-wide v4

    move-wide v14, v4

    goto :goto_3

    .line 12
    :cond_a
    invoke-static {v5, v1}, Lg5/c;->v(Ljava/lang/String;Lg5/c$b;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    :cond_b
    :goto_3
    move-object/from16 v0, p2

    goto :goto_4

    :cond_c
    move-object/from16 v0, p2

    .line 13
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v9, v5

    :cond_d
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_e
    if-eqz v11, :cond_10

    .line 14
    iget-wide v0, v11, Lg5/d;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    cmp-long v4, v12, v2

    if-eqz v4, :cond_f

    add-long/2addr v12, v0

    :cond_f
    cmp-long v4, v14, v2

    if-eqz v4, :cond_11

    add-long/2addr v14, v0

    goto :goto_5

    :cond_10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :cond_11
    :goto_5
    cmp-long v0, v14, v2

    if-nez v0, :cond_13

    cmp-long v0, v16, v2

    if-eqz v0, :cond_12

    add-long v16, v12, v16

    move-wide/from16 v5, v16

    goto :goto_6

    :cond_12
    if-eqz v11, :cond_13

    .line 15
    iget-wide v0, v11, Lg5/d;->e:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    move-wide v5, v0

    goto :goto_6

    :cond_13
    move-wide v5, v14

    .line 16
    :goto_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v14, Lg5/d;

    const/4 v2, 0x0

    move-object v0, v14

    move-wide v3, v12

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lg5/d;-><init>(Ljava/lang/String;Ljava/lang/String;JJLg5/f;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg5/d;)V

    return-object v14

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

.method public static t(Lorg/xmlpull/v1/XmlPullParser;Lg5/f;)Lg5/f;
    .locals 14

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_39

    .line 2
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "multiRowAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "rubyPosition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "textEmphasis"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "textCombine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "shear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v5, "ruby"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_9
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_a
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    move v4, v6

    goto :goto_2

    :sswitch_b
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    move v4, v7

    goto :goto_2

    :sswitch_c
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    move v4, v10

    goto :goto_2

    :sswitch_d
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    move v4, v9

    goto :goto_2

    :sswitch_e
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    :cond_e
    move v4, v1

    goto :goto_2

    :goto_1
    move v4, v8

    :goto_2
    const-string v5, "after"

    const-string v11, "before"

    const-string v12, "none"

    const-string v13, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_14

    .line 4
    :pswitch_0
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    invoke-static {v3}, Lg5/c;->n(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 5
    iput-object v3, p1, Lg5/f;->p:Landroid/text/Layout$Alignment;

    goto/16 :goto_14

    .line 6
    :pswitch_1
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-static {v3, v1}, Lm5/d;->a(Ljava/lang/String;Z)I

    move-result v4

    .line 8
    iput v4, p1, Lg5/f;->d:I

    .line 9
    iput-boolean v9, p1, Lg5/f;->e:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_14

    :catch_0
    const-string v4, "Failed parsing background value: "

    .line 10
    invoke-static {v4, v3, v13}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 11
    :pswitch_2
    invoke-static {v3}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_14

    .line 12
    :cond_f
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 13
    iput v10, p1, Lg5/f;->n:I

    goto/16 :goto_14

    .line 14
    :cond_10
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 15
    iput v9, p1, Lg5/f;->n:I

    goto/16 :goto_14

    .line 16
    :pswitch_3
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    sget-object v4, Lg5/b;->d:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    if-nez v3, :cond_11

    goto/16 :goto_10

    .line 17
    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto/16 :goto_10

    .line 19
    :cond_12
    sget-object v4, Lg5/b;->d:Ljava/util/regex/Pattern;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v3

    .line 20
    array-length v4, v3

    if-eqz v4, :cond_14

    if-eq v4, v9, :cond_13

    .line 21
    array-length v4, v3

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lu6/a0;->r(I[Ljava/lang/Object;)Lu6/a0;

    move-result-object v3

    goto :goto_3

    .line 22
    :cond_13
    aget-object v3, v3, v1

    .line 23
    new-instance v4, Lu6/w0;

    invoke-direct {v4, v3}, Lu6/w0;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_3

    .line 24
    :cond_14
    sget-object v3, Lu6/r0;->q:Lu6/r0;

    .line 25
    :goto_3
    sget-object v4, Lg5/b;->h:Lu6/a0;

    invoke-static {v4, v3}, Lu6/v0;->d(Ljava/util/Set;Ljava/util/Set;)Lu6/v0$e;

    move-result-object v4

    const-string v6, "outside"

    .line 26
    invoke-static {v4, v6}, Lg0/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v13, -0x5305c081

    if-eq v10, v13, :cond_17

    const v11, -0x41ecca5b

    if-eq v10, v11, :cond_16

    const v6, 0x58705dc

    if-eq v10, v6, :cond_15

    goto :goto_4

    :cond_15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v1

    goto :goto_5

    :cond_16
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v9

    goto :goto_5

    :cond_17
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x2

    goto :goto_5

    :cond_18
    :goto_4
    move v4, v8

    :goto_5
    if-eqz v4, :cond_1a

    if-eq v4, v9, :cond_19

    move v4, v9

    goto :goto_6

    :cond_19
    const/4 v4, -0x2

    goto :goto_6

    :cond_1a
    const/4 v4, 0x2

    .line 27
    :goto_6
    sget-object v5, Lg5/b;->e:Lu6/a0;

    invoke-static {v5, v3}, Lu6/v0;->d(Ljava/util/Set;Ljava/util/Set;)Lu6/v0$e;

    move-result-object v5

    .line 28
    check-cast v5, Lu6/v0$a;

    invoke-virtual {v5}, Lu6/v0$a;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 29
    new-instance v3, Lu6/u0;

    invoke-direct {v3, v5}, Lu6/u0;-><init>(Lu6/v0$a;)V

    .line 30
    invoke-virtual {v3}, Lu6/b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x2dddaf

    if-eq v5, v6, :cond_1c

    const v6, 0x33af38

    if-eq v5, v6, :cond_1b

    goto :goto_7

    :cond_1b
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v9, v1

    goto :goto_8

    :cond_1c
    const-string v5, "auto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_8

    :cond_1d
    :goto_7
    move v9, v8

    :goto_8
    if-eqz v9, :cond_1e

    goto :goto_9

    :cond_1e
    move v8, v1

    .line 31
    :goto_9
    new-instance v3, Lg5/b;

    invoke-direct {v3, v8, v1, v4}, Lg5/b;-><init>(III)V

    goto :goto_a

    .line 32
    :cond_1f
    sget-object v5, Lg5/b;->g:Lu6/a0;

    invoke-static {v5, v3}, Lu6/v0;->d(Ljava/util/Set;Ljava/util/Set;)Lu6/v0$e;

    move-result-object v5

    .line 33
    sget-object v6, Lg5/b;->f:Lu6/a0;

    invoke-static {v6, v3}, Lu6/v0;->d(Ljava/util/Set;Ljava/util/Set;)Lu6/v0$e;

    move-result-object v3

    .line 34
    move-object v6, v5

    check-cast v6, Lu6/v0$a;

    invoke-virtual {v6}, Lu6/v0$a;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    move-object v6, v3

    check-cast v6, Lu6/v0$a;

    invoke-virtual {v6}, Lu6/v0$a;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 35
    new-instance v3, Lg5/b;

    invoke-direct {v3, v8, v1, v4}, Lg5/b;-><init>(III)V

    :goto_a
    move-object v4, v3

    goto/16 :goto_10

    :cond_20
    const-string v6, "filled"

    .line 36
    invoke-static {v5, v6}, Lg0/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x4bf7529e

    if-eq v10, v11, :cond_22

    const v6, 0x34264a

    if-eq v10, v6, :cond_21

    goto :goto_b

    :cond_21
    const-string v6, "open"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    move v5, v1

    goto :goto_c

    :cond_22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    move v5, v9

    goto :goto_c

    :cond_23
    :goto_b
    move v5, v8

    :goto_c
    if-eqz v5, :cond_24

    move v5, v9

    goto :goto_d

    :cond_24
    const/4 v5, 0x2

    :goto_d
    const-string v6, "circle"

    .line 37
    invoke-static {v3, v6}, Lg0/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x51134330

    if-eq v10, v11, :cond_27

    const v6, -0x35fdaa48    # -2135406.0f

    if-eq v10, v6, :cond_26

    const v6, 0x18549

    if-eq v10, v6, :cond_25

    goto :goto_e

    :cond_25
    const-string v6, "dot"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v8, v1

    goto :goto_e

    :cond_26
    const-string v6, "sesame"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    move v8, v9

    goto :goto_e

    :cond_27
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v8, 0x2

    :cond_28
    :goto_e
    if-eqz v8, :cond_29

    if-eq v8, v9, :cond_2a

    move v7, v9

    goto :goto_f

    :cond_29
    const/4 v7, 0x2

    .line 38
    :cond_2a
    :goto_f
    new-instance v3, Lg5/b;

    invoke-direct {v3, v7, v5, v4}, Lg5/b;-><init>(III)V

    goto :goto_a

    .line 39
    :goto_10
    iput-object v4, p1, Lg5/f;->r:Lg5/b;

    goto/16 :goto_14

    .line 40
    :pswitch_4
    :try_start_1
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 41
    invoke-static {v3, p1}, Lg5/c;->p(Ljava/lang/String;Lg5/f;)V
    :try_end_1
    .catch Lz4/i; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_14

    :catch_1
    const-string v4, "Failed parsing fontSize value: "

    .line 42
    invoke-static {v4, v3, v13}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 43
    :pswitch_5
    invoke-static {v3}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_14

    .line 44
    :cond_2b
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 45
    iput v1, p1, Lg5/f;->q:I

    goto/16 :goto_14

    .line 46
    :cond_2c
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 47
    iput v9, p1, Lg5/f;->q:I

    goto/16 :goto_14

    .line 48
    :pswitch_6
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 49
    sget-object v4, Lg5/c;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v5, :cond_2d

    const-string v4, "Invalid value for shear: "

    .line 51
    invoke-static {v4, v3, v13}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 52
    :cond_2d
    :try_start_2
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, -0x3d380000    # -100.0f

    .line 55
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    .line 56
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    move-exception v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse shear: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v4}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :goto_11
    iput v6, p1, Lg5/f;->s:F

    goto/16 :goto_14

    .line 59
    :pswitch_7
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 60
    :try_start_3
    invoke-static {v3, v1}, Lm5/d;->a(Ljava/lang/String;Z)I

    move-result v4

    .line 61
    iput v4, p1, Lg5/f;->b:I

    .line 62
    iput-boolean v9, p1, Lg5/f;->c:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_14

    :catch_3
    const-string v4, "Failed parsing color value: "

    .line 63
    invoke-static {v4, v3, v13}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 64
    :pswitch_8
    invoke-static {v3}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_12

    :sswitch_f
    const-string v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_12

    :cond_2e
    const/4 v4, 0x5

    goto :goto_12

    :sswitch_10
    const-string v5, "base"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_12

    :cond_2f
    const/4 v4, 0x4

    goto :goto_12

    :sswitch_11
    const-string v5, "textContainer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_12

    :cond_30
    const/4 v4, 0x3

    goto :goto_12

    :sswitch_12
    const-string v5, "delimiter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_12

    :cond_31
    const/4 v4, 0x2

    goto :goto_12

    :sswitch_13
    const-string v5, "container"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_12

    :cond_32
    const/4 v4, 0x1

    goto :goto_12

    :sswitch_14
    const-string v5, "baseContainer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_12

    :cond_33
    const/4 v4, 0x0

    :goto_12
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_14

    .line 65
    :pswitch_9
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 66
    iput v7, p1, Lg5/f;->m:I

    goto/16 :goto_14

    .line 67
    :pswitch_a
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 68
    iput v6, p1, Lg5/f;->m:I

    goto/16 :goto_14

    .line 69
    :pswitch_b
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 70
    iput v9, p1, Lg5/f;->m:I

    goto/16 :goto_14

    .line 71
    :pswitch_c
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    const/4 v3, 0x2

    .line 72
    iput v3, p1, Lg5/f;->m:I

    goto/16 :goto_14

    .line 73
    :pswitch_d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 74
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 75
    iput-object v3, p1, Lg5/f;->l:Ljava/lang/String;

    goto/16 :goto_14

    .line 76
    :pswitch_e
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    const-string v4, "bold"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 77
    iput v3, p1, Lg5/f;->h:I

    goto/16 :goto_14

    .line 78
    :pswitch_f
    invoke-static {v3}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    goto :goto_13

    :sswitch_15
    const-string v5, "linethrough"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_13

    :cond_34
    const/4 v4, 0x3

    goto :goto_13

    :sswitch_16
    const-string v5, "nolinethrough"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_13

    :cond_35
    const/4 v4, 0x2

    goto :goto_13

    :sswitch_17
    const-string v5, "underline"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_13

    :cond_36
    const/4 v4, 0x1

    goto :goto_13

    :sswitch_18
    const-string v5, "nounderline"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_13

    :cond_37
    const/4 v4, 0x0

    :goto_13
    packed-switch v4, :pswitch_data_2

    goto :goto_14

    .line 79
    :pswitch_10
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 80
    iput v9, p1, Lg5/f;->f:I

    goto :goto_14

    .line 81
    :pswitch_11
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 82
    iput v1, p1, Lg5/f;->f:I

    goto :goto_14

    .line 83
    :pswitch_12
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 84
    iput v9, p1, Lg5/f;->g:I

    goto :goto_14

    .line 85
    :pswitch_13
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 86
    iput v1, p1, Lg5/f;->g:I

    goto :goto_14

    .line 87
    :pswitch_14
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    invoke-static {v3}, Lg5/c;->n(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 88
    iput-object v3, p1, Lg5/f;->o:Landroid/text/Layout$Alignment;

    goto :goto_14

    .line 89
    :pswitch_15
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    .line 90
    iput-object v3, p1, Lg5/f;->a:Ljava/lang/String;

    goto :goto_14

    .line 91
    :pswitch_16
    invoke-static {p1}, Lg5/c;->l(Lg5/f;)Lg5/f;

    move-result-object p1

    const-string v4, "italic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 92
    iput v3, p1, Lg5/f;->i:I

    :cond_38
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_39
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_14
        -0x187eb37f -> :sswitch_13
        -0xeee99f9 -> :sswitch_12
        -0x81c562c -> :sswitch_11
        0x2e06d1 -> :sswitch_10
        0x36452d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_18
        -0x3d363934 -> :sswitch_17
        0x36723ff0 -> :sswitch_16
        0x641ec051 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static u(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v0, Lm5/g0;->a:I

    const/4 v0, -0x1

    const-string v1, "\\s+"

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static v(Ljava/lang/String;Lg5/c$b;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    .line 1
    sget-object v0, Lg5/c;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long/2addr v7, v9

    long-to-double v7, v7

    .line 6
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    add-double/2addr v7, v9

    const/4 p0, 0x5

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lg5/c$b;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v4

    :goto_1
    add-double/2addr v7, v9

    const/4 p0, 0x6

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 17
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lg5/c$b;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lg5/c$b;->a:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_2
    add-double/2addr v7, v4

    mul-double/2addr v7, v2

    double-to-long p0, v7

    return-wide p0

    .line 18
    :cond_3
    sget-object v0, Lg5/c;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 23
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_2
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_4
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    goto :goto_4

    .line 26
    :pswitch_1
    iget p0, p1, Lg5/c$b;->c:I

    int-to-double p0, p0

    goto :goto_4

    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_3

    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_3
    mul-double/2addr v4, p0

    goto :goto_5

    .line 27
    :pswitch_4
    iget p0, p1, Lg5/c$b;->a:F

    float-to-double p0, p0

    :goto_4
    div-double/2addr v4, p0

    :goto_5
    mul-double/2addr v4, v2

    double-to-long p0, v4

    return-wide p0

    .line 28
    :cond_9
    new-instance p1, Lz4/i;

    const-string v0, "Malformed time expression: "

    .line 29
    invoke-static {v0, p0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-direct {p1, p0}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Lorg/xmlpull/v1/XmlPullParser;)Lg5/c$c;
    .locals 5

    const-string v0, "extent"

    .line 1
    invoke-static {p0, v0}, Lm5/h0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lg5/c;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_1

    const-string v1, "Ignoring non-pixel tts extent: "

    .line 4
    invoke-static {v1, p0, v3}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 11
    new-instance v4, Lg5/c$c;

    invoke-direct {v4, v2, v1}, Lg5/c$c;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    const-string v1, "Ignoring malformed tts extent: "

    .line 12
    invoke-static {v1, p0, v3}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final k([BIZ)Lz4/g;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lg5/c;->m:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    .line 5
    new-instance v2, Lg5/e;

    const-string v13, ""

    const v14, -0x800001

    const v15, -0x800001

    const/high16 v16, -0x80000000

    const/high16 v17, -0x80000000

    const v18, -0x800001

    const v19, -0x800001

    const/high16 v20, -0x80000000

    const v21, -0x800001

    const/high16 v22, -0x80000000

    move-object v12, v2

    .line 6
    invoke-direct/range {v12 .. v22}, Lg5/e;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 7
    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v3, 0x0

    .line 9
    invoke-interface {v8, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 10
    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 12
    sget-object v4, Lg5/c;->u:Lg5/c$b;

    .line 13
    sget-object v5, Lg5/c;->v:Lg5/c$a;

    move v13, v2

    move-object v14, v3

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 14
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/d;

    const/4 v6, 0x2

    if-nez v13, :cond_8

    .line 15
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "tt"

    if-ne v0, v6, :cond_4

    .line 16
    :try_start_1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {v8}, Lg5/c;->q(Lorg/xmlpull/v1/XmlPullParser;)Lg5/c$b;

    move-result-object v4

    .line 18
    sget-object v0, Lg5/c;->v:Lg5/c$a;

    invoke-static {v8, v0}, Lg5/c;->o(Lorg/xmlpull/v1/XmlPullParser;Lg5/c$a;)Lg5/c$a;

    move-result-object v5

    .line 19
    invoke-static {v8}, Lg5/c;->w(Lorg/xmlpull/v1/XmlPullParser;)Lg5/c$c;

    move-result-object v3

    :cond_0
    move-object/from16 v16, v3

    move-object v7, v4

    move-object/from16 v17, v5

    .line 20
    invoke-static {v15}, Lg5/c;->m(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "TtmlDecoder"

    if-nez v0, :cond_1

    .line 21
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unsupported tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lm5/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move-object v15, v7

    goto :goto_1

    :cond_1
    const-string v0, "head"

    .line 22
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object v6, v10

    move-object v15, v7

    move-object v7, v11

    .line 23
    invoke-static/range {v2 .. v7}, Lg5/c;->r(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lg5/c$a;Lg5/c$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    move-object v15, v7

    .line 24
    :try_start_3
    invoke-static {v8, v2, v10, v15}, Lg5/c;->s(Lorg/xmlpull/v1/XmlPullParser;Lg5/d;Ljava/util/Map;Lg5/c$b;)Lg5/d;

    move-result-object v0

    .line 25
    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v2, v0}, Lg5/d;->a(Lg5/d;)V
    :try_end_3
    .catch Lz4/i; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "Suppressing parser error"

    .line 27
    invoke-static {v3, v2, v0}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v13, v13, 0x1

    :cond_3
    :goto_1
    move-object v4, v15

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-ne v0, v6, :cond_6

    .line 28
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/d;->b(Ljava/lang/String;)Lg5/d;

    move-result-object v0

    .line 30
    iget-object v6, v2, Lg5/d;->m:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lg5/d;->m:Ljava/util/ArrayList;

    .line 32
    :cond_5
    iget-object v2, v2, Lg5/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 33
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    new-instance v14, Lg5/g;

    .line 35
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/d;

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-direct {v14, v0, v9, v10, v11}, Lg5/g;-><init>(Lg5/d;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 38
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_8
    if-ne v0, v6, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    add-int/lit8 v13, v13, -0x1

    .line 39
    :cond_a
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 40
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto/16 :goto_0

    :cond_b
    if-eqz v14, :cond_c

    return-object v14

    .line 41
    :cond_c
    new-instance v0, Lz4/i;

    const-string v2, "No TTML subtitles found"

    invoke-direct {v0, v2}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 42
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 43
    new-instance v2, Lz4/i;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v0}, Lz4/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
