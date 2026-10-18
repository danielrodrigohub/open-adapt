.class public abstract Lx9/d;
.super Lx9/b;
.source "ConnectionConditional.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ErrorCondition:",
        "Lv9/m;",
        ">",
        "Lx9/b<",
        "TErrorCondition;>;"
    }
.end annotation


# instance fields
.field public final a:Lda/d;

.field public final b:Lda/d;

.field public final c:Lea/m;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lda/d;Lda/d;Lea/m;)V
    .locals 1

    const-string v0, "leftConnectionState"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightConnectionState"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/d;->a:Lda/d;

    .line 3
    iput-object p2, p0, Lx9/d;->b:Lda/d;

    .line 4
    iput-object p3, p0, Lx9/d;->c:Lea/m;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lx9/b;->a()Lw9/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lw9/a;->i:Lw9/u1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lx9/d;->c:Lea/m;

    .line 5
    iget-object v3, v0, Lea/m;->k:Lea/b;

    .line 6
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 8
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    const-string v4, ","

    .line 9
    invoke-static {v3, v4, v0}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    .line 11
    :cond_1
    iget-object v0, p0, Lx9/d;->c:Lea/m;

    .line 12
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 13
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lx9/d;->c:Lea/m;

    .line 15
    iget-object v0, v0, Lea/m;->k:Lea/b;

    .line 16
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    .line 17
    :goto_0
    iput-object v0, p0, Lx9/d;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lx9/b;->a()Lw9/a;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lw9/a;->i:Lw9/u1;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    .line 21
    iget-object v0, p0, Lx9/d;->a:Lda/d;

    invoke-virtual {v0}, Lda/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lx9/d;->a:Lda/d;

    invoke-virtual {v0}, Lda/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    .line 22
    :goto_3
    iget-object v1, p0, Lx9/d;->b:Lda/d;

    invoke-virtual {v1}, Lda/d;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lx9/d;->b:Lda/d;

    invoke-virtual {v1}, Lda/d;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v2

    :goto_6
    if-nez v0, :cond_f

    if-eqz v1, :cond_e

    goto :goto_8

    .line 23
    :cond_9
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    .line 24
    :cond_a
    iget-object v0, p0, Lx9/d;->b:Lda/d;

    invoke-virtual {v0}, Lda/d;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lx9/d;->b:Lda/d;

    invoke-virtual {v0}, Lda/d;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_8

    .line 25
    :cond_c
    iget-object v0, p0, Lx9/d;->a:Lda/d;

    invoke-virtual {v0}, Lda/d;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lx9/d;->a:Lda/d;

    invoke-virtual {v0}, Lda/d;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lx9/d;->g()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    move v2, v3

    :cond_f
    :goto_8
    return v2
.end method

.method public abstract g()Z
.end method
