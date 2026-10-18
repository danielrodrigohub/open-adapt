.class public final Ln8/a;
.super Lrd/o;
.source "AdaptAuthenticationService.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lha/u;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/AdaptAuthenticationService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V
    .locals 0

    iput-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lha/u;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Lha/u;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    .line 4
    iget v2, v2, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    const-string v3, "Pairing_State_Result : "

    const-string v4, " : "

    .line 5
    invoke-static {v3, v1, v4}, La4/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static {v2}, Landroidx/recyclerview/widget/s;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 7
    instance-of v1, p1, Lha/n;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/j;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    check-cast p1, Lha/n;

    .line 8
    iget-object p1, p1, Lha/n;->h:Ljava/lang/String;

    .line 9
    invoke-direct {v1, v2, p1}, Ln8/j;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 10
    :cond_0
    instance-of v1, p1, Lha/o;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/j;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    check-cast p1, Lha/o;

    .line 11
    iget-object p1, p1, Lha/o;->h:Ljava/lang/String;

    .line 12
    invoke-direct {v1, v2, p1}, Ln8/j;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 13
    :cond_1
    instance-of v1, p1, Lha/w;

    if-eqz v1, :cond_2

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/q;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/q;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    instance-of v1, p1, Lha/x;

    if-eqz v1, :cond_3

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/q;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/q;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 15
    :cond_3
    instance-of v1, p1, Lha/y;

    if-eqz v1, :cond_4

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/q;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/q;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 16
    :cond_4
    instance-of v1, p1, Lha/j;

    if-eqz v1, :cond_5

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/i;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/i;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 17
    :cond_5
    instance-of v1, p1, Lha/k;

    if-eqz v1, :cond_6

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/i;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/i;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 18
    :cond_6
    instance-of v1, p1, Lha/a0;

    if-eqz v1, :cond_7

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/p;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/p;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 19
    :cond_7
    instance-of v1, p1, Lha/b0;

    if-eqz v1, :cond_8

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/p;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/p;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto/16 :goto_2

    .line 20
    :cond_8
    instance-of v1, p1, Lha/h;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v1, :cond_a

    .line 21
    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    .line 22
    iget v0, p1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    if-ne v0, v4, :cond_9

    goto :goto_0

    :cond_9
    move v2, v3

    .line 23
    :goto_0
    iput v2, p1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    .line 24
    new-instance v0, Ln8/r;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/r;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    .line 25
    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    invoke-static {p1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->b(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    goto/16 :goto_2

    .line 26
    :cond_a
    instance-of v1, p1, Lha/i;

    if-eqz v1, :cond_c

    .line 27
    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    .line 28
    iget v0, p1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    if-ne v0, v3, :cond_b

    goto :goto_1

    :cond_b
    move v2, v4

    .line 29
    :goto_1
    iput v2, p1, Lcom/nike/adapt/service/AdaptAuthenticationService;->i:I

    .line 30
    new-instance v0, Ln8/r;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/r;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    .line 31
    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    invoke-static {p1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->b(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    goto/16 :goto_2

    .line 32
    :cond_c
    instance-of v1, p1, Lha/p;

    if-eqz v1, :cond_d

    iget-object v0, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/e;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lha/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ln8/e;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto :goto_2

    .line 33
    :cond_d
    instance-of v1, p1, Lha/q;

    if-eqz v1, :cond_e

    iget-object v0, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/e;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lha/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ln8/e;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto :goto_2

    .line 34
    :cond_e
    instance-of v1, p1, Lha/z;

    if-eqz v1, :cond_f

    const-string p1, "Pairing Stopped"

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_f
    instance-of v0, p1, Lha/c;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/h;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lha/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ln8/h;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto :goto_2

    .line 36
    :cond_10
    instance-of v0, p1, Lha/d;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/h;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lha/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ln8/h;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto :goto_2

    .line 37
    :cond_11
    instance-of v0, p1, Lha/e;

    if-eqz v0, :cond_12

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/g;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/g;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    goto :goto_2

    .line 38
    :cond_12
    instance-of p1, p1, Lha/f;

    if-eqz p1, :cond_13

    iget-object p1, p0, Ln8/a;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v0, Ln8/g;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Ln8/g;-><init>(Lcom/nike/adapt/adk/Shoe;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    .line 39
    :cond_13
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
