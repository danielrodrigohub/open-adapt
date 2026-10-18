.class public final Lga/a$a;
.super Ljava/lang/Object;
.source "AdaptKitGestureConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmc/n;)Lga/a;
    .locals 12

    .line 1
    sget-object v0, Lga/a$f;->j:Lga/a$f;

    sget-object v1, Lga/a$f;->k:Lga/a$f;

    sget-object v2, Lga/a$f;->l:Lga/a$f;

    sget-object v3, Lga/a$f;->m:Lga/a$f;

    sget-object v4, Lga/a$e;->j:Lga/a$e;

    sget-object v5, Lga/a$e;->l:Lga/a$e;

    sget-object v6, Lga/a$e;->k:Lga/a$e;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object v10, p1, Lmc/n;->i:Lmc/l;

    if-eqz v10, :cond_2

    .line 3
    iget v10, v10, Lmc/l;->h:I

    if-eq v10, v9, :cond_1

    if-eq v10, v8, :cond_0

    move-object v10, v4

    goto :goto_0

    :cond_0
    move-object v10, v5

    goto :goto_0

    :cond_1
    move-object v10, v6

    goto :goto_0

    :cond_2
    move-object v10, v7

    :goto_0
    const/4 v11, 0x3

    if-eqz p1, :cond_6

    .line 4
    iget-object p1, p1, Lmc/n;->h:Lmc/m;

    if-eqz p1, :cond_6

    .line 5
    iget p1, p1, Lmc/m;->h:I

    if-eq p1, v9, :cond_5

    if-eq p1, v8, :cond_4

    if-eq p1, v11, :cond_3

    move-object v7, v0

    goto :goto_1

    :cond_3
    move-object v7, v3

    goto :goto_1

    :cond_4
    move-object v7, v2

    goto :goto_1

    :cond_5
    move-object v7, v1

    :cond_6
    :goto_1
    if-eqz v10, :cond_f

    if-eqz v7, :cond_f

    if-ne v10, v6, :cond_7

    if-ne v7, v1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v10, v5, :cond_8

    if-ne v7, v2, :cond_8

    .line 6
    sget-object p1, Lga/a$d;->k:Lga/a$d;

    goto :goto_5

    :cond_8
    if-ne v10, v5, :cond_9

    if-ne v7, v3, :cond_9

    .line 7
    sget-object p1, Lga/a$c;->k:Lga/a$c;

    goto :goto_5

    .line 8
    :cond_9
    new-instance p1, Lga/a$b;

    .line 9
    iget v10, v10, Lga/a$e;->h:I

    if-eq v10, v9, :cond_b

    if-eq v10, v8, :cond_a

    goto :goto_2

    :cond_a
    move-object v4, v5

    goto :goto_2

    :cond_b
    move-object v4, v6

    .line 10
    :goto_2
    iget v5, v7, Lga/a$f;->h:I

    if-eq v5, v9, :cond_e

    if-eq v5, v8, :cond_d

    if-eq v5, v11, :cond_c

    goto :goto_3

    :cond_c
    move-object v0, v3

    goto :goto_3

    :cond_d
    move-object v0, v2

    goto :goto_3

    :cond_e
    move-object v0, v1

    .line 11
    :goto_3
    invoke-direct {p1, v4, v0}, Lga/a$b;-><init>(Lga/a$e;Lga/a$f;)V

    goto :goto_5

    .line 12
    :cond_f
    :goto_4
    sget-object p1, Lga/a$g;->k:Lga/a$g;

    :goto_5
    return-object p1
.end method
