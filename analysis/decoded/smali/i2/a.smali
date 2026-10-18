.class public final Li2/a;
.super Ljava/lang/Object;
.source "AnimatablePathValueParser.java"


# static fields
.field public static final a:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string v1, "x"

    const-string v2, "y"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/a;->a:Lj2/c$a;

    return-void
.end method

.method public static a(Lj2/c;Ly1/i;)Le2/e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lj2/c;->o0()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lj2/c;->x()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lj2/c;->i0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lj2/c;->o0()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    .line 6
    :goto_1
    invoke-static {}, Lk2/g;->c()F

    move-result v5

    sget-object v6, Li2/y;->a:Li2/y;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 7
    invoke-static/range {v3 .. v8}, Li2/t;->b(Lj2/c;Ly1/i;FLi2/l0;ZZ)Ll2/a;

    move-result-object v1

    .line 8
    new-instance v3, Lb2/i;

    invoke-direct {v3, p1, v1}, Lb2/i;-><init>(Ly1/i;Ll2/a;)V

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lj2/c;->f0()V

    .line 11
    invoke-static {v0}, Li2/u;->b(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :cond_2
    new-instance p1, Ll2/a;

    invoke-static {}, Lk2/g;->c()F

    move-result v1

    invoke-static {p0, v1}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Ll2/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_2
    new-instance p0, Le2/e;

    invoke-direct {p0, v0}, Le2/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static b(Lj2/c;Ly1/i;)Le2/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj2/c;",
            "Ly1/i;",
            ")",
            "Le2/l<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj2/c;->Y()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v0

    move v4, v2

    move-object v2, v3

    .line 2
    :goto_0
    invoke-virtual {p0}, Lj2/c;->o0()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    .line 3
    sget-object v5, Li2/a;->a:Lj2/c$a;

    invoke-virtual {p0, v5}, Lj2/c;->q0(Lj2/c$a;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x6

    if-eq v5, v1, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    .line 4
    invoke-virtual {p0}, Lj2/c;->r0()V

    .line 5
    invoke-virtual {p0}, Lj2/c;->s0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lj2/c;->o0()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 7
    invoke-virtual {p0}, Lj2/c;->s0()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0, p1, v1}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lj2/c;->o0()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 10
    invoke-virtual {p0}, Lj2/c;->s0()V

    :goto_1
    move v4, v1

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p0, p1, v1}, Li2/d;->c(Lj2/c;Ly1/i;Z)Le2/b;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {p0, p1}, Li2/a;->a(Lj2/c;Ly1/i;)Le2/e;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lj2/c;->g0()V

    if-eqz v4, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    .line 14
    invoke-virtual {p1, p0}, Ly1/i;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    .line 15
    :cond_7
    new-instance p0, Le2/i;

    invoke-direct {p0, v2, v3}, Le2/i;-><init>(Le2/b;Le2/b;)V

    return-object p0
.end method
