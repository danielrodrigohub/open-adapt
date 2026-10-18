.class public final Li2/z;
.super Ljava/lang/Object;
.source "PointFParser.java"

# interfaces
.implements Li2/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li2/l0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Li2/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/z;

    invoke-direct {v0}, Li2/z;-><init>()V

    sput-object v0, Li2/z;->a:Li2/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj2/c;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lj2/c;->o0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1, p2}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p1, p2}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lj2/c;->k0()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Lj2/c;->k0()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lj2/c;->i0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lj2/c;->s0()V

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot convert json to point. Next token is "

    .line 8
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-static {v0}, Lcom/nike/adapt/adk/model/a;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
